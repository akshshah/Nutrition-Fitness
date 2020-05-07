<%@page import="OEP.DatabaseOperations"%>
<%@page import="OEP.Personal"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<style type="text/css">
.custom{
font-size: 20px;
width:60%;
margin-top:15px;
}
body{
 background-image: url("https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
 background-position: center;
  background-repeat: no-repeat;
  background-size: 100% 140%;
}
</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6 col-xs-12">
		<div class="jumbotron" style="margin-top:30px;">
			<% 
				String uname = request.getAttribute("username").toString();
				String workout = request.getAttribute("workout").toString();
				String nutrition = request.getAttribute("nutrition").toString();
				DatabaseOperations dbOp = new DatabaseOperations();
				Personal p = dbOp.getPersonalData(uname);
				String goal = p.getGoal();
				
					
				if(goal.equals("Gain Muscle")) 
				{	
			%>
					<div class="text-center">
						<h1>Nutrition & Fitness</h1>
						<form action="NutritionSchedule.jsp">
							<input type="hidden" name="username" value="<%=uname %>">
							<input type="submit" class="btn btn-primary custom" value="Nutrition Schedule">
						</form>
						<form action="MuscleWorkout.jsp">
							<input type="hidden" name="username" value="<%=uname %>">
							<input type="submit" class="btn btn-primary custom" value="Workout Schedule">
						</form>
					</div>
					<div class="text-center" style="margin-top:20px;">
						<h4><b>Goal: <%=goal %> </b></h4>
					</div>
			
					<div class="text-center" style="margin-top:30px;">
						<h4 style="display: inline;">Nutrition Status </h4>
						<h4 style="background-color:#8206a1; color:#ffffff; display: inline;"><b><%=nutrition %> %</b> </h4>
					</div>
					<div class="text-center" style="margin-top:20px;">
						<h4 style="display: inline;">Workout Status </h4>
						<h4 style="background-color:#8206a1; color:#ffffff; display: inline;"><b><%=workout %> %</b></h4>
					</div> 
		    <%
				}
				else if(p.getGoal().equals("Lose Fat"))
				{	
			%> 
				 <div class="text-center">
					<h1>Nutrition & Fitness</h1>
					<form action="NutritionSchedule.jsp">
							<input type="hidden" name="username" value="<%=uname %>">
							<input type="submit" class="btn btn-primary custom" value="Nutrition Schedule">
					</form>
					<form action="FatWorkout.jsp">
							<input type="hidden" name="username" value="<%=uname %>">
							<input type="submit" class="btn btn-primary custom" value="Workout Schedule">
					</form>
				</div>
				<div class="text-center" style="margin-top:20px;">
					<h4><b>Goal: <%=goal %> </b></h4>
				</div>
			
				<div class="text-center" style="margin-top:30px;">
					<h4 style="display: inline;">Nutrition Status </h4>
					<h4 style="background-color:#8206a1; color:#ffffff; display: inline;"><b><%=nutrition %> %</b> </h4>
				</div>
				<div class="text-center" style="margin-top:20px;">
					<h4 style="display: inline;">Workout Status </h4>
					<h4 style="background-color:#8206a1; color:#ffffff; display: inline;"><b><%=workout %> %</b></h4>
				</div>
		 <% 
				}
				else
				{
					
		%> 
				<h1>Select Proper Goal</h1> 
 		<%
				}
		%>	
				
		</div>
		</div>	
	</div>
</div>


</body>
</html>