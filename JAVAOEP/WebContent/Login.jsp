<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<style>
body {
 background-image: url("https://images.pexels.com/photos/2261477/pexels-photo-2261477.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");

}
</style>

</head>
<body>
<form action="LoginRegister" method="post">
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6 col-xs-12">
		
			<div class="jumbotron" style="margin-top:30px;">
				
				<h1 class="text-center">Login Page</h1><br>
				<div class="text-center">
					<h4 style="color:green; background-color:#e1f5b3;">${successMessage}</h4>
					<h4 style="color:#c7150c; background-color:#ffe8b8;">${message}</h4>
				</div>
				<div class="form-group">
					<label class="control-label" for="username">Username</label>
					<input type="text" name="username" class="form-control" placeholder="Username" value="">
				</div>
				<div class="form-group">
					<label class="control-label" for="password">Password</label>
					<input type="password" name="password" class="form-control" placeholder="Password" value="">
				</div>
				<div class="text-center">
					<input type="submit" class="btn btn-primary" name="submit" value="Login">
					<a href="Register.jsp" class="btn btn-primary">Registration</a>
				</div>
								
			</div>
		</div>
		<div class="col-md-3"></div>		
	</div>
</div>

</form>



</body>
</html>