class Superclass
{
	Superclass()
	{
		System.out.println("Class Super Class");
	}
}
class Subclass extends Superclass
{
	Subclass()
	{
		System.out.println("Class Sub Class");
	}
}
class Subsubclass extends Subclass
{
	Subsubclass()
	{
		System.out.println("Class Sub-Sub Class");
	}
}
public class InheritanceConstructorchain {
	public static void main(String[] args) {
		Subsubclass ssc = new Subsubclass();
	}
}
