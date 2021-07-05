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
<table border="1" cellpadding="7px" cellspacing="7px" width="100%">
	<tr>
		<td>EID</td>
		<td>FNAME</td>
		<td>LNAME</td>
		<td>EMAIL</td>
		<td>DID</td>
		<td>DEPARTMENT</td>
		<td>LOCATION</td>
		<td>EDIT</td>
		<td>DELETE</td>
	</tr>
	<%
		List<Emp> list=EmpDao.getAllEmp();
		for(Emp e:list)
		{
	%>
	<tr>
		<td><%=e.getEid() %></td>
		<td><%=e.getFname() %></td>
		<td><%=e.getLname() %></td>
		<td><%=e.getEmail() %></td>
		<td><%=e.getDept().getDid() %></td>
		<td><%=e.getDept().getDname() %></td>
		<td><%=e.getDept().getLocation() %></td>
		<td>
			<form name="edit" method="post" action="EmpController">
				<input type="hidden" name="eid" value="<%=e.getEid()%>">
				<input type="submit" name="action" value="Edit" class="btn btn-outline-info">
			</form>
		</td>
		<td>
			<form name="delete" method="post" action="EmpController">
				<input type="hidden" name="eid" value="<%=e.getEid()%>">
				<input type="submit" name="action" value="delete" class="btn btn-outline-danger">
			</form>
		</td>
	</tr>
	<%		
		}
	%>
</table>

<br><br><br>
<a href="dept.jsp"><button class="btn btn-outline-dark">Add DEPT</button></a>
<a href="emp.jsp"><button class="btn btn-outline-secondary">Add EMP</button></a>
<a href="ListDept.jsp"><button class="btn btn-outline-dark">Update DEPT</button></a>
</body>
</html>