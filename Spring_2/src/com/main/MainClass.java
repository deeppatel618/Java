package com.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bean.Student;


public class MainClass
{
	public static void main(String[] args)
	{
//		ClassPathXmlApplicationContext c=new ClassPathXmlApplicationContext("beans.xml");
//		ApplicationContext a=c;//alternative of below code;
		
		//if you use below method then bean will not be destroyed.
//		ApplicationContext a=new ClassPathXmlApplicationContext("beans.xml");//class path xml is used to for path to go to beans.xml
		
		AbstractApplicationContext a=new ClassPathXmlApplicationContext("beans.xml");
		Student s1=(Student)a.getBean("s2");
		
		System.out.println(s1.getId());
		System.out.println(s1.getFname());
		System.out.println(s1.getLname());
		System.out.println(s1.getEmail());
		
	}
}
