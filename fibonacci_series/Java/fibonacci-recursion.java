import java.util.Scanner;
public class Fibonacci {
    private static long[] fibonacciCache;
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("How many terms would you like in the series?:");
        int numberOfTerms = in.nextInt();
        fibonacciCache = new long[numberOfTerms + 1];
        for (int i = 0; i < numberOfTerms; i++){
            System.out.println(fibonacci(i) +" ");
        }
      in.close();
    }
    private static long fibonacci(int n) {
        if(n <= 1){
            return n;
        }
        if(fibonacciCache[n] != 0){
            return fibonacciCache[n];
        }
        long nthFibonacciNumber = (fibonacci(n - 1) + fibonacci(n - 2));
        fibonacciCache[n] = nthFibonacciNumber;
        return nthFibonacciNumber;
    }
}
