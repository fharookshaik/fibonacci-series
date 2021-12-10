#python fibonacci using memoization which execute faster than normal recursion

memo={}
def fibonacci(n):
    if(n in memo):
      return memo[n]
    elif(n == 0):
      return 0
    elif(n == 1 or n == 2):
      return 1
    elif(n > 2):
        memo[n]=fibonacci(n - 1) + fibonacci(n - 2)
    else:
      return "Wrong Input"
    return memo[n]


num = int(input("Enter the nth term: "))
print(fibonacci(num))

