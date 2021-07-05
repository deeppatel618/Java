import java.util.Scanner;

public class TwoDimensionArray {
	public static void main(String[] args) {
		int i,j;
		int a[][] = new int[3][3];
		Scanner sc = new Scanner(System.in);
		
		for(i=0;i<a.length;i++)
		{
			for(j=0;j<a.length;j++)
			{
				System.out.print("Enter a[" + (i+1) + "][" + (j+1) + "] element :- ");
				a[i][j] = sc.nextInt();
			}
		}
		
		System.out.println("2D ARRAY :- ");
		for(i=0;i<a.length;i++)
		{
			for(j=0;j<a.length;j++)
			{
				System.out.print(a[i][j] + " ");
			}
			System.out.println();
		}
	}
}
