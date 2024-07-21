#include "crypto_aead.h"

#include <string.h>

#include "api.h"
#include "ascon.h"
#include "permutations.h"
#include "printstate.h"
#include <stdio.h>
#include "timer.h"

#ifdef ASCON_AEAD_RATE

int crypto_aead_encrypt(unsigned char* c, unsigned long long* clen,
                        const unsigned char* m, unsigned long long mlen,
                        const unsigned char* ad, unsigned long long adlen,
                        const unsigned char* nsec, const unsigned char* npub,
                        const unsigned char* k) {
  printf("ENCRYPT_FUNCTION_START\n");
  uint64_t start_time = timer_read();
  (void)nsec;
  /* set ciphertext size */
  *clen = mlen + CRYPTO_ABYTES;
  /* ascon encryption */
  uint8_t* t = (uint8_t*)c + mlen;
  int ret = ascon_aead(t, c, m, mlen, ad, adlen, npub, k, ASCON_ENCRYPT);
  uint64_t end_time = timer_read();
  printf("ENCRYPT_FUNCTION_END\n");
  uint64_t time_taken = end_time - start_time;
  printf("Time taken for encryption: %llu\n", time_taken);
  return ret;
}

int crypto_aead_decrypt(unsigned char* m, unsigned long long* mlen,
                        unsigned char* nsec, const unsigned char* c,
                        unsigned long long clen, const unsigned char* ad,
                        unsigned long long adlen, const unsigned char* npub,
                        const unsigned char* k) {
  printf("DECRYPT_FUNCTION_START\n");
  uint64_t start_time = timer_read();
  (void)nsec;
  if (clen < CRYPTO_ABYTES) return -1;
  /* set plaintext size */
  *mlen = clen - CRYPTO_ABYTES;
  /* ascon decryption */
  uint8_t* t = (uint8_t*)c + *mlen;
  int ret = ascon_aead(t, m, c, *mlen, ad, adlen, npub, k, ASCON_DECRYPT);
  uint64_t end_time = timer_read();
  printf("DECRYPT_FUNCTION_END\n");
  uint64_t time_taken = end_time - start_time;
  printf("Time taken for decryption: %llu\n", time_taken);
  return ret;
}


#endif
