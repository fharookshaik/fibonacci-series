#include <iostream>
#include <cmath>
using namespace std;

long long getNthFibonacci(long long n){
   double phi = (1 + sqrt(5)) / 2;
  return round(pow(phi, n) / sqrt(5));
}

int main() 
{
    int n;
    cout<<"Enter the No. of terms to be printed: \n";
    cin>>n;
    cout<<"The "<<n<<" fibonacci terms are as: \n";
    for(int i = 0; i<=n; i++)
        cout<<getNthFibonacci(i)<<'\n';
    
    return 0;
}
