#include <iostream>
using namespace std;
void fibonacci(int fibb[], int n)
{
    for (int i = 2; i <= n; i++)
    {
        fibb[i] = fibb[i - 1] + fibb[i - 2];
    }
}
int main()
{
    int n;
    cout << "Enter n to find the nth number in the Fibonacci Sequence : ";
    cin >> n;
    int fibb[n + 1];
    fibb[0] = 0;
    fibb[1] = 1;
    fibonacci(fibb, n);
    cout << "The nth integer in the Fibonacci Sequence = ";
    cout << fibb[n] << endl;
}