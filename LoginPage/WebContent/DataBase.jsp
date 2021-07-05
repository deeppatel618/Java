<%@page import="com.dao.StudentDao"%>
<%@page import="com.bean.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
</head>
<body>
	<%
			ArrayList<Student> list = StudentDao.getAllStudent();
		%>
	<table border="1" width="100%" cellspacing="2px" cellpadding="5px">
		<tr>
			<th>ID</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Address</th>
			<th>Gender</th>
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
			<td><%=s.getMobile()%></td>
			<td><%=s.getAddress()%></td>
			<td><%=s.getGender()%></td>
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