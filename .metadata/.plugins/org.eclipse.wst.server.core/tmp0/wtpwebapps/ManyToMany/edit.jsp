<%@page import="java.util.List"%>


<%@page import="com.bean.Course"%>
<%@page import="com.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Student s=(Student)request.getAttribute("s");
%>
<b><%=s%></b>

<form name="student" method="post" action="Controller">
	<table>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname" value="<%=s.getFname()%>"></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname" value="<%=s.getLname()%>"></td>
		</tr>
		<%	int l[]=new int[5];
			int i=1;
					for (Course c : s.getCourses()) {
						l[i]=c.getCid();
						i++;
			%>
		<tr>
			<td>Course</td>
			
			<td><input type="text" readonly="readonly" value="<%=c.getCourseName()%>" style="background-color :blue; "></td>
		</tr>
		<%
		}%>
		
			<td colspan="2" align="center">
				<input type="hidden" name="sid" value="<%=s.getSid()%>">
					<input type="hidden" name="cid1" value="<%=l[1]%>">
						<input type="hidden" name="cid2" value="<%=l[2]%>">
				<input type="submit" name="action" value="Update Student">
			</td>
		</tr>
	</table>
</form>
<script>
		function ShowCourse1() {
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