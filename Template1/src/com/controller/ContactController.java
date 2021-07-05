package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ContactData;
import com.dao.ContactDao;

/**
 * Servlet implementation class ContactController
 */
@WebServlet("/ContactController")
public class ContactController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String data=request.getParameter("action");
		System.out.println(data);
		if(data.equalsIgnoreCase("Insert"))
		{
			ContactData c=new ContactData();
			c.setName(request.getParameter("name"));
			c.setSubject(request.getParameter("subject"));
			c.setEmail(request.getParameter("email"));
			c.setPhone(request.getParameter("phone"));
			c.setMessage(request.getParameter("message"));
			ContactDao.insertContact(c);
		}
	}

}
