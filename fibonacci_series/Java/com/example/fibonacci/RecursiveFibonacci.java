package com.example.fibonacci;
import java.math.BigInteger;
import java.util.Scanner;

class RecursiveFibonacci  {
    public static BigInteger recursiveFibonacci(int n) {
        if (n == 0) {
            return BigInteger.ZERO;
        } else if (n == 1) {
            return BigInteger.ONE;
        } else {
            return recursiveFibonacci(n - 1).add(recursiveFibonacci(n - 2));
        }
    }

    public static void printFibonacciSeries(int numberOfTerms) {
        for (int i = 0; i < numberOfTerms; i++) {
            System.out.print(recursiveFibonacci(i));
            if (i != numberOfTerms - 1) {
                System.out.print(", ");
            }
        }
        System.out.println(".");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of terms for the Fibonacci series: ");
        int numberOfTerms = scanner.nextInt();
        scanner.close();

        printFibonacciSeries(numberOfTerms);
    }

}
