#python fibonacci using memoization which execute faster than normal recursion

def fibonacci(n,memo={}):
    if(n in memo):
      return memo[n]
    elif(n == 0):
      return 0
    elif(n == 1 or n == 2):
      return 1
    else:
      return "Wrong Input"
    memo[n]=fibonacci(n - 1,memo) + fibonacci(n - 2,memo)
    return memo[n]


num = int(input("Enter the nth term: "))
print(fibonacci(num))
