#include <stdint.h>
#include <stdio.h>

int main() {
    int a = 2222;
    int b = 333;
    int result = a + b;
    int *c = &result;

    printf("Hello World, %d\n", *c);
    return 0;
}



