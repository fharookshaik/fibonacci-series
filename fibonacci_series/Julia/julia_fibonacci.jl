function fibonacci(num::Int)
    num1 = 0
    num2 = 1
    series = 0
    i = 0
    while i <= num
        println(series)
        num1 = num2
        num2 = series
        series = num1 + num2
        i=i+1
    end
end

println("Enter how many numbers needed in Fibonacci series : ") 

num = parse(Int, readline())

fibonacci(num)