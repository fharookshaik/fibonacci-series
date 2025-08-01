use std::io;

fn fib_binet(n: u32) -> u128 {
    if n == 0 {
        return 0;
    } else if n == 1 {
        return 1;
    }

    if n > 78 {
        panic!("Warning: Results inaccurate for n > 78 due to f64 precision limits");
    }

    let phi = (1.0 + 5.0f64.sqrt()) / 2.0;
    let psi = (1.0 - 5.0f64.sqrt()) / 2.0;

    let fib_n = (phi.powf(n as f64) - psi.powf(n as f64)) / (5.0f64.sqrt());

    fib_n.round() as u128
}


fn main() {
    println!("Enter the nth term: ");
    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read input");
    let n: u32 = input.trim().parse().expect("Please enter a valid number");
    println!("{}", fib_binet(n));
}