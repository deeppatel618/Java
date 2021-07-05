<%@page import="com.bean.Emp"%>
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
	<%
		Emp e = (Emp) request.getAttribute("e");
	%>
	<form name="emp" method="post" action="EmpController">
		<table>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="fname" value="<%=e.getFname()%>"></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lname" value="<%=e.getLname()%>"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="<%=e.getEmail()%>"></td>
			</tr>
			<tr>
				<td>Current Department</td>
				<td><input type="text" name="email"
					value="<%=e.getDept().getDname()%>-<%=e.getDept().getLocation()%>" readonly="readonly" style=" border: 2px solid red;background-color: red;"></td>
				</td>
			</tr>
			<tr>
			<td>
				<input type="button" name="button" id="button" value="Ava Dept" onclick="ShowDept();" class="btn btn-primary">
				</td>
			</tr>
			<tr id="deptAvailable" style="display: none;">
				<td>Department</td>
				<td><select name="dept">
						<option value="">---Select Department---</option>
						<%
							List<Dept> list = EmpDao.getDept(e.getDept().getDid());
							for (Dept d : list) {
						%>
						<option value="<%=d.getDid()%>"><%=d.getDname()%> -
							<%=d.getLocation()%></option>
						<%
							}
						%>
				</select></td>
			</tr>


			
			<tr>
				<td colspan="2" align="center"></td>
			</tr>
		</table>

		<input type="hidden" name="eid" value="<%=e.getEid()%>"> <input
			type="hidden" name="deptid" value="<%=e.getDept().getDid()%>">
			<br><br>
		<input type="submit" name="action" value="Update Emp" class="btn btn-primary">
	</form>

	<script>
		function ShowDept() {
			if(document.emp.button.value=="Hide department"){
			  document.getElementById("deptAvailable").style.display = 'none';
			  document.emp.button.value = "Ava Dept";}
			  else if(document.emp.button.value=="Ava Dept"){
				  document.getElementById("deptAvailable").style.display = '';
				  document.emp.button.value = "Hide department";
			  }
		}
	</script>
</body>
</html>