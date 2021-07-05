<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.ContactConnection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String email = request.getParameter("val");
	if(email == null || email.trim().equals(""))
	{
		out.println("Please enter your email");
	}
	else
	{
		try{
			Connection conn = ContactConnection.createConnection();
			String sql = "select * from user where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet res = pst.executeQuery();
			if(res.next())
			{
				out.println("Email is already registered");
			}
			else
			{
				out.println("Email available for registration");
			}
		}catch(Exception e){
			out.println(e);
		}
	}
%>