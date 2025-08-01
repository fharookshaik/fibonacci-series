#include <stdio.h>
#include <math.h>

unsigned long long fibonacciBinet(unsigned int n) {
    if (n == 0) return 0;
    if (n == 1) return 1;

    const double phi = (1 + sqrt(5)) / 2;
    const double psi = (1 - sqrt(5)) / 2;

    return (unsigned long long)(round((pow(phi, n) - pow(psi, n)) / sqrt(5)));
}

int main() {
    int input;
    printf("Enter the nth Fibonacci number to find: ");
    if (!(scanf("%d", &input) == 1)) {
        printf("Invalid input. Please enter a number.\n");
        return 1;
    }

    if (input < 0) {
        printf("Please enter a non-negative integer.\n");
        return 1;
    }

    unsigned int n = (unsigned int)input;

    printf("Fibonacci(%u) = %llu\n", n, fibonacciBinet(n));
    return 0;
}