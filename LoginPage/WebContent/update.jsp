<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MainPage</title>
</head>
<body>
	<%
		Student s = (Student) request.getAttribute("s");
	%>
	<form name="LoginPage" method="post" action="StudentController">
		<table>
			<tr>
				<td>First name</td>
				<td><input type="text" name="firstName" onblur="checkFname();"
					value="<%=s.getFname()%>"></td>
				<td><span id="errorFname"></span></td>
			</tr>
			<tr>
				<td>Last name</td>
				<td><input type="text" name="lastName" onblur="checkLname();"
					value="<%=s.getLname()%>"></td>
				<td><span id="errorLname"></span></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" onblur="checkEmail();"
					value="<%=s.getEmail()%>"></td>
				<td><span id="errorEmail"></span></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobileNumber"
					onblur="checkNumber();" value="<%=s.getMobile()%>"></td>
				<td><span id="errorNumber"></span></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><textarea rows=5 cols=21 name="address"><%=s.getAddress()%></textarea></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td>
					<%
						try {
							if (s.getGender().equals("male")) {
					%><input type="radio" name="gender" value="male" checked="checked">Male
					<input type="radio" name="gender" value="Female">Female <%
						}

							else if (s.getGender().equalsIgnoreCase("female")) {
					%><input type="radio" name="gender" value="male">Male <input
					type="radio" name="gender" value="Female" checked="checked">Female
					<%
						} else {
					%> <input type="radio" name="gender" value="male">Male <input
					type="radio" name="gender" value="Female">Female <%
 	}
 	} catch (Exception e) {
 %>
					<input type="radio" name="gender" value="male">Male <input
					type="radio" name="gender" value="Female">Female <%
						}
					%>
				</td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="hidden" name="id" value="<%=s.getId()%>"><input type="submit"
					name="action" value="Update" id="btn"></td>
			</tr>
		</table>
	</form>
	<a href="DataBase.jsp">Database link</a>
</body>
</html>