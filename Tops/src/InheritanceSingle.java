import java.util.Scanner;

class SI_A
{
	int a;
	SI_A()
	{
		System.out.print("Enter A :- ");
		Scanner sc = new Scanner(System.in);
		a = sc.nextInt();		
	}
}
class SI_B extends SI_A
{
	int b;
	SI_B()
	{
		System.out.print("Enter B :- ");
		Scanner sc = new Scanner(System.in);
		b = sc.nextInt();
	}
}
class SI_C extends SI_B 
{
	int c;
	void show()
	{
		System.out.print("SUM = " + (a + b));	
	}
}
public class InheritanceSingle {
	public static void main(String[] args) {
		SI_C c1 = new SI_C();
		
		c1.show();
	}
}
