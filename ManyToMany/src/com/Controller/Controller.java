package com.Controller;

import java.io.IOException;
import java.util.Collection;
import java.util.HashSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.Dao;
import com.bean.Course;
import com.bean.Student;


@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("Insert course"))
		{
			Course c=new Course();
			c.setCourseName(request.getParameter("cname"));
			Dao.addCourse(c);
		}
		 if(action.equalsIgnoreCase("Insert Student"))
		{
			Student s=new Student();
			s.setFname(request.getParameter("fname"));
			s.setLname(request.getParameter("lname"));
			
			Collection<Course> col= new HashSet<Course>();
			col.add(Dao.getCourseById(Integer.parseInt(request.getParameter("course1"))));
			col.add(Dao.getCourseById(Integer.parseInt(request.getParameter("course2"))));
			s.setCourses(col);
			Dao.addStudent(s);
		}
		 if(action.equalsIgnoreCase("delete student"))
		 {
			 int sid=Integer.parseInt(request.getParameter("sid"));
			 Dao.deleteStudentBySid(sid);
			 response.sendRedirect("Show.jsp");
		 }
		 if(action.equalsIgnoreCase("edit student"))
		 {
			 int sid=Integer.parseInt(request.getParameter("sid"));
			 Student s=Dao.getStudentById(sid);
			 request.setAttribute("s", s);
			 request.getRequestDispatcher("edit.jsp").forward(request, response);
		 }
		 if(action.equalsIgnoreCase("Update Student"))
		 {
			 	Student s=new Student();
				s.setFname(request.getParameter("fname"));
				s.setLname(request.getParameter("lname"));
				s.setSid(Integer.parseInt(request.getParameter("sid")));
				 Student ds=Dao.getStudentById(Integer.parseInt(request.getParameter("sid")));
				 s.setCourses(ds.getCourses());
				Dao.addStudent(s);
				System.out.println(Integer.parseInt(request.getParameter("cid1")));
				System.out.println(Integer.parseInt(request.getParameter("cid2")));
				 	
				
		 }
	}

}
