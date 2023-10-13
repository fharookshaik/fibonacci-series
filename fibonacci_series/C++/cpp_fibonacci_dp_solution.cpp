#include <bits/stdc++.h>
using namespace std;


int solveMemo(int n , vector<int> & dp){
    // Base Case
    if(n == 1 || n == 0){
        dp[0] = 0;
        dp[1] = 1;
        return n;
    }

    // Already computed its value
    if(dp[n] != -1){
        return dp[n];
    }


    // Recursive Call
    dp[n] = solveMemo(n - 1 , dp) + solveMemo(n - 2 , dp);
    
}

int main(){
    int n;
    cout << "Enter the number of terms : ";
    cin >> n;

    // Using Memoization
    vector<int> dp(n + 1 , -1);
    solveMemo(n , dp);

    cout << "Using Memoization : " << dp[n - 1] << "\n";

    // Solving in bottoms up approach
    vector<int> dp2(n + 1 , 0);

    // Filling Base case
    dp2[0] = 0;
    dp2[1] = 1;

    // Iterating to get the desired value
    for(int i = 2 ; i <= n ; i++){
        dp2[i] = dp2[i - 1] + dp2[i - 2];
    }

    cout << "Using Iteration Dp : " << dp2[n - 1] << "\n";

}