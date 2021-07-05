import java.util.Scanner;
public class ExceptionDemo {
	public static void main(String[] args)
	{
		int a,b,c;
		System.out.println("Starting of code");
		Scanner sc=new Scanner(System.in);
		try {
			System.out.println("Enter A:-");
			a=sc.nextInt();
			System.out.println("Enter B:-");
			b=sc.nextInt();
			c=a/b;
			System.out.println("Ans= "+c);
		}
		catch(ArithmeticException e)
		{
			System.out.println("Exception caught "+ e);
		}
		
		System.out.println("Ending of code");
	}

}
