# Recursive fibonnaci code
# this algorithm uses recursion to find the nth term in a fibonacci series

function fibonacci(n::Int)
    if n <= 1
        return n
    else
        return fibonacci(n-1) + fibonacci(n-2)
    end
end

println("Enter the nth term : ") 

num = parse(Int, readline())

println(fibonacci(num))