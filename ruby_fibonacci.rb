def fibonacci(num)
    if num <= 0
        puts "Invalid number supplied."
        return
    end
    num_one = 0
    num_two = 1
    n = 0 
    
    num.times do |i|
        print "#{n} "
        num_one = num_two
        num_two = n
        n = num_one + num_two
    end
end

print "Enter amount of numbers needed from the fibonacci series: "
num = gets.to_i
fibonacci(num)