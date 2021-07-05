<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="Js/Validation.js">

	</script>
</head>
<body>
	<form name="LoginPage" method="post" action="">
		<table>
			<tr>
				<td>Firsts name</td>
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
				<td>Hobby</td>
				<td><input type="checkbox" name="hobby" value="reading">Reading
					<input type="checkbox" name="hobby" value="dancing">Dancing
					<input type="checkbox" name="hobby" value="singing">Singing
					<input type="checkbox" name="hobby" value="sports">Sports</td>
			</tr>
			<tr>
				<td>Education</td>
				<td><select name="education" onblur="checkEducation();">
						<option value="select">----SELECT EDUCATION----</option>
						<option value="10th">10th</option>
						<option value="12th">12th</option>
						<option value="BE">BE</option>
						<option value="ME">ME</option>
				</select></td>
				<td><span id="errorEducation"></span></td>
			</tr>
			<tr>
				<td>Resume</td>
				<td><input type="file" name="resume"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="Password" name="password"
					onblur="checkPassword();"></td>
				<td><span id="errorPassword"></span></td>
			</tr>
			<tr>
				<td>Confirm Password</td>
				<td><input type="Password" name="confirmPassword"
					onblur="checkPassword();"></td>
				<td><span id="errorConfirmPassword"></span></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					name="action" value="Insert" id="btn"></td>
			</tr>
		</table>
	</form>
</body>
</html>