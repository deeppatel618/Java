interface ia
{
	void maths();
}
interface ib extends ia//Inheritance of interface
{
	void science();
}
class ica implements ib//using interface in class 
{
	public void maths()//all the methods should be complusory declared in class if it is defined in interface
	{
		System.out.println("Maths");
	}
	public void science()
	{
		System.out.println("Science");
	}
}
public class Interface {
	public static void main(String[] args) {
		ica i=new ica();
		i.maths();
		
	}
}
