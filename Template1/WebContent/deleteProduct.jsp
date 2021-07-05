<%@page import="java.io.File"%>
<%@page import="com.bean.ProductData"%>
<%@page import="com.dao.ProductDao"%>
<%
ProductData p=ProductDao.getProductBypid(Integer.parseInt(request.getParameter("pid")));
File filesaveDirDEL=new File("D:\\Java\\Template1\\WebContent\\images\\ProductImages"+File.separator+p.getProductImage());
filesaveDirDEL.delete();
ProductDao.deleteProductByPid(Integer.parseInt(request.getParameter("pid")));
response.sendRedirect("viewProduct.jsp");
%>