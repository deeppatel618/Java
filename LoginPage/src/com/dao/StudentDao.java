package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bean.Student;

import com.util.StudentUtil;

public class StudentDao {
	public static void insertStudent(Student s)
	{
		try
		{
			Connection conn=StudentUtil.createConnection();
			String sql="insert into student(fname,lname,email,mobile,address,gender) values(?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, s.getFname());
			pst.setString(2, s.getLname());
			pst.setString(3, s.getEmail());
			pst.setString(4, s.getMobile());
			pst.setString(5, s.getAddress());
			pst.setString(6, s.getGender());
			pst.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static ArrayList<Student> getAllStudent()
	{
		ArrayList<Student> list =new ArrayList<Student>();
		try {
			Connection conn=StudentUtil.createConnection();
			PreparedStatement pst=conn.prepareStatement("select * from student");
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Student s=new Student();
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setEmail(rs.getString("email"));
				s.setAddress(rs.getString("address"));
				s.setMobile(rs.getString("mobile"));
				s.setGender(rs.getString("gender"));
				s.setId(rs.getInt("id"));
				list.add(s);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	public static Student getStudentById(int id)
	{
		Student s=null;
		try
		{
			Connection conn=StudentUtil.createConnection();
			PreparedStatement pst=conn.prepareStatement("select * from student where id=?");
			pst.setInt(1, id);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				s=new Student();
				s.setFname(rs.getString("fname"));
				s.setLname(rs.getString("lname"));
				s.setEmail(rs.getString("email"));
				s.setAddress(rs.getString("address"));
				s.setMobile(rs.getString("mobile"));
				s.setGender(rs.getString("gender"));
				s.setId(rs.getInt("id"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return s;
	}
	public static void updateStudentData(Student s)
	{
		try {
			Connection conn=StudentUtil.createConnection();
			PreparedStatement pst=conn.prepareStatement("update student set fname=?,lname=?,email=?,address=?,gender=?,mobile=? where id=?;");
			pst.setString(1, s.getFname());
			pst.setString(2, s.getLname());
			pst.setString(3, s.getEmail());
			pst.setString(4, s.getAddress());
			pst.setString(5, s.getGender());
			pst.setString(6, s.getMobile());
			pst.setInt(7, s.getId());
			pst.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static void deleteStudentById(int id)
	{
		try {
			Connection conn=StudentUtil.createConnection();
			PreparedStatement pst=conn.prepareStatement("delete from student where id=?");
			pst.setInt(1,id);
			pst.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}