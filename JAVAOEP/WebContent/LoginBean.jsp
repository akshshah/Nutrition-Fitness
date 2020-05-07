<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Database Search</title>
</head>
<body>

<jsp:useBean id="db" scope="request" class="OEP.User">

	<jsp:setProperty name="db" property="username" value="<%=request.getParameter("username")%>"/>
	<jsp:setProperty name="db" property="password" value="<%=request.getParameter("password")%>"/>

</jsp:useBean>
<jsp:forward page="hello">
  <jsp:param name="username" value="<%= db.getUsername()%>" />
  <jsp:param name="password" value="<%= db.getPassword()%>" />
</jsp:forward> 

</body>
</html>