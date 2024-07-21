#ifndef ROUND_H_
#define ROUND_H_

#include "ascon.h"
#include "constants.h"
#include "forceinline.h"
#include "printstate.h"
#include "word.h"

/*
// Custom function for rotation (32-bit)
forceinline void rot(uint32_t x, uint32_t c) {
  asm volatile ("rot %0, %1, %2" : "=r" (x) : "r" (x) , "r" (c));
}
*/


forceinline uint32_t rot(unsigned int x, unsigned int n) {
  uint32_t result0;
  asm volatile("rot %[result0], %[value1], %[value2]\n\t":
    [result0] "=r" (result0) : [value1] "r" (x) , [value2] "r" (n)
  );
  return result0;
}


forceinline void ROUND(ascon_state_t* s, uint64_t C) {
    /* round constant */
    s->x[2] ^= C;

    uint32_t even[5];
    uint32_t odd[5];
    for (int i = 0; i < 5; ++i) {
        even[i] = (uint32_t)(s->x[i] >> 32); // Extract even bits (higher 32 bits)
        odd[i] = (uint32_t)(s->x[i] & 0xFFFFFFFF); // Extract odd bits (lower 32 bits)
    }

    uint32_t t0_e, t1_e, t2_e, t3_e, t4_e; // temp variables (even)
    uint32_t t0_o, t1_o, t2_o, t3_o, t4_o; // temp variables (odd)

    // sbox layer
    //sbox(&even[0]);
    //sbox(&odd[0]);

    uint32_t r0;
    asm volatile("sbox %[result0], %[value1], %[value2]\n\t":
      [result0] "=r" (r0) : [value1] "r" (&even[0]) , [value2] "r" (1)
    );

    asm volatile("sbox %[result0], %[value1], %[value2]\n\t":
      [result0] "=r" (r0) : [value1] "r" (&odd[0]) , [value2] "r" (1)
    );

    // linear layer
    t0_e = even[0] ^ rot(odd[0], 4);      t0_o = odd[0] ^ rot(even[0], 5); 
    t1_e = even[1] ^ rot(even[1], 11);    t1_o = odd[1] ^ rot(odd[1], 11); 
    t2_e = even[2] ^ rot(odd[2], 2);      t2_o = odd[2] ^ rot(even[2], 3); 
    t3_e = even[3] ^ rot(odd[3], 3);      t3_o = odd[3] ^ rot(even[3], 4); 
    t4_e = even[4] ^ rot(even[4], 17);    t4_o = odd[4] ^ rot(odd[4], 17);

    even[0] ^= rot(t0_o, 9);              odd[0] ^= rot(t0_e, 10); 
    even[1] ^= rot(t1_o, 19);             odd[1] ^= rot(t1_e, 20);
    even[2] ^= t2_o;                      odd[2] ^= rot(t2_e, 1);
    even[3] ^= rot(t3_e, 5);              odd[3] ^= rot(t3_o, 5);
    even[4] ^= rot(t4_o, 3);              odd[4] ^= rot(t4_e, 4);

    even[2] = ~even[2];                   odd[2] = ~odd[2];
    
    printstate(" round output", s);
}

forceinline void PROUNDS(ascon_state_t* s, int nr) {
    int i = START(nr);
    do {
        ROUND(s, RC(i));
        i += INC;
    } while (i != END);
}

#endif /* ROUND_H_ */
