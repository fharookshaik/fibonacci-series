#include<iostream>
using namespace std;
int fibonacci(int n)
{
    if(n==0) return 0; if(n==1) return 1;
    else {return fibonacci(n-1)+fibonacci(n-2);}
}
int main()
{
    int n;
    cout<<"Enter no. of Terms: ";
    cin>>n;
    cout<<"Fibonacci series is:\n";
    for(int i=0;i<n;i++)
    {
        cout <<fibonacci(i)<<endl;
    }
}
