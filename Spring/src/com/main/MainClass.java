package com.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bean.Student;

//// To understand dependency relate this program
//class Address
//{
//	public Address()
//	{
//		System.out.println("Address's controller");
//	}
//}
//class Employee
//{
//	Address address;
//	public Employee(Address address)
//	{
//		System.out.println("EMployee's constructor");
//		this.address=address;
//	}
//	public Employee()
//	{
//		System.out.println("EMployee's constructor");
//		
//	}
//}
//public class MainClass {
//	public static void main(String[] args)
//	{
//		new Employee();
//	}
//}
public class MainClass
{
	public static void main(String[] args)
	{
//		ClassPathXmlApplicationContext c=new ClassPathXmlApplicationContext("beans.xml");
//		ApplicationContext a=c;//alternative of below code;
		
		//if you use below method then bean will not be destroyed.
//		ApplicationContext a=new ClassPathXmlApplicationContext("beans.xml");//class path xml is used to for path to go to beans.xml
		
		AbstractApplicationContext a=new ClassPathXmlApplicationContext("beans.xml");
		Student s1=(Student)a.getBean("s1");
		
		System.out.println(s1.getId());
		System.out.println(s1.getFname());
		System.out.println(s1.getLname());
		System.out.println(s1.getEmail());
		a.registerShutdownHook();//it is used to destory the bean object..lifecycle of bean ends here
		
	}
}
