<%@page import="com.dao.CartDao"%>
<%@page import="com.dao.WishlistDao"%>
<%
 String action=request.getParameter("action");
	int pid=Integer.parseInt(request.getParameter("pid"));
	int uid=Integer.parseInt(request.getParameter("uid"));
	out.print("Cart");
		CartDao.Cart(uid, pid, action);
		response.sendRedirect("Mycart.jsp");
%>