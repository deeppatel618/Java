import java.util.HashMap;
public class HashMapPrac {
	public static void main(String[] args)
	{	
		HashMap hs=new HashMap();
		hs.put(1, "Deep");
		hs.put(2, "Manan");
		hs.put(3,"Jaydeep");
		hs.put(4, "weqwe");
		hs.put(5, "eqwe");
		hs.put(6, "wheee");
		System.out.println(hs);
		System.out.println(hs.get(2));
		System.out.println(hs.entrySet());
		System.out.println(hs.keySet());
		System.out.println(hs.values());
	}
}
