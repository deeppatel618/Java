package userDefinedException;

public class checkingAccount {
	
	int acno;
	double balance;
	public checkingAccount(int acno)
	{
		this.acno=acno;
	}
	public void deposit(double amount)
	{
		this.balance+=amount;
	}
	public void withdraw(double withdrawAmount) throws inSufficientFunds
	{
		if(withdrawAmount<=this.balance){
			//this.balance-=withdrawAmount;
		}
		else {
			double needs=withdrawAmount-this.balance;
			throw new inSufficientFunds(needs);
		}
	}
	public void checkBalance()
	{
		System.out.println("current balance"+this.balance);
	}
}
