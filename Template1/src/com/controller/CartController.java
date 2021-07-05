package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.CartData;
import com.bean.ProductData;
import com.dao.CartDao;
import com.dao.ProductDao;


@WebServlet("/CartController")
public class CartController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qty=Integer.parseInt(request.getParameter("qty"));
		int uid=Integer.parseInt(request.getParameter("uid"));
		int pid=Integer.parseInt(request.getParameter("pid"));
		if(qty!=0) {
		ProductData p=ProductDao.getProductBypid(pid);
		int totalPrice=qty*p.getproductPrice();
		CartData c=new CartData();
		c.setPid(pid);
		c.setQty(qty);
		c.setUid(uid);
		c.setTotalPrice(totalPrice);
		CartDao.updatecart(c);
		response.sendRedirect("Mycart.jsp");
		}
		else {
			CartDao.Cart(uid, pid, "removefromcart");
			response.sendRedirect("Mycart.jsp");
		}
	}

}
