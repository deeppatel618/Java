package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.ContactData;
import com.util.ContactConnection;

public class ContactDao {
	public static void insertContact(ContactData c)
	{
		try {
			Connection conn=ContactConnection.createConnection();
			PreparedStatement pst=conn.prepareStatement("insert into contact(name,subject,email,phone,message) values (?,?,?,?,?)");
			pst.setString(1, c.getName());
			pst.setString(2, c.getSubject());
			pst.setString(3, c.getEmail());
			pst.setString(4, c.getPhone());
			pst.setString(5, c.getMessage());
			pst.executeUpdate();
			System.out.println("Done");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
