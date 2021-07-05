package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Dept;
import com.bean.Emp;
import com.util.EmpUtil;

public class EmpDao {

	public static void insertDept(Dept d)
	{
		System.out.println("insertDept Called");
		Session session=EmpUtil.createSession();
		Transaction tr=session.beginTransaction();
		session.saveOrUpdate(d);
		tr.commit();
		session.close();
	}
	public static void insertEmp(Emp e)
	{
		Session session=EmpUtil.createSession();
		Transaction tr=session.beginTransaction();
		session.saveOrUpdate(e);
		tr.commit();
		session.close();
	}
	public static List<Dept> getAllDept()
	{
		Session session=EmpUtil.createSession();
		List<Dept> list=session.createQuery("from Dept order by dname ASC ").list();
		session.close();
		return list;
	}
	public static Dept getDeptByDid(int did)
	{
		Session session=EmpUtil.createSession();
		Dept d=session.get(Dept.class, did);
		session.close();
		return d;
	}
	public static List<Emp> getAllEmp()
	{
		Session session=EmpUtil.createSession();
		List<Emp> list=session.createQuery("from Emp order by fname ASC").list();
		session.close();
		return list;
	}
	public static void deleteEmp(int eid)
	{
		Session session=EmpUtil.createSession();
		Transaction tr=session.beginTransaction();
		Emp e=session.get(Emp.class, eid);
		session.delete(e);
		tr.commit();
		session.close();
	}
	public static Emp getById(int eid)
	{
		Session session=EmpUtil.createSession();
		Transaction tr=session.beginTransaction();
		Emp e=session.get(Emp.class, eid);
		session.close();
		return e;
	}
	public static void deleteDept(int did)
	{
		Session session=EmpUtil.createSession();
		Transaction tr=session.beginTransaction();
		Dept e=session.get(Dept.class, did);
		session.delete(e);
		tr.commit();
		session.close();
	}
	public static List<Dept> getDept(int did)
	{
		Session session=EmpUtil.createSession();
		String sql="from Dept d where d.did!=:d_id";
		Query q=session.createQuery(sql);
		q.setParameter("d_id", did);
		List<Dept> list=q.list();
		session.close();
		System.out.println("List : "+list);
		return list;
	}
	
	
}
