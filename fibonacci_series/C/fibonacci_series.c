#include <stdio.h>
void printFibonacci(int n)
{
    long long int n1 = 0, n2 = 1, n3=0;
    int i = 0;
    while (i<n)
    {
        printf("%lld\n", n3);
        n1 = n2;
        n2 = n3;
        n3 = n1 + n2;
        i++;
    }
}
int main()
{
    int n;
    printf("Enter the number of elements: ");
    scanf("%d", &n);
    printf("Fibonacci Series: \n");
    printFibonacci(n);
    return 0;
}
