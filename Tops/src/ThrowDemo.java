import java.util.Scanner;

public class ThrowDemo {
	public static void demo()
	{
		int a;
		try {
			Scanner scan = new Scanner(System.in);
			System.out.print("Enter value ");
			a = scan.nextInt();
			if (a > 0) {
				System.out.println("Positive value");
			} else if(a==0) {
				throw new Exception();
			}
		} catch (Exception e) {
			System.out.println("Exception caught" + e);
			demo();
		}
	}
	public static void main(String[] args) {
		demo();
	}
}
