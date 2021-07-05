import java.util.Scanner;
public class If_else {
	public static void main(String[] args) {
		int a;
		System.out.print("Enter value of a:-");
		Scanner sc=new Scanner(System.in);
		a=sc.nextInt();
		if(a>=0)
			System.out.print("Positive");
		else
			System.out.print("Negative");
		sc.close();
	}
}
