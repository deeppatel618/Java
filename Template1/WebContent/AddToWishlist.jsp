<%@page import="com.dao.WishlistDao"%>
<%
 String action=request.getParameter("action");
	int pid=Integer.parseInt(request.getParameter("pid"));
	int uid=Integer.parseInt(request.getParameter("uid"));
	out.print("wishlist");
	if(action.equalsIgnoreCase("addtowishlist"))
	{
		out.print("wishlist if");
		WishlistDao.Wishlist(uid, pid, action);
		response.sendRedirect("myWishlist.jsp");
	}
	else if(action.equalsIgnoreCase("removefromwishlist"))
	{
		WishlistDao.Wishlist(uid, pid, action);
		
		response.sendRedirect("myWishlist.jsp");
	}
%>