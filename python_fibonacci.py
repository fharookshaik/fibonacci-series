def fibonacci(num):
    num1 = 0
    num2 = 1
    series = 0
    for i in range(num):
        print(series);
        num1 = num2;
        num2 = series;
        series = num1 + num2;
 
 
# running function after taking user input
num = int(input('Enter how many numbers needed in Fibonacci series : '))
fibonacci(num)