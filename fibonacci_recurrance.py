# Uses python3
# Constraints. 0 ≤ n ≤ 45
# using Recurrence function

def fib(n):
    if(n <= 1):
        return n
    return (fib(n - 1) + fib(n - 2))

n = int(input())
assert ((n >= 0) and (n <= 45)), "n should be in range 0 ≤ n ≤ 45"

print(fib(n))
