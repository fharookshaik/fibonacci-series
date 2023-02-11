#include <stdio.h>
#include <stdint.h>
 
int fib() {
  int n, i;
  int64_t first = 0, second = 1, result;
  printf("Please indicate the fibonacci number you would like to find: ");
  scanf("%d", &n);
  printf("The fibonaaci number at postion %d: ", n);
  if (n <= 1) {
        printf("%d", n);
        return 0;
    }
  else {
    for (i = 0; i < n; i++) {
          result = first + second;
          first = second;
          second = result;
      } 
    }
  printf("%lld", result);
  return 0;
} 

int main() {
    fib();
    return 0;
}