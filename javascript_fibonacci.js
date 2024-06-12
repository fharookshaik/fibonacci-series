function Fibonacci(num) {

    let fib = 0;
    let first_term = 0;
    let second_term = 1;
    let i;
    
    for(i=0; i<=num; i++){
        
        console.log(first_term +  " ");
        fib = first_term + second_term;
        first_term = second_term;
        second_term = fib;
    }

}

Fibonacci(100);
