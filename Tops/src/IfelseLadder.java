import java.util.Scanner;

public class IfelseLadder {
	public static void main(String[] args) {
		int a;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter any number: ");
		a = sc.nextInt();
		
		if(a > 100)
		{
			System.out.println("Limit reached");
		}
		else if(a > 70)
		{
			System.out.println("A Grade");
		}
		else if(a > 50)
		{
			System.out.println("B Grade");
		}
		else if(a > 30)
		{
			System.out.println("Pass");
		}
		else
		{
			System.out.println("FAIL");
		}
	}
}
