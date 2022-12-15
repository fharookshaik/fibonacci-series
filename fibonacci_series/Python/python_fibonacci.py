def fibonacci(num):
    num1 = 0
    num2 = 1
    series = 0
    i = 0
    while i<=num:
        print(series,end=" ");
        num1 = num2;
        num2 = series;
        series = num1 + num2;
        i+= 1
# running function after taking user input
num = int(input('Enter how many numbers needed in Fibonacci series : '))
print("The Fibonacci Series is: ")
fibonacci(num)
