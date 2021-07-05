import java.util.*;
public class Collection {
	public static void main(String[] args)
	{
		ArrayList list=new ArrayList();
		list.add(10);
		list.add("Name");
		list.add(10.8);
		list.add(100);
		System.out.println(list);
		System.out.println(list.indexOf(10.8));
		//list.remove()-It accepts 2types of parameter 1 index and other object so if you want to remove value at index number than use directly otherwise pass object of Integer type
		System.out.println(list);
		list.remove(new Integer(100));//removed value 100
		System.out.println(list);
		list.remove(1);//removed value at index 1
		System.out.println(list);
		list.set(1, new String("Surname"));
		System.out.println(list);
		list.add(2, 't');
		System.out.println(list);
		for (int i=0;i<list.size();i++)
		{
			System.out.println(list.get(i));
		}
		System.out.println("---------Iterator---------");//An Iterator is an object that can be used to loop through collections, like ArrayList and HashSet. It is called an "iterator" because "iterating" is the technical term for looping.
		Iterator itr=list.iterator();
		while(itr.hasNext())
		{
			System.out.println(itr.next());
		}
	}
}