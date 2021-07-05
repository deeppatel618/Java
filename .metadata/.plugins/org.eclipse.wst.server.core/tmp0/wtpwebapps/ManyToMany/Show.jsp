<%@page import="java.util.Collection"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.bean.Course"%>
<%@page import="com.Dao.Dao"%>
<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show</title>
</head>
<body>
	<table border="1" cellpadding="7px" cellspacing="7px" width="100%">
		<tr>
			<td>SID</td>
			<td>FNAME</td>
			<td>LNAME</td>
			<td>Cid</td>
			<td>Cname</td>
			<td>Cname</td>
			<td>EDIT</td>
			<td>DELETE</td>
		</tr>
		<%
			List<Student> list = Dao.getAllStudent();
			for (Student e : list) {
		%>
		<tr>
			<td><%=e.getSid()%></td>
			<td><%=e.getFname()%></td>
			<td><%=e.getLname()%></td>
			<td><%=e.getCourses().iterator().next().getCid()%></td>
			<%
				
					for (Course c : e.getCourses()) {
			%>
			<td><%=c.getCourseName()%></td>
			<%
				}
			%>
			<td>
			<form name="edit" method="post" action="Controller">
				<input type="hidden" name="sid" value="<%=e.getSid()%>"> <input
					type="submit" name="action" value="Edit student"
					class="btn btn-outline-info">
			</form>
			</td>
			<td>
				<form name="delete" method="post" action="Controller">
					<input type="hidden" name="sid" value="<%=e.getSid()%>"> <input
						type="submit" name="action" value="delete student"
						class="btn btn-outline-danger">
				</form>
			</td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>