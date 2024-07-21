#include "vstream.h"
#include "system.h"
#include "uart.h"
#include "stdint.h"
#include "stdbool.h"
#include "print_engine.h"

#define CQUEUE_SIZE 1024

typedef struct cqueue
{
    int head;
    int tail;
    int nelem;
    uint8_t mem[CQUEUE_SIZE];
}cqueue_t;

static bool cqueue_empty(volatile cqueue_t *q);
static bool cqueue_full(volatile cqueue_t *q);
static int cqueue_nelem(volatile cqueue_t *q);
static int cqueue_enq(volatile cqueue_t *q, uint8_t elem);
static int cqueue_deq(volatile cqueue_t *q, uint8_t *elem);

/*
*   Static receive circular queue.
*   Receive bytes from uart isr
*/
volatile static cqueue_t rcv_cqueue = {.head = -1, .tail = -1, .nelem = 0};

/*
*   Callback function called on uart irq if not null
*/
static void (*rcv_callback_func)(int) = NULL;

/*
*  Send [len] bytes from [buf] over the virtual stream.
*   Returns the number [len] of bytes sent.
*/
int vstream_send(const void *buf, size_t len) {
    size_t i = 0;
    while (i<len)
        uart_out(DEFAULT_UART,((char *)buf)[i++]);
    return len;
}

static int vstream_output_func(const char *str, size_t len) {
	
	return vstream_send(str, len);
}

/*
*  printf over the virtual stream.
*/
int vstream_printf(const char *fmt, ...) {
    va_list ap;
    int err;

    va_start(ap, fmt);
    err = printf_engine(&vstream_output_func, fmt, ap);
    va_end(ap);

    return err;
}

/*
*  Receive a maximum of [len] bytes from the virtual
*   stream and copy them into [buf].
*   Returns the number on bytes received
*/
int vstream_rcv(void *buf, size_t len){
    size_t i = 0;
    while (!cqueue_empty(&rcv_cqueue) && i < len)
        cqueue_deq(&rcv_cqueue,&((uint8_t *)buf)[i++]);
    return i;
}

/*
*  Register the [callback] function as a callback
*   that is going to be called every time a new byte
*   is available for reception.
*   The callback receives an int param that is the
*   number of bytes ready to be received.
*/
void vstream_register_cb(void(*callback)(int)){
    rcv_callback_func = callback;
}

/*
*  Disable the callback mechanism
*/
void vstream_disable_cb(void){
    rcv_callback_func = NULL;
}

void uart_irq_handler(void){
    cqueue_enq(&rcv_cqueue,uart_in(DEFAULT_UART));
    /* This callback needs to be fast because we execute that in ISR mode (Int disabled) */
    if (rcv_callback_func)
        rcv_callback_func(cqueue_nelem(&rcv_cqueue));
}

static bool cqueue_empty(volatile cqueue_t *q){
    return q->head == -1;
}

static bool cqueue_full(volatile cqueue_t *q){
    return (q->head == q->tail + 1) || (q->head == 0 && q->tail == CQUEUE_SIZE - 1);
}

static int cqueue_nelem(volatile cqueue_t *q){
    return q->nelem;
}

static int cqueue_enq(volatile cqueue_t *q, uint8_t elem){
    
    if (cqueue_full(q))
        return -1;

    if (cqueue_empty(q))
        q->head = 0;

    q->tail = (q->tail + 1) % CQUEUE_SIZE;
    q->mem[q->tail] = elem;
    q->nelem++;

    return 0;
}

static int cqueue_deq(volatile cqueue_t *q, uint8_t *elem){
    
    if (cqueue_empty(q) || !elem)
        return -1;

    *elem = q->mem[q->head];
    
    if (q->head == q->tail) {
        q->head = -1;
        q->tail = -1;
    }
    else
        q->head = (q->head + 1) % CQUEUE_SIZE;
    
    q->nelem--;

    return 0;
}