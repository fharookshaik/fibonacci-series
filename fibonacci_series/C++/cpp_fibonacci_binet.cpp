#include <iostream>
#include <cmath>

using namespace std;

unsigned long long fibonacciBinet(unsigned int n) {
    if (n == 0) return 0;
    if (n == 1) return 1;

    const double phi = (1 + sqrt(5)) / 2;
    const double psi = (1 - sqrt(5)) / 2;

    return static_cast<unsigned long long>(round((pow(phi, n) - pow(psi, n)) / sqrt(5)));
}


int main() {
    int input;
    cout << "Enter the nth Fibonacci number to find: ";
    cin >> input;

    if (input < 0) {
        cout << "Please enter a non-negative integer." << endl;
        return 1;
    }

    unsigned int n = static_cast<unsigned int>(input);
    cout << "Fibonacci(" << n << ") = " << fibonacciBinet(n) << endl;
    return 0;
}