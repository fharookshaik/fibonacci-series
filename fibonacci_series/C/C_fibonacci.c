#include <stdio.h>

int main(void) {
    long n;

    if (scanf("%ld", &n) != 1 || n < 0 || n > 94) {
        return 2;
    }

    unsigned long long a = 0;
    unsigned long long b = 1;

    for (long i = 0; i < n; ++i) {
        if (i > 0) {
            putchar(' ');
        }

        printf("%llu", a);

        unsigned long long next = a + b;
        a = b;
        b = next;
    }

    putchar('\n');
    return 0;
}
