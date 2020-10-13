#include <iostream>
using namespace std;

int main() {
    int i, n, t1 = 0, t2 = 1, t3;
   cout<<"Enter the number of terms: ";
   cin>>n;
    cout<<"Fibonacci Series: "<<" ";

    for (i = 1; i <= n; ++i) {
       cout<<t1<< " ";
        t3 = t1 + t2;
        t1 = t2;
        t2 = t3;
    }

    return 0;
}