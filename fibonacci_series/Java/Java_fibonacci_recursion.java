import java.util.Scanner;

class Java_fibonacci_recursion {
    static int fibonacci(int n){

        if(n== 1){
            return 0;
        }
        if(n== 2){
            return 1;
        }

        return fibonacci(n-1) + fibonacci(n-2);
    }

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the number of terms in the series: ");

        int n = sc.nextInt();

        System.out.print(0 + " ");

        for (int i = 2; i < n; i++) {
            System.out.print(fibonacci(i)+ " ");
        }

        sc.close();
    }
}