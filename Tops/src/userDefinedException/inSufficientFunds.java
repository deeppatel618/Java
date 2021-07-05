package userDefinedException;

public class inSufficientFunds extends Exception {
	double amount;
	public inSufficientFunds(double amount)
	{
		this.amount=amount;
	}
	public double getAmount()
	{
		return this.amount;
	}
}
