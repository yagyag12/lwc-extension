#ifndef VSTREAM_H_
#define VSTREAM_H_

#include "stddef.h"

int vstream_send(const void *buf, size_t len);
int vstream_printf(const char *fmt, ...);
int vstream_rcv(void *buf, size_t len);
void vstream_register_cb(void(*callback)(int));
void vstream_disable_cb(void);

#endif