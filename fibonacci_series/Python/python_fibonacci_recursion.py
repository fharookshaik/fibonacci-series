# Recursive fibonnaci code
# this algorithm uses recursion to find the nth term in a fibonacci series


def fibonacci(n):
    if n <= 0:
        print("Wrong Input!")
    elif n == 1:
        return 0
    elif n == 2:
        return 1
    else:
        return fibonacci(n - 1) + fibonacci(n - 2)


num = int(input("Enter the nth term: "))
print(fibonacci(num))
