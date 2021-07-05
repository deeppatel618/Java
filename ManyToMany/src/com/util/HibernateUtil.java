package com.util;

import java.util.Properties;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.bean.Course;
import com.bean.Student;

public class HibernateUtil {
	private static SessionFactory sessionFactory;
	private static Session session;
	static public Session createConnection(){
		
	 try {
		 Properties prop=new Properties();
		 prop.setProperty("hibernate.connection.driver_class", "com.mysql.jdbc.Driver");
	        prop.setProperty("hibernate.connection.url", "jdbc:mysql://localhost:3306/hibernate");
			prop.setProperty("hibernate.connection.username", "root");
			prop.setProperty("hibernate.connection.password", "");
			prop.setProperty("dialect", "org.hibernate.dialect.MySQLDialect");
			prop.setProperty("hibernate.hbm2ddl.auto","update");
			prop.setProperty("hibernate.show_sql","true");
			prop.setProperty("hibernate.format_sql","true");
			
			Configuration configuration = new Configuration();
			configuration
			.addProperties(prop)
			.addAnnotatedClass(Student.class)
			.addAnnotatedClass(Course.class);
			
			sessionFactory  = configuration.buildSessionFactory();
			session = sessionFactory.openSession();	
	} catch (Exception e) {
			}
	 return session;
	}

}
