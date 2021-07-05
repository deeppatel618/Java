import java.util.Scanner;

public class Forloop {
	public static void main(String[] args) {
		int n, sum=0, i;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter Value For N: ");
		n = sc.nextInt();
		
		for(i=1;i<=n;i++)
		{
			sum = sum + i;
		}
		System.out.println("SUM = " + sum);
	}
}
