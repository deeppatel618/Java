import java.util.HashSet;
public class HashSetPrac {
	public static void main(String[] args)
	{
		HashSet hs=new HashSet();
		hs.add(10);
		hs.add(10.10);
		hs.add("Example");
		hs.add('E');
		hs.add(null);
		hs.add(true);
		hs.add(10);
		System.out.println(hs);
	}
}
