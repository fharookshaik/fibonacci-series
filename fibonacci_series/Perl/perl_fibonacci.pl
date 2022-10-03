#!usr/bin/local/perl

# README
# to run this file, run following command in your terminal:
# perl fibonacci_using_2_var.pl



print("Enter no. of terms to be printed of fibonacci series: \n");
$n=<>;

# given 3 terms of series in order as ... , first , second , current
# current = first + second (if position of current in the series is >= 2 (index starting from 0))
# otherwise current = i (i is index in fibonacci series)
# eg: 0,1,1,2,3,5,...

$first= 0;
$second = 1; 

# to chomp off newline character which got stored when we entered during inputting the value
chomp($n);


print("fibonacci series with $n elements: \n");
for ( $i = 0 ; $i < $n ; $i++ ){
    if($i<= 1 ){
        #handles case upto 0,1 indexes
        print("$i ");
    }
    else{

        # current = fib[i-2] + fib[i-1] 
        $current = $first + $second;

        #to update fib[i-2] and fib[i-1] for next iteration
        $first = $second;
        $second = $current;

        #printing current fib term
        print("$current ");
        
        
    }

}
print("\n");
