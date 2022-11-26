use std::io;

fn fib(x: u128)->u128{
    if x <=2{
        1
    }
    else{
        fib(x-1)+fib(x-2)
    }
}

// copied main() from https://github.com/fharookshaik/fibonacci-series/blob/main/fibonacci_series/Rust/rust_fibonacci.rs
fn main() {
    println!("How many fibonacci terms should be printed?");

    let mut n: String = String::new();
    io::stdin()
        .read_line(&mut n)
        .expect("Failed to read input");

    let n: u128 = n
        .trim()
        .parse()
        .expect("Please enter a valid number");

    for i in 1..(n+1) {
        println!("{}", fib(i));
    }
}