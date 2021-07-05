import java.util.Scanner;

public class Loopdowhile {
	public static void main(String[] args) {
		int n, sum=0;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter Value For N: ");
		n = sc.nextInt();
		
		do
		{
			sum = sum + n;
			n--;
		}while(n > 0);
		System.out.println("SUM = " + sum);
	}
}
