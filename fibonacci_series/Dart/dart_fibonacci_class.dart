import 'dart:io';

class Fibonacci {
  static Iterable getSeries(int n) {
    var sequence = <int>[];
    while (n >= 0) {
      sequence.add(Fibonacci.getTerm(n));
      n--;
    }
    return sequence.reversed;
  }

  static int getTerm(int n) {
    if (n == 0) return 0;
    if (n <= 2) return 1;
    return Fibonacci.getTerm(n - 1) + Fibonacci.getTerm(n - 2);
  }
}

void main() {
  print("Testing class Fibonacci...");

  print(Fibonacci.getSeries(0).toString());
  print(Fibonacci.getSeries(1).toString());
  print(Fibonacci.getSeries(5).toString());
  print(Fibonacci.getSeries(12).toString());
}
