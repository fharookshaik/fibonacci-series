import 'dart:io';

void main() {
  print("Enter The nth Term: ");
  int? n = int.parse(stdin.readLineSync()!);
  print(fib(n));
}

int fib(int a) {
  if (a <= 0) {
    print("Wrong Input!");
  }
  if (a == 1) {
    return 0;
  } else if (a == 2) {
    return 1;
  }
  return fib(a - 1) + fib(a - 2);
}
