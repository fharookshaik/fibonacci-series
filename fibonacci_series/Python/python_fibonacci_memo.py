#python fibonacci using memoization which execute faster than normal recursion

def fibonacci(n,memo={}):
    if(n < 0):
      return "Wrong Input"
    if(n == 0):
      return 0
    if(n in memo):
      return memo[n]
    if(n == 1 or n == 2):
      return 1
    memo[n]=fibonacci(n - 1,memo) + fibonacci(n - 2,memo)
    return memo[n]


num = int(input("Enter the nth term: "))
print(fibonacci(num))
