import java.util.Scanner;

public class ThrowsDemo {
	public static void demo() throws NullPointerException,ArithmeticException
	{
		int a;
		
			Scanner scan = new Scanner(System.in);
			System.out.print("Enter value ");
			a = scan.nextInt();
			if (a > 0) 
			{
				System.out.println("Positive value");
			}
			else 
			{	
			throw new NullPointerException("Please enter number greater than zero");
			}
	}
	public static void main(String[] args) {
		
		try{demo();}
		catch(Exception e)
		{
			System.out.println(e);
			demo();
		}
		finally {
			System.out.println("Code placed here will compulsory execute");
		}
	}
}

