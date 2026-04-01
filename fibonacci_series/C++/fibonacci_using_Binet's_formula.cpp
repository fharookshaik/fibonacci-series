#include <bits/stdc++.h>

using namespace std;

int main()
{
	double n;
	cout<<"Enter the value of n to get the nth fibonacci number: ";
	cin>>n;
	double ans=(pow((1+sqrt(5)),n)-pow((1-sqrt(5)),n))/(pow(2,n)*sqrt(5));
	cout<<(int)ans<<endl;
}
