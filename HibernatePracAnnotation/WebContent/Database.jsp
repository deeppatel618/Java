<%@page import="com.StudentDao.StudentDao"%>
<%@page import="com.bean.Student"%>
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
			List<Student> list=StudentDao.getallStudent();
		%>
	<table border="1" width="100%" cellspacing="2px" cellpadding="5px">
		<tr>
			<th>ID</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Password</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<%
			for (Student s : list)
			{
		%>
		<tr>
			<td><%=s.getId()%></td>
			<td><%=s.getFname()%></td>
			<td><%=s.getLname()%></td>
			<td><%=s.getEmail()%></td>
				<td><%=s.getPhone()%></td>
			<td><%=s.getPassword()%></td>
			<td>
				<form name="edit" method="post" action="StudentController">
					<input type="hidden" name="id" value="<%=s.getId()%>">
					<input type="submit" name="action" value="Edit" class="btn btn-outline-success">

				</form>
			</td>
			<td>
				<form name="delete" method="post" action="StudentController">
					<input type="hidden" name="id" value="<%=s.getId()%>">
					<input type="submit" name="action" value="Delete" class="btn btn-outline-danger">
				</form>
			</td>
		</tr>
		<%
		   }
		%>
	</table>
	<a href="index.jsp">Insert link</a>
</body>
</html>