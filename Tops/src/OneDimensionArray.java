import java.util.Scanner;

public class OneDimensionArray {
	public static void main(String[] args) {
		int i;
		int a[] = new int[3];
		Scanner sc = new Scanner(System.in);
		
		for(i=0;i<a.length;i++)
		{
			System.out.print("Enter a[" + (i+1) + "] element :- ");
			a[i] = sc.nextInt();
		}
		
		System.out.print("!D ARRAY :- ");
		for(i=0;i<a.length;i++)
		{
			System.out.print(a[i] + " ");
		}
	}
}
