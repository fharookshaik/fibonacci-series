package milestone6;

import java.util.Scanner;

public class FibonacciSeries {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 Scanner sc=new Scanner(System.in);
         System.out.println("Enter a number of members in series: ");
         int n=sc.nextInt();
         int count=0;
         int a=1,b=1;
         System.out.print(a+" "+b+" ");
         while(count<(n-2))
         {
            int c=a+b;
            System.out.print(c+" ");
            b=c;
            a=b;
            count++;
         }
	}

}
