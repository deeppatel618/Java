<%@page import="com.dao.EmpDao"%>
<%@page import="com.bean.Emp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	integrity="undefined" crossorigin="anonymous">
<meta charset="ISO-8859-1">

<title>Hibernate Form</title>
</head>
<body>
<%     Emp s=(Emp)request.getAttribute("emp"); %>
	<form style="height: 1000px; width: 500px;" method="post" action="EmpController">
		<div class="form-group">
			<label>First Name</label> <input type="text" class="form-control"
				id="fname" aria-describedby="emailHelp"
				placeholder="Enter First Name" name="fname" value="<%=s.getFname()%>">
		</div>
		<div class="form-group">
			<label>Last Name</label> <input type="text" class="form-control"
				id="lname" aria-describedby="emailHelp"
				placeholder="Enter Last Name" name="lname" value="<%=s.getLname()%>">
		</div>
		<div class="form-group">
			<label>User name</label> <input type="text" class="form-control"
				id="phoneNumber" aria-describedby="emailHelp"
				placeholder="Enter Uname" name="uname" value="<%=s.getEinfo().getUname()%>">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Email address</label> <input
				type="email" class="form-control" name="email" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder="Enter email" value="<%=s.getEinfo().getEmail()%>"> <small
				id="emailHelp" class="form-text text-muted">We'll never
				share your email with anyone else.</small>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Dept</label> <input
				type="text" class="form-control" name="dept" id="exampleInputPassword1"
				placeholder="Dept" value="<%=s.getEinfo().getDept()%>">
		</div>
		<input type="hidden" name="id" value="<%= s.getEid() %>">
		<br>
		<button type="submit" class="btn btn-primary" name="action" value="update">update</button>
	</form>
</body>
</html>