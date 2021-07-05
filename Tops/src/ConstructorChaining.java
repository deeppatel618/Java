class a1
{
	a1()
	{
		System.out.println("Constructor of a1");
	}
}
class b1 extends a1
{
	b1()
	{
		System.out.println("Constructor of b1");
	}
}
class c1 extends b1
{
	c1()
	{
		System.out.println("Constructor of c1");
	}
}
public class ConstructorChaining {
	public static void main(String[] args)
	{
		c1 c=new c1();
	}
}
