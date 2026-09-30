package sample api;

fn fibonacci(n: i32) -> i32 {
    if(n <= 0) {return -1;}
    if(n == 1) {return 0;}
    if(n == 2) {return 1;}
    else {return fibonacci(n - 1) + fibonacci(n - 2);}
}

fn Main() -> i32 {
    var n: i32 = 10;
    Print("This is fibonacci #{0}: {1}", n);
    Print("{0}", fibonacci(n));
    return 0;
}