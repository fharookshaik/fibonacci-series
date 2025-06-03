#include <stdio.h>

int main()
{
    int n, i;
    long double prev_prev=0, prev=1;

    printf("Enter the number of elements: ");
    scanf("%d", &n);

    if(n <= 0) {
        printf("Invalid number!\n");
        return 0;
    }

    printf("Fibonacci Series: \n");

    for(i=0; i<n && i<2; i++)
        printf("%d, ", i); //In case n==0 or n==1, we don't always print the first two elements
  
    for(int i=0; i<n-2; i++) //n-2 because 2 numbers are already printed
    {
        prev += prev_prev;
        prev_prev = prev - prev_prev;
        printf("%0.0Lf, ", prev);
    }

    printf("\b\b \n");
    
    return 0;
}
