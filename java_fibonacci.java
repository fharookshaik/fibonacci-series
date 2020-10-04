import java.util.Scanner;
class Fibonacci {

  public static void printFibonacci(int count){
    int n1 = 0, n2 = 1, i=1;

    while(i<=count)
    {
        System.out.print(n1+" ");
        int sum = n1 + n2;
        n1 = n2;
        n2 = sum;
        i++;
    }
  }

  public static void main(String[] args) {
      System.out.println("Enter the number of elements: ");

      Scanner scanner = new Scanner(System.in);
      int count = scanner.nextInt();
      scanner.close();

      System.out.print("Fibonacci Series: ");
      printFibonacci(count);      
  }
}
