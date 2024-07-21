#include <stdio.h>
#include <string.h>
#include "crypto_hash.h" // Include the header where the crypto_hash function is declared

#define TEST_INPUT "Hello, ASCON!"
#define HASH_OUTPUT_SIZE CRYPTO_BYTES // assuming CRYPTO_BYTES is defined as 32 in the header

int main() {
    // Input message to hash
    const unsigned char input[] = TEST_INPUT;
    unsigned long long input_len = strlen((const char*)input);
    
    // Buffer to store the hash output
    unsigned char output[HASH_OUTPUT_SIZE];
    
    // Call the ASCON hash function
    if (crypto_hash(output, input, input_len) != 0) {
        fprintf(stderr, "Hash function failed\n");
        return 1;
    }
    
    // Print the hash output
    printf("Input: %s\n", input);
    printf("Hash: ");
    for (size_t i = 0; i < HASH_OUTPUT_SIZE; ++i) {
        printf("%02x", output[i]);
    }
    printf("\n");
    
    return 0;
}
