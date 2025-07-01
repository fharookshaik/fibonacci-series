#include <iostream>
#include <vector>

using namespace std;

int main(){
    int n;
    cout << "Enter the number of terms: ";
    cin >> n;

    vector<unsigned long long> fib(n);
    fib[0] = 0;
    if (n > 1) {
        fib[1] = 1;
    }

    for (int i = 2; i < n; ++i) {
        fib[i] = fib[i - 1] + fib[i - 2];
    }

    cout << "Fibonacci Series: ";
    for (int i = 0; i < n; ++i) {
        cout << fib[i];
        if (i < n - 1) {
            cout << ", ";
        }
    }
    cout << endl;

    return 0;
}