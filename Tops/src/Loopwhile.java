import java.util.Scanner;

public class Loopwhile {
	public static void main(String[] args) {
		int n, sum=0;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter Value For N: ");
		n = sc.nextInt();
		
		while(n > 0)
		{
			sum = sum + n;
			n--;
		}
		System.out.println("SUM = " + sum);
	}
}
