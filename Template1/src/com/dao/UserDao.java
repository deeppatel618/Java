package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.concurrent.ExecutionException;

import com.bean.UserData;
import com.util.ContactConnection;

public class UserDao {
	public static void SignupUser(UserData u)
	{
		Connection conn=ContactConnection.createConnection();
		try {
			PreparedStatement pst=conn.prepareStatement("insert into user(fname,lname,email,phone,password,confirmpassword,address,user) values (?,?,?,?,?,?,?,?)");
			pst.setString(1, u.getFname());
			pst.setString(2, u.getLname());
			pst.setString(3, u.getEmail());
			pst.setString(4, u.getPhone());
			pst.setString(5, u.getPassword());
			pst.setString(6, u.getCpassword());
			pst.setString(7, u.getAddress());
			pst.setString(8, u.getUser());
			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static boolean checkEmail(String email)
	{
		boolean flag=false;
		Connection conn=ContactConnection.createConnection();

		try {
			System.out.println("checking email");
			PreparedStatement pst=conn.prepareStatement("select * from user where email=?");
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			System.out.println("checking email");
			if(rs.next())
			{
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		return flag;
	}
	public static UserData Login(String email,String password)
	{
		UserData u=null;
	
		try
		{
			Connection conn=ContactConnection.createConnection();
			PreparedStatement p=conn.prepareStatement("select * from user where email=? and password=?");
			p.setString(1, email);
			p.setString(2, password);
			ResultSet r= p.executeQuery();
			if(r.next())
			{
				u=new UserData();
				u.setId(r.getInt("id"));
				u.setFname(r.getString("fname"));
				u.setLname(r.getString("lname"));
				u.setPhone(r.getString("phone"));
				u.setAddress(r.getString("address"));
				u.setEmail(r.getString("email"));
				u.setPassword(r.getString("password"));
				u.setCpassword(r.getString("password"));
				u.setUser(r.getString("User"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return u;
	}
	public static void changePassword(String email,String password)
	{
		try
		{
			Connection conn=ContactConnection.createConnection();
			PreparedStatement p =conn.prepareStatement("update user set password=?,confirmpassword=? where email=?");
			p.setString(1, password);
			p.setString(2, password);
			p.setString(3,email);
			p.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static void changestatus(String email)
	{
		try 
		{
			Connection conn=ContactConnection.createConnection();
			PreparedStatement p=conn.prepareStatement("update user set status=? where email=?");
			p.setString(1, "active");
			p.setString(2,email);
			p.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static void updateInfo(UserData u)
	{
		try
		{
			Connection conn=ContactConnection.createConnection();
			PreparedStatement p=conn.prepareStatement("update user set fname=?,lname=?,email=?,phone=?,address=? where id=?");
			p.setString(1, u.getFname());
			p.setString(2, u.getLname());
			p.setString(3, u.getEmail());
			p.setString(4, u.getPhone());
			p.setString(5, u.getAddress());
			p.setInt(6, u.getId());
			p.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
