<%@page import="com.dao.CartDao"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.ContactConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	int quantity = Integer.parseInt(request.getParameter("qty"));
	int uid = Integer.parseInt(request.getParameter("uid"));
	int pid = Integer.parseInt(request.getParameter("pid"));
	int price = Integer.parseInt(request.getParameter("price"));
	int tprice = Integer.parseInt(request.getParameter("tprice"));
	int netPriceChange = (quantity * price) - tprice;
	if (quantity != 0) {
		try {
			Connection conn = ContactConnection.createConnection();
			String sql = "update cart set qty=?, totalPrice=? where uid=? and pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, quantity);
			pst.setInt(2, (quantity * price));
			pst.setInt(3, uid);
			pst.setInt(4, pid);
			pst.executeUpdate();
			out.println(netPriceChange);
		} catch (Exception e) {
			out.println(e);
		}
	}
	else if(quantity==0)
	{
		CartDao.Cart(uid, pid, "removefromcart");
		out.println(netPriceChange);
	}
%>