#ifndef CRYPTO_HASH_H
#define CRYPTO_HASH_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stddef.h>
#include <stdint.h>
#include "api.h"
#include "ascon.h"          // Use the ascon_state_t definition from ascon.h
#include "permutations.h"
#include "printstate.h"
#include "word.h"

// Define constants
#define CRYPTO_BYTES 32         // Example output size in bytes
#define ASCON_HASH_RATE 8       // Example rate of the ASCON hash function
//#define ASCON_HASHA_IV 0x80400c0600000000ULL // Example Initial value for ASCON hash

// Function prototype for the crypto_hash function
int crypto_hash(unsigned char* out, const unsigned char* in, unsigned long long len);

#ifdef __cplusplus
}
#endif

#endif // CRYPTO_HASH_H
