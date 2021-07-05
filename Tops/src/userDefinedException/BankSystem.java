package userDefinedException;
import java.util.Scanner;
public class BankSystem {
	public static void main(String args[])
	{	
		checkingAccount ck=new checkingAccount(101);
		Scanner sc=new Scanner(System.in);
		ck.checkBalance();
		System.out.println("Enter amount you want to deposit");
		ck.deposit(sc.nextDouble());
		ck.checkBalance();
		try {
			System.out.println("Enter amount you want to withdraw");
			ck.withdraw(sc.nextDouble());
			ck.checkBalance(); 
		}
		catch(inSufficientFunds e)
		{
			System.out.println("You need another"+e.getAmount());
		}
		sc.close();
	}
}
