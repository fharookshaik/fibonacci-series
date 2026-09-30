use std::io::{self, Read};
use std::process;

fn main() {
    let mut input = String::new();

    if io::stdin().read_to_string(&mut input).is_err() {
        process::exit(2);
    }

    let n: usize = match input.trim().parse() {
        Ok(value) if value <= 185 => value,
        _ => process::exit(2),
    };

    let mut a: u128 = 0;
    let mut b: u128 = 1;
    let mut terms = Vec::with_capacity(n);

    for _ in 0..n {
        terms.push(a.to_string());

        let next = match a.checked_add(b) {
            Some(value) => value,
            None => process::exit(2),
        };

        a = b;
        b = next;
    }

    println!("{}", terms.join(" "));
}
