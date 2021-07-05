<%@page import="com.bean.Dept"%>
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
<form name="dept" method="post" action="EmpController">
<%Dept d=(Dept)request.getAttribute("d"); %>
	<table>
		<tr>
			<td>Department Name</td>
			<td><input type="text" name="dname" value="<%=d.getDname()%>"></td>
		</tr>
		<tr>
			<td>Location</td>
			<td><input type="text" name="location" value="<%=d.getLocation()%>"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="hidden" name="did" value="<%=d.getDid()%>">
				<input type="submit" name="action" value="Update Dept">
			</td>
		</tr>
	</table>
</form>

</body>
</html>