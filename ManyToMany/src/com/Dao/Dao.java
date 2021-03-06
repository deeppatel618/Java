package com.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Course;
import com.bean.Student;
import com.util.HibernateUtil;

public class Dao {
	public static void addCourse(Course c)
	{
		Session s=HibernateUtil.createConnection();
		Transaction tr=s.beginTransaction();
		s.save(c);
		tr.commit();
		s.close();
	}
	public static void addStudent(Student c)
	{
		Session s=HibernateUtil.createConnection();
		Transaction tr=s.beginTransaction();
		s.saveOrUpdate(c);
		tr.commit();
		s.close();
	}
	public static List<Course> getAllCourse()
	{
		Session s=HibernateUtil.createConnection();
		List<Course> list=s.createQuery("from Course order by courseName ASC ").list();
		s.close();
		return list;
	}
	public static Course getCourseById(int cid)
	{
		Session s=HibernateUtil.createConnection();
		Course d=s.get(Course.class, cid);
		s.close();
		return d;
	}
	public static List<Student> getAllStudent()
	{
		Session s=HibernateUtil.createConnection();
		List<Student> list=s.createQuery("from Student order by sid ").list();
		s.close();
		return list;
	}
	public static void deleteStudentBySid(int sid) {
		Session s=HibernateUtil.createConnection();
		Transaction tr=s.beginTransaction();
		Student st=s.get(Student.class, sid);
		s.delete(st);
		tr.commit();
		s.close();	
	}
	public static Student getStudentById(int sid)
	{
		Session s=HibernateUtil.createConnection();
		Student st=s.get(Student.class, sid);
		s.close();
		return st;
	}

}
