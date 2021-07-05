<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="course" method="post" action="Controller">
	<table>
		<tr>
			<td>Course</td>
			<td><input type="text" name="cname"></td>
		</tr>
				<tr>
			<td colspan="2" align="center">
				<input type="submit" name="action" value="Insert course">
			</td>
		</tr>
	</table>
</form>
</body>
</html>