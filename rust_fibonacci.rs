pub fn fib(n: u64) -> u64 {
    let mut a: u64 = 0;
    let mut b: u64 = 1;

    for _ in 0..n {
        let temp = b;
        b += a;
        a = temp;
    }
    a
}
