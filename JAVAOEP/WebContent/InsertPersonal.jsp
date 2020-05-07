<%@page import="OEP.Completion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="OEP.Personal"%>
<%@ page import="OEP.DatabaseOperations"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
   String name = request.getParameter("username");
	int height = Integer.parseInt(request.getParameter("height"));
	int weight = Integer.parseInt(request.getParameter("weight"));
	int age = Integer.parseInt(request.getParameter("age"));
	float BMI = Float.parseFloat(request.getParameter("BMI"));
	String goal = request.getParameter("goal");
   System.out.println(goal);
   
   DatabaseOperations dataOp = new DatabaseOperations();
   Personal p = new Personal();
   
   p.setUsername(name);
   p.setHeight(height);
   p.setWeight(weight);
   p.setAge(age);
   p.setBMI(BMI);
   p.setGoal(goal);
   
   int x = dataOp.insertPersonalInfo(p);
   System.out.println(x);
   if(x > 0){
	   
	   Completion com = new Completion(name,0,0,0.0,0.0);
	   int status = dataOp.insertStatus(com);
	   if(status>0){
		   request.setAttribute("username", name);
		   request.setAttribute("workout", com.getPerWorkout());
		   request.setAttribute("nutrition", com.getPerNutrition());
		   request.getRequestDispatcher("MainPage.jsp").forward(request,response);   
	   }
   }
%>
</body>
</html>