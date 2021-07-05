<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MainPage</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
</head>
<body>
<form name="LoginPage" method="post" action="StudentController">
		<table>
			<tr>
				<td>First name</td>
				<td><input type="text" name="firstName" onblur="checkFname();"></td>
				<td><span id="errorFname"></span></td>
			</tr>
			<tr>
				<td>Last name</td>
				<td><input type="text" name="lastName" onblur="checkLname();"></td>
				<td><span id="errorLname"></span></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" onblur="checkEmail();"></td>
				<td><span id="errorEmail"></span></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobileNumber"
					onblur="checkNumber();"></td>
				<td><span id="errorNumber"></span></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><textarea rows=5 cols=21 name="address"></textarea></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><input type="radio" name="gender" value="male">Male
					<input type="radio" name="gender" value="Female">Female</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center"><input type="submit"
					name="action" value="Insert" id="btn" class="btn btn-outline-primary"></td>
			</tr>
		</table>
	</form>
<a href="DataBase.jsp">Database link</a>
</body>
</html>