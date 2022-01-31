import java.util.Scanner;

public class RecursionFibonacci{
    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);
        // show a prompt to the user to input the number of terms in the series
        System.out.println("How many terms would you like in the series?: ");

        // take the input, using BigInteger to virtually store very large integer numbers
        int n = sc.nextInt();
        int fib = fib(n);
        System.out.println(n);


    }
    public static int fib(int n){
        if(n<1){
            return n;
        }
        return fib(n-1) + fib(n+2);
    }
}
