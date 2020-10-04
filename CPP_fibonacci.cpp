// Fibonacci upto nth term (Iterative Method)
#include<bits/stdc++.h>
using namespace std;
void get_fibb(long int n)
{
	long int f0=0,f1=1;
	if(n<1)
		return;
	
	for(long int i=1;i<=n;i++){
		cout<<f1<<" ";
		long int tmp=f0+f1;
		f0=f1;
		f1=tmp;
	}
}
int main()
{
	long int n;
	cin>>n;
	get_fibb(n);
}