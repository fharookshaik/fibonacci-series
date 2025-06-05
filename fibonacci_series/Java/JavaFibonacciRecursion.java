import java.util.Scanner;
class JavaFibonacciRecursion {
    public static int fibonacci(int n) {
        if (n <= 1){
            return n;
        }
        return fibonacci(n - 1) + fibonacci(n - 2);
    } 

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        for (int i = 0; i < n; i++){
            System.out.print(fibonacci(i) + " ");
        }
        
    }
}
