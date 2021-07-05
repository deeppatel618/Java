<%@page import="com.dao.EmpDao"%>
<%@page import="com.bean.Dept"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	integrity="undefined" crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1" cellpadding="7px" cellspacing="7px" width="100%">
		<tr>
			<td>Department Id</td>
			<td>Department Name</td>
			<td>Location</td>
			<td>EDIT</td>
		<td>DELETE</td>
			
		</tr>
		<%
			List<Dept> list=EmpDao.getAllDept();
		for(Dept d:list)
		{
		%>
		<tr>
			<td><%=d.getDid() %></td>
			<td><%=d.getDname() %></td>
			<td><%=d.getLocation() %></td>
			<td>
			<form name="edit" method="post" action="EmpController">
				<input type="hidden" name="did" value="<%=d.getDid()%>">
				<input type="submit" name="action" value="EditDept" class="btn btn-outline-info">
			</form>
		</td>
		<td>
			<form name="delete" method="post" action="EmpController">
				<input type="hidden" name="did" value="<%=d.getDid()%>">
				<input type="submit" name="action" value="deleteDept" class="btn btn-outline-danger">
			</form>
		</td>
		</tr>
		
		<%} %>
	</table>

<a href="show.jsp"><buttonclass="btn btn-outline-dark">Show Emp Data</button></a>
<a href="emp.jsp"><button class="btn btn-outline-secondary">Add EMP</button></a>
<a href="dept.jsp"><button class="btn btn-outline-dark">Add DEPT</button></a>
</body>
</html>