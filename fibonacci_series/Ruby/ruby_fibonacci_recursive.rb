def fib(n, memo = {0 => 0, 1 => 1, 2 => 1})
  memo[n] ||= fib(n - 1, memo) + fib(n - 2, memo)
end

def fibonacci_series(num)
  if num <= 0
    puts "Invalid number supplied."
    return
  end

  (0...num).each do |i|
    print "#{fib(i)} "
  end
end

print "Enter amount of numbers needed from the fibonacci series: "
num = gets.to_i
fibonacci_series(num)
