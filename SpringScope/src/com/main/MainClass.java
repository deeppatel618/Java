package com.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bean.Student;

public class MainClass {
	
	public static void main(String[] args) {
	ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
	Student s=(Student)a.getBean("s1");
	s.setFname("Deep");
	s.setLname("Patel");
	s.setEmail("DeepPatel@gmail.com");
	System.out.println("Fname "+s.getFname()+"\nLname "+s.getLname()+"Email "+s.getEmail());
	
//	Student s2=(Student)a.getBean("s1");
//	System.out.println("Fname "+s2.getFname()+"\nLname "+s2.getLname()+"Email "+s2.getEmail());
	}
}
