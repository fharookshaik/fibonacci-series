#include<iostream>
#include<vector>
using namespace std;
//method 1 topdown
int fib(int n,vector<int> &dp){
    if(n==0){
        return 0;
    }
    if(n==1){
        return 1;
    }
    if(dp[n]!=-1){
        return dp[n];
    }
 int nas=fib(n-1,dp) + fib(n-2,dp);
 return dp[n]=nas;
}
//method2 bottomup
int fib2(int n){
    vector<int> dp(n+1,0);
    dp[0]=0;
    dp[1]=1;
    
for(int i=2; i<=n; i++) {
        int ans = dp[i-1] + dp[i-2];
        dp[i] = ans;
    }
    return dp[n];
}
//method3 space optimization
int fib3(int n){
    int prev1=1;
    int prev2=0;
    int curr;
for(int i=2; i<=n; i++) {
       int ans=prev1+prev2;
      curr=ans;
      prev2=prev1;
      prev1=curr;
    }
    return curr;
}
int main(){
    int n=5;
    vector<int> dp(n+1,-1);
cout<< "ans is-> "<<fib3(n);

}