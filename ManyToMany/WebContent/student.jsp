<%@page import="com.bean.Course"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.Dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="student" method="post" action="Controller">
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
			<td>Course</td>
			<td>
				<select name="course1"  >
					<option>---Select Course---</option>
					<%
						List<Course> list=Dao.getAllCourse();
						for(Course d:list)
						{
					%>
					<option value="<%=d.getCid()%>"><%=d.getCourseName() %></option>
					<%		
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>Course</td>
			<td>
				<select name="course2"  >
					<option>---Select Course---</option>
					<%
						List<Course> list2=Dao.getAllCourse();
						for(Course d:list2)
						{
					%>
					<option value="<%=d.getCid()%>"><%=d.getCourseName() %></option>
					<%		
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="action" value="Insert Student">
			</td>
		</tr>
	</table>
</form>
</body>
</html>