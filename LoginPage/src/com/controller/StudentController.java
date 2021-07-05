package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Student;
import com.dao.StudentDao;

/**
 * Servlet implementation class StudentController
 */
@WebServlet("/StudentController")
public class StudentController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("insert"))
		{
			Student s=new Student();
			s.setFname(request.getParameter("firstName"));
			s.setLname(request.getParameter("lastName"));
			s.setAddress(request.getParameter("address"));
			s.setGender(request.getParameter("gender"));
			s.setEmail(request.getParameter("email"));
			s.setMobile(request.getParameter("mobileNumber"));
			StudentDao.insertStudent(s);
			response.sendRedirect("DataBase.jsp");
		}
		else if(action.equalsIgnoreCase("edit"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			Student s=StudentDao.getStudentById(id);
			request.setAttribute("s", s);
			request.getRequestDispatcher("update.jsp").forward(request, response);;
		}
		else if(action.equalsIgnoreCase("update"))
		{	
			Student s=new Student();
			s.setId(Integer.parseInt(request.getParameter("id")));
			s.setFname(request.getParameter("firstName"));
			s.setLname(request.getParameter("lastName"));
			s.setAddress(request.getParameter("address"));
			s.setGender(request.getParameter("gender"));
			s.setEmail(request.getParameter("email"));
			s.setMobile(request.getParameter("mobileNumber"));
			StudentDao.updateStudentData(s);
			response.sendRedirect("DataBase.jsp");
		}
		else if(action.equalsIgnoreCase("delete"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			StudentDao.deleteStudentById(id);
			response.sendRedirect("DataBase.jsp");
		}
	}
}
