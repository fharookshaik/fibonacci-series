use std::io;

fn fib(n: u128) -> u128 {
    let mut a: u128 = 0;
    let mut b: u128 = 1;

    for _ in 0..n {
        let temp = b;
        b += a;
        a = temp;
    }
    a
}

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
