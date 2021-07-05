package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Dept;
import com.bean.Emp;
import com.dao.EmpDao;

@WebServlet("/EmpController")
public class EmpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("EmpController Called");
		String action=request.getParameter("action");
		
		if(action.equalsIgnoreCase("insert dept"))
		{
			System.out.println("insert dept called");
			Dept d=new Dept();
			d.setDname(request.getParameter("dname"));
			d.setLocation(request.getParameter("location"));
			EmpDao.insertDept(d);
			System.out.println("Done");
			response.sendRedirect("dept.jsp");
		}
		else if(action.equalsIgnoreCase("insert emp"))
		{
			Emp e=new Emp();
			e.setFname(request.getParameter("fname"));
			e.setLname(request.getParameter("lname"));
			e.setEmail(request.getParameter("email"));
			
			int did=Integer.parseInt(request.getParameter("dept"));
			Dept d=EmpDao.getDeptByDid(did);
			e.setDept(d);
			
			EmpDao.insertEmp(e);
			response.sendRedirect("show.jsp");
		}
		else if(action.equalsIgnoreCase("delete"))
		{
			int eid=Integer.parseInt(request.getParameter("eid"));
			EmpDao.deleteEmp(eid);
			response.sendRedirect("show.jsp");
		}
		else if(action.equalsIgnoreCase("Edit"))
		{
			int eid=Integer.parseInt(request.getParameter("eid"));
			Emp e=EmpDao.getById(eid);
			request.setAttribute("e", e);
			request.getRequestDispatcher("Update.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("Update Emp"))
		{
			Emp e=new Emp();
			int eid=Integer.parseInt(request.getParameter("eid"));
			e.setFname(request.getParameter("fname"));
			e.setLname(request.getParameter("lname"));
			e.setEmail(request.getParameter("email"));
			e.setEid(eid);
			
			if(!(request.getParameter("dept").equalsIgnoreCase("")))
			{
				int newDid=Integer.parseInt(request.getParameter("dept"));
				Dept d=EmpDao.getDeptByDid(newDid);
				e.setDept(d);
				EmpDao.insertEmp(e);
			}
			else {
				int did=Integer.parseInt(request.getParameter("deptid"));
				Dept d=EmpDao.getDeptByDid(did);
				e.setDept(d);
				EmpDao.insertEmp(e);
			}
				System.out.println(request.getParameter("dept"));
			response.sendRedirect("show.jsp");
		
		}
		else if(action.equalsIgnoreCase("deleteDept"))
		{
			int did=Integer.parseInt(request.getParameter("did"));
			EmpDao.deleteDept(did);
			response.sendRedirect("ListDept.jsp");
		}
		else if(action.equalsIgnoreCase("EditDept"))
		{
			int did=Integer.parseInt(request.getParameter("did"));
			Dept d=EmpDao.getDeptByDid(did);
			request.setAttribute("d", d);
			request.getRequestDispatcher("updateDept.jsp").forward(request, response);
		}
		else if(action.equalsIgnoreCase("Update Dept"))
		{
			Dept d=new Dept();
			d.setDid(Integer.parseInt(request.getParameter("did")));
			d.setDname(request.getParameter("dname"));
			d.setLocation(request.getParameter("location"));
			EmpDao.insertDept(d);
			response.sendRedirect("ListDept.jsp");
		}
	}

}
