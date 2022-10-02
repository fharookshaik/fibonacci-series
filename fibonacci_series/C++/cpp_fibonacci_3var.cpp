#include<bits/stdc++.h>
#define ll long long
using namespace std;

ll fib(ll n)
{
    ll a = 0, b = 1;
    ll f = 0;
    if (n == 0)
        return a;
    else if (n == 1)
        return b;
    else if (n == 2)
        return b;
    else
    {
        for (ll i = 1; i < n; i++)
        {
            f = a + b;
            a = b;
            b = f;
        }
    }
    return f;
}

int main() {
    ll n;
    cout << "Which fibbonacci number : ";
    cin >> n;

    cout << fib(n) << endl;
    return 0;
}
