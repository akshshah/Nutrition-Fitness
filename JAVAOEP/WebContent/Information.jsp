<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Information</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<style>
body{
 background-image: url("https://images.pexels.com/photos/1092878/pexels-photo-1092878.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
 background-position: center;
  background-repeat: no-repeat;
  background-size: 100% 100%;
}
</style>
</head>
<body>

	
<div class="container">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8 col-xs-10">
			<div class="jumbotron" style="margin-top:30px;">
			
				<h1 class="text-center">Information</h1><br>
				<div class="text-center">
					<h3><b> Your BMI(Body Mass Index) is ${person.BMI}kg/m<sup>2</sup> </b></h3><br>
				</div>
				
				<div class="text-center">
					<p style="font-size:20px"> This is the World Health Organization's (WHO) recommended body weight based on BMI values for adults.
						 It is used for both men and women, age 18 or older. </p>
				</div>
				<div class="text-center">
					<img alt="BMI Table" src="images/bmiinfo.png">
				</div>
				<div class="text-center">
					<br><h3><b>Choose your Goal</b></h3>
					<form action="InsertPersonal.jsp">
						<h4><input type="radio" id="r1" name="goal" value="Lose Fat" checked> Lose Fat</h4>
  						<h4><input type="radio" id="r2" name="goal" value="Gain Muscle"> Gain Muscle</h4><br>
						<input type="hidden" name="username" value="${person.username}">
						<input type="hidden" name="height" value="${person.height}">
						<input type="hidden" name="weight" value="${person.weight}">
						<input type="hidden" name="age" value="${person.age}">
						<input type="hidden" name="BMI" value="${person.BMI}">
						<input type="submit" class="btn btn-primary" value="continue">
					</form>
				</div>
				
			</div>
		</div>
	</div>	
</div>
</body>
</html>