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
	<form style="height: 1000px; width: 500px;" method="post" action="EmpController">
		<div class="form-group">
			<label>First Name</label> <input type="text" class="form-control"
				id="fname" aria-describedby="emailHelp"
				placeholder="Enter First Name" name="fname">
	
			<label>Last Name</label> <input type="text" class="form-control"
				id="lname" aria-describedby="emailHelp"
				placeholder="Enter Last Name" name="lname">
		</div>
		<div class="form-group">
			<label>User name</label> <input type="text" class="form-control"
				id="phoneNumber" aria-describedby="emailHelp"
				placeholder="Enter User name" name="uname">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Email address</label> <input
				type="email" class="form-control" name="email" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder="Enter email"> <small
				id="emailHelp" class="form-text text-muted">We'll never
				share your email with anyone else.</small>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Department</label> <input
				type="text" class="form-control" name="dept" id="exampleInputPassword1"
				placeholder="DEPT">
		</div>
		<br>
		<button type="submit" class="btn btn-primary" name="action" value="insert">Submit</button>
	</form>
</body>
</html>