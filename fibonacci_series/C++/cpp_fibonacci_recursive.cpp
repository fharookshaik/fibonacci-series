#include<iostream>


const int fibonacci( long int n){
    if(n<=0) return -1;
    if(n==1) return 0;
    if(n==2)return 1;
    else return fibonacci(n-1)+fibonacci(n-2);
}

int main()
{    long int  n; 
    std::cout<<"Enter the nth fibonacci number which needs to be found out :";
    std::cin >>  n ;
    std::cout<< fibonacci(n) << std::endl;
    return 0;
}
