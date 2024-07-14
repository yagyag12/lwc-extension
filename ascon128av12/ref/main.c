#include <stdio.h>
#include <string.h>
#include "api.h"
#include "crypto_aead.h"

#define MESSAGE "Hello, World!"
#define ASSOCIATED_DATA "AD"
#define KEY "1234567890123456" // 16 bytes key for ASCON-128a
#define NONCE "123456789012" // 12 bytes nonce for ASCON-128a

void print_hex(const char *label, const unsigned char *data, unsigned long long len) {
    printf("%s: ", label);
    for (unsigned long long i = 0; i < len; i++) {
        printf("%02x", data[i]);
    }
    printf("\n");
}

int main() {
    unsigned char key[CRYPTO_KEYBYTES] = KEY;
    unsigned char nonce[CRYPTO_NPUBBYTES] = NONCE;
    unsigned char message[] = MESSAGE;
    unsigned char ad[] = ASSOCIATED_DATA;
    unsigned long long message_len = strlen(MESSAGE);
    unsigned long long ad_len = strlen(ASSOCIATED_DATA);

    unsigned char ciphertext[message_len + CRYPTO_ABYTES];
    unsigned long long ciphertext_len;

    unsigned char decrypted_message[message_len];
    unsigned long long decrypted_message_len;

    printf("Original Message: %s\n", message);
    printf("Associated Data: %s\n", ad);
    print_hex("Key", key, CRYPTO_KEYBYTES);
    print_hex("Nonce", nonce, CRYPTO_NPUBBYTES);

    // Encrypt the message
    if (crypto_aead_encrypt(ciphertext, &ciphertext_len, message, message_len, ad, ad_len, NULL, nonce, key) != 0) {
        printf("Encryption failed!\n");
        return -1;
    }

    print_hex("Ciphertext", ciphertext, ciphertext_len);

    // Decrypt the message
    if (crypto_aead_decrypt(decrypted_message, &decrypted_message_len, NULL, ciphertext, ciphertext_len, ad, ad_len, nonce, key) != 0) {
        printf("Decryption failed!\n");
        return -1;
    }

    printf("Decrypted Message: %.*s\n", (int)decrypted_message_len, decrypted_message);

    return 0;
}
