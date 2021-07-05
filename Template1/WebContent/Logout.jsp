<%
session.removeAttribute("u");
session.invalidate();
response.sendRedirect("index.jsp");
%>