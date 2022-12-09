import 'dart:io';

class Fibonacci {
  static Iterable getSequence(int n) {
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

  print(Fibonacci.getSequence(0).toString());
  print(Fibonacci.getSequence(1).toString());
  print(Fibonacci.getSequence(5).toString());
  print(Fibonacci.getSequence(12).toString());
}
