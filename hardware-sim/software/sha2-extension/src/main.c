#include <stdio.h>
#include <string.h>
#include "system.h"
#include "sha256.h"
#include "timer.h"

#define SHA256_BLOCK_SIZE 32  // SHA256 outputs a 32 byte digest

/* SHA-256 Test Function */
int sha256_test()
{
    BYTE text1[] = "Hello, World!";
    BYTE expected_hash[SHA256_BLOCK_SIZE] = {
        0xdf, 0xfd, 0x60, 0x21, 0xbb, 0x2b, 0xd5, 0xb0, 
        0xaf, 0x67, 0x62, 0x90, 0x80, 0x9e, 0xc3, 0xa5,
        0x31, 0x91, 0xdd, 0x81, 0xc7, 0xf7, 0x0a, 0x4b,
        0x28, 0x68, 0x8a, 0x36, 0x21, 0x82, 0x98, 0x6f
    };

    BYTE generated_hash[SHA256_BLOCK_SIZE];
    SHA256_CTX ctx;
    int pass = 1;

    printf("FUNCTION_START\n");

    uint64_t start_time = timer_read();

    sha256_init(&ctx);
    sha256_update(&ctx, text1, strlen((char *)text1));
    sha256_final(&ctx, generated_hash);

    uint64_t end_time = timer_read();
    uint64_t time_taken = end_time - start_time;
    printf("Time taken: %llu\n", time_taken);

    printf("Expected hash:\n");
    for (int i = 0; i < SHA256_BLOCK_SIZE; i++) {
        printf("%02x", expected_hash[i]);
    }
    printf("\n");

    printf("Generated hash:\n");
    for (int i = 0; i < SHA256_BLOCK_SIZE; i++) {
        printf("%02x", generated_hash[i]);
    }
    printf("\n");

    // Simplified comparison
    for (int i = 0; i < SHA256_BLOCK_SIZE; i++) {
        if (expected_hash[i] != generated_hash[i]) {
            pass = 0;
            break;
        }
    }

    if (pass) {
        printf("Hashes match\n");
    } else {
        printf("Hashes do not match\n");
    }

    printf("FUNCTION_END\n");

    return pass;
}

int main()
{
    system_init();
    printf("SYSTEM INITIALIZED\n");
    printf("SHA-256 tests: %s\n", sha256_test() ? "SUCCEEDED" : "FAILED");
    sim_halt();
}
