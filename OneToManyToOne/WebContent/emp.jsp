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
<form name="emp" method="post" action="EmpController">
	<table>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname"></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email"></td>
		</tr>
		<tr>
			<td>Department</td>
			<td>
				<select name="dept"  >
					<option>---Select Department---</option>
					<%
						List<Dept> list=EmpDao.getAllDept();
						for(Dept d:list)
						{
					%>
					<option value="<%=d.getDid()%>"><%=d.getDname() %> - <%=d.getLocation() %></option>
					<%		
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="action" value="Insert Emp" class="btn btn-primary">
			</td>
		</tr>
	</table>
</form>

<a href="dept.jsp"><button class="btn btn-outline-dark">Add DEPT</button></a>
<a href="show.jsp"><button class="btn btn-outline-secondary">Show Data</button></a>
<a href="updateDept.jsp"><button class="btn btn-outline-dark">Update DEPT</button></a>
</body>
</html>