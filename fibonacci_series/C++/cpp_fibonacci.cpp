#include <iostream>

int main() {
    long long n;

    if (!(std::cin >> n) || n < 0 || n > 94) {
        return 2;
    }

    unsigned long long a = 0;
    unsigned long long b = 1;

    for (long long i = 0; i < n; ++i) {
        if (i > 0) {
            std::cout << ' ';
        }

        std::cout << a;

        const auto next = a + b;
        a = b;
        b = next;
    }

    std::cout << '\n';
    return 0;
}
