<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<style>
body {
 background-image: url("https://images.pexels.com/photos/981034/pexels-photo-981034.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
 background-position: center;
  background-repeat: no-repeat;
  background-size: 100% 100%;
}
</style>
</head>
<body>
<form action="LoginRegister" method="post">
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6 col-xs-12">
		
			<div class="jumbotron">
				
				<h1 class="text-center">Registration Page</h1><br>
				<div class="text-center">
					<h4 style="color:#c7150c; background-color:#ffe8b8;">${passMessage}</h4>
					<h4 style="color:#14089e; background-color:#c4e6f5;">${emptyMessage}</h4>
				</div>
				
				<div class="form-group">
					<label class="control-label" for="username">Username</label>
					<input type="text" name="username" class="form-control" placeholder="Username" value="">
				</div>
				<div class="form-group">
					<label class="control-label" for="username">Email</label>
					<input type="text" name="email" class="form-control" placeholder="Email" value="">
				</div>
				<div class="form-group">
					<label class="control-label" for="password">Password</label>
					<input type="password" name="password" class="form-control" placeholder="Password" value="">
				</div>
				<div class="form-group">
					<label class="control-label" for="password2">Confirm Password</label>
					<input type="password" name="password2" class="form-control" placeholder="Re-type Password" value="">
				</div>
				<div class="text-center">
					<input type="submit" class="btn btn-primary" name="submit" value="Register">
				</div>
								
			</div>
		</div>
		<div class="col-md-3"></div>		
	</div>
</div>



</form>

</body>
</html>