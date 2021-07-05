<%@page import="com.dao.EmpDao"%>
<%@page import="com.bean.Emp"%>

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
<%
			List<Emp> list=EmpDao.getallEmp();
		%>
	<table border="1" width="100%" cellspacing="2px" cellpadding="5px">
		<tr>
			<th>ID</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Dept</th>
			<th>Username</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<%
			for (Emp s : list)
			{
		%>
		<tr>
			<td><%=s.getEid()%></td>
			<td><%=s.getFname()%></td>
			<td><%=s.getLname()%></td>
			<td><%=s.getEinfo().getEmail()%></td>
			<td><%=s.getEinfo().getDept()%></td>
			<td><%=s.getEinfo().getUname()%></td>
			<td>
				<form name="edit" method="post" action="EmpController">
					<input type="hidden" name="id" value="<%=s.getEid()%>">
					<input type="submit" name="action" value="Edit" class="btn btn-outline-success">

				</form>
			</td>
			<td>
				<form name="delete" method="post" action="EmpController">
					<input type="hidden" name="id" value="<%=s.getEid()%>">
					<input type="submit" name="action" value="Delete" class="btn btn-outline-danger">
				</form>
			</td>
		</tr>
		<%
		   }
		%>
	</table>
	<a href="Form.jsp">Insert link</a>
</body>
</html>