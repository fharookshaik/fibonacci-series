#include <iostream>
using namespace std;

int main() 
{
    int i, n, t1 = 0, t2 = 1 ;
   cout<<"Enter the number of terms: ";
   cin>>n;
    cout<<"Fibonacci Series: "<<endl;

    for (i = 1; i <= n; ++i) {
       cout<<t1<< ","<<" ";
      int  t3 = t1 + t2;
        t1 = t2;
        t2 = t3;
    }

    return 0;
}
