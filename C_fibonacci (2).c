
#include <stdio.h>

int main()
{
  int n,n1,n2,n3;
  printf("Enter the number of terms ");
  scanf("%d",&n);
 
  int arr[n];
  arr[0]=0;
  arr[1]=1;
  for(int i=2;i<n;i++){
      arr[i]=arr[i-1]+arr[i-2];
  }
  for(int i=0;i<n;i++){
      printf("%d ",arr[i]);
  }

    return 0;
}
