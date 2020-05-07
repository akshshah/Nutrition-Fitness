<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Personal Details</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<style>
body {
 background-image: url("https://images.pexels.com/photos/669576/pexels-photo-669576.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
background-position: center;
  background-repeat: no-repeat;
  background-size: 100% 120%;
}
</style>
</head>
<body>
<form action="PersonalDetails" method="post">
 
<div class="container">

	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6 col-xs-12">
		
			<div class="jumbotron" style="margin-top:30px;">
				
				<h1 class="text-center">Nutrition & Fitness</h1><br>
				<div class="pull-right">
				<%
					if(session.getAttribute("username")!=null && session.getAttribute("username")!="")
					{
						String username = session.getAttribute("username").toString();
				%>
						<h4>Welcome <b><%= username%>,</b></h4>
						<h5 style="color:red;">${emptyMessage}</h5>
				<%
					}
				%>
				</div>
				
				<div class="form-group">
					<label class="control-label" for="username">Height </label>
					<input type="text" name="height" class="form-control" placeholder="Height in cm" value="">
				</div>
				<div class="form-group">
					<label class="control-label" for="username">Weight </label>
					<input type="text" name="weight" class="form-control" placeholder="Weight in kg" value="">
				</div>
				<div class="form-group">
					<label class="control-label" for="username">Age</label>
					<input type="text" name="age" class="form-control" placeholder="Age" value="">
					<input type="hidden" name="user" value="${username}" >
				</div>				
				<div class="text-center">
					<input type="submit" class="btn btn-info" name="personal" value="submit">
				</div>
								
			</div>
		</div>
		<div class="col-md-3"></div>		
	</div>
</div>

</form>

</body>
</html>