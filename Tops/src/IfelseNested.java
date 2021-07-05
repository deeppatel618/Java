import java.util.Scanner;

public class IfelseNested {
	public static void main(String[] args) {
		int a,b,c;
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter 1 number: ");
		a = sc.nextInt();
		System.out.print("Enter 2 number: ");
		b = sc.nextInt();
		System.out.print("Enter 3 number: ");
		c = sc.nextInt();
		
		if(a > b)
		{
			if(a > c)
			{
				System.out.println(a + " is max");
			}
			else
			{
				System.out.println(c + " is max");
			}
		}
		else
		{
			if(b > c)
			{
				System.out.println(b + " is max");
			}
			else
			{
				System.out.println(c + " is max");
			}
		}
	}
}
