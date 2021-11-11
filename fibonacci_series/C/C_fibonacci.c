#include <stdio.h>
void printFibonacci(int n)
{
    static long long int n1 = 0, n2 = 1;
    if(n > 0)
    {
        n2 = n1 + n2;
        n1 = n2 - n1;
        printf("%lld\n", n2);
        printFibonacci(n - 1);
    }
}
int main()
{
    int n, i;
    printf("Enter the number of elements: ");
    scanf("%d", &n);
    printf("Fibonacci Series: \n");
    for(i=0; i<n && i<2; i++)
        printf("%d\n", i); //In case n==0 or n==1, we don't always print the first two elements
    printFibonacci(n - 2); //n-2 because 2 numbers are already printed
    return 0;
}
