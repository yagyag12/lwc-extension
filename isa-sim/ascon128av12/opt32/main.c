#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "api.h"
#include "crypto_aead.h"

#define KEY "1234567890123456" // 16 bytes key for ASCON-128a
#define NONCE "123456789012"   // 12 bytes nonce for ASCON-128a
#define ASSOCIATED_DATA "AD"
#define MESSAGE "Hello, World!"

#define KEY_SIZE 16
#define NONCE_SIZE 12
#define AAD_SIZE 2
#define MSG_SIZE 13
#define TAG_SIZE 16

void print_hex(const char* label, const uint8_t* data, size_t len) {
    printf("%s: ", label);
    for (size_t i = 0; i < len; i++) {
        printf("%02x", data[i]);
    }
    printf("\n");
}

int main() {
    uint8_t key[KEY_SIZE];
    uint8_t nonce[NONCE_SIZE];
    uint8_t aad[AAD_SIZE];
    uint8_t message[MSG_SIZE];
    uint8_t ciphertext[MSG_SIZE + TAG_SIZE];
    uint8_t decrypted[MSG_SIZE];
    unsigned long long clen, mlen;

    memcpy(key, KEY, KEY_SIZE);
    memcpy(nonce, NONCE, NONCE_SIZE);
    memcpy(aad, ASSOCIATED_DATA, AAD_SIZE);
    memcpy(message, MESSAGE, MSG_SIZE);

    print_hex("Key", key, KEY_SIZE);
    print_hex("Nonce", nonce, NONCE_SIZE);
    print_hex("AAD", aad, AAD_SIZE);
    print_hex("Message", message, MSG_SIZE);

    if (crypto_aead_encrypt(ciphertext, &clen, message, MSG_SIZE, aad, AAD_SIZE, NULL, nonce, key) == 0) {
        print_hex("Ciphertext", ciphertext, clen);
    } else {
        printf("Encryption failed!\n");
        return 1;
    }

    if (crypto_aead_decrypt(decrypted, &mlen, NULL, ciphertext, clen, aad, AAD_SIZE, nonce, key) == 0) {
        print_hex("Decrypted", decrypted, mlen);
    } else {
        printf("Decryption failed!\n");
        return 1;
    }

    if (memcmp(message, decrypted, MSG_SIZE) == 0) {
        printf("Decryption successful and message matches!\n");
    } else {
        printf("Decryption failed or message does not match!\n");
    }

    return 0;
}
