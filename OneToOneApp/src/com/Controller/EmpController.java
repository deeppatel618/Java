package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Emp;
import com.bean.EmpInfo;
import com.dao.EmpDao;


@WebServlet("/EmpController")
public class EmpController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("insert"))
		{
			EmpInfo ei=new EmpInfo();
			ei.setUname(request.getParameter("uname"));
			ei.setDept(request.getParameter("dept"));
			ei.setEmail(request.getParameter("email"));
			EmpDao.insertEmpInfo(ei);
			Emp e=new Emp();
			e.setFname(request.getParameter("fname"));
			e.setLname(request.getParameter("lname"));
			e.setEinfo(ei);
			EmpDao.insertEmp(e);
			response.sendRedirect("Database.jsp");
		}
		if(action.equalsIgnoreCase("Edit"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			Emp e=EmpDao.getEmpById(id);
			request.setAttribute("emp", e);
			request.getRequestDispatcher("Update.jsp").forward(request, response);
		}
		if(action.equalsIgnoreCase("Delete"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			EmpDao.deleteEmpById(id);
			response.sendRedirect("Database.jsp");
			
			
		}
		if(action.equalsIgnoreCase("update"))
		{
			EmpInfo ei=new EmpInfo();
			ei.setUname(request.getParameter("uname"));
			ei.setDept(request.getParameter("dept"));
			ei.setEmail(request.getParameter("email"));
			EmpDao.insertEmpInfo(ei);
			Emp e=new Emp();
			e.setEid(Integer.parseInt(request.getParameter("id")));
			e.setFname(request.getParameter("fname"));
			e.setLname(request.getParameter("lname"));
			e.setEinfo(ei);
			EmpDao.insertEmp(e);
			response.sendRedirect("Database.jsp");
		}
	}

}
