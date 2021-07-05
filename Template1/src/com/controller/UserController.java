package com.controller;

import java.io.IOException;
import java.util.Random;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.UserData;
import com.dao.UserDao;
import com.services.Services;


@WebServlet("/UserController")
public class UserController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("Create"))
		{
			boolean flag=UserDao.checkEmail(request.getParameter("email"));
			if(flag)
			{
				request.setAttribute("msg", "Email Already registered");
				request.getRequestDispatcher("Signup.jsp").forward(request, response);
			}
			else if(!(request.getParameter("password")).equals(request.getParameter("cpassword")))
			{
				request.setAttribute("msg", "Both password are different");
				request.getRequestDispatcher("Signup.jsp").forward(request, response);
			}
			else
			{
				UserData c= new UserData();
				c.setFname(request.getParameter("fname"));
				c.setLname(request.getParameter("lname"));
				c.setEmail(request.getParameter("email"));
				c.setPhone(request.getParameter("phone"));
				c.setAddress(request.getParameter("address"));
				c.setPassword(request.getParameter("password"));
				c.setCpassword(request.getParameter("cpassword"));
				c.setUser(request.getParameter("user"));
				UserDao.SignupUser(c);
				request.setAttribute("msg", "Account created.Enter OTP sended to your emailid");
				Random rn=new Random();
				int minRange=1000,maxRange=9999;
				int OTP=rn.nextInt(maxRange-minRange)+minRange;
				Services.sendMail(request.getParameter("email"),OTP);
				request.setAttribute("email", request.getParameter("email"));
				request.setAttribute("OTP", OTP);
				request.setAttribute("type", "signupProcess");
				request.getRequestDispatcher("OTP.jsp").forward(request, response);
			}
		}
		if(action.equalsIgnoreCase("login"))
		{
			if(UserDao.checkEmail(request.getParameter("email")))
			{
				UserData u=UserDao.Login(request.getParameter("email"), request.getParameter("password"));
				if(u!=null && u.getUser().equalsIgnoreCase("customer"))
				{
					HttpSession session1=request.getSession();
		 			session1.setAttribute("u", u);
					System.out.println("Login successful with id = "+session1.getId());
					request.setAttribute("LoginStatus", "login");
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				else if(u!=null && u.getUser().equalsIgnoreCase("seller"))
				{
					HttpSession session1=request.getSession();
					session1.setAttribute("u", u);
					System.out.println("Login successful with id = "+session1.getId());
					request.setAttribute("LoginStatus", "login");
					request.getRequestDispatcher("sellerIndex.jsp").forward(request, response);
				}
				else 
				{
					request.setAttribute("msg", "EmailId OR Password incorrect");
					request.getRequestDispatcher("Login.jsp").forward(request, response);
				}
			}
			
			else
			{
				request.setAttribute("msg", "EmailId not registered");
				request.getRequestDispatcher("Login.jsp").forward(request, response);
			}
		}
		if(action.equalsIgnoreCase("getOTP"))
		{
			String email=request.getParameter("email");
			if(UserDao.checkEmail(email))
			{	
				Random rn=new Random();
				int minRange=1000,maxRange=9999;
				int OTP=rn.nextInt(maxRange-minRange)+minRange;
				Services.sendMail(email,OTP);
				request.setAttribute("email", email);
				request.setAttribute("type", "forgotProcess");
				request.setAttribute("OTP", OTP);
				request.getRequestDispatcher("OTP.jsp").forward(request, response);
			}
			else
			{	
				request.setAttribute("msg", "EmailId not registered");
				request.getRequestDispatcher("Forgot.jsp").forward(request, response);
			}
		}
		if(action.equalsIgnoreCase("verify"))
		{
			int OTP=Integer.parseInt(request.getParameter("OTP"));
			int userOTP=Integer.parseInt(request.getParameter("userOTP"));	
			if(OTP==userOTP)
			{	
				if(request.getParameter("redirect").equalsIgnoreCase("forgotProcess"))
				{
				System.out.println("Verified");
				request.setAttribute("email", request.getParameter("email"));
				request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
				}
				else if(request.getParameter("redirect").equalsIgnoreCase("signupProcess"))
				{	
					System.out.println("Changing status");
					UserDao.changestatus(request.getParameter("email"));
					request.setAttribute("msg", "Account activated");
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
			}
			System.out.println(request.getParameter("email"));
			System.out.println(request.getParameter("OTP"));
			System.out.println(request.getParameter("userOTP"));
		}
		if(action.equalsIgnoreCase("Change password"))
		{
			String email=request.getParameter("email");
			String npassword=request.getParameter("npassword");
			String cnpassword=request.getParameter("cnpassword");
			if(npassword.equals(cnpassword))
			{
				UserDao.changePassword(email, npassword);
				request.setAttribute("msg","Your password has been changed succesfully");
				request.getRequestDispatcher("Login.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("msg","Both the password enterd are different");
				request.getRequestDispatcher("ChangePassword.jsp").forward(request, response);
			}
		}
		if(action.equalsIgnoreCase("update"))
		{
			UserData u=new UserData();
			u.setId(Integer.parseInt(request.getParameter("id")));
			u.setFname(request.getParameter("fname"));
			u.setLname(request.getParameter("lname"));
			u.setEmail(request.getParameter("email"));
			u.setPhone(request.getParameter("phone"));
			u.setAddress(request.getParameter("address"));
			u.setPassword(request.getParameter("password"));
			u.setCpassword(request.getParameter("cpassword"));
			UserDao.updateInfo(u);
			HttpSession session1=request.getSession();
			session1.setAttribute("u", u);
			request.setAttribute("LoginStatus", "login");
			System.out.println("Update successful with id = "+session1.getId());
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
