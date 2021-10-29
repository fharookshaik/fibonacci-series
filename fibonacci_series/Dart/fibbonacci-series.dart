import 'dart:io';

void main() {
  print('Enter the nth term : ');
  int n = int.parse(stdin.readLineSync()!);
  fibbonaci(n);
}

void fibbonaci(int n) {
  int num1 = 0;
  int num2 = 1;
  int series = 0;
  int i = 0;
  int nums = n;

  while (i <= nums) {
    print(series);
    num1 = num2;
    num2 = series;
    series = num1 + num2;
    i++;
  }
}
