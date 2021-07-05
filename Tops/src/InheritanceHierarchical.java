class Superclass1
{
	Superclass1()
	{
		System.out.println("Super Class");
	}
}
class Subclass1 extends Superclass1
{
	Subclass1()
	{
		System.out.println("Sub Class 1");
	}
}
class Subclass2 extends Superclass1
{
	Subclass2()
	{
		System.out.println("Sub Class 2");
	}
}

public class InheritanceHierarchical {
	public static void main(String[] args) {
		Subclass1 sc1 = new Subclass1();
		Subclass2 sc2 = new Subclass2();
	}
}
