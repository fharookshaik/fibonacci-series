#import <Foundation/Foundation.h>

// Function to calculate Fibonacci series recursively
int fibonacci(int n) {
    if (n <= 1) {
        return n;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n = 10; // Change this value to calculate Fibonacci series up to a different number
        printf("Fibonacci series up to %d terms:\n", n);
        for (int i = 0; i < n; i++) {
            printf("%d ", fibonacci(i));
        }
        printf("\n");
    }
    return 0;
}
