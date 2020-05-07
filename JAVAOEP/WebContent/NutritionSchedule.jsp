<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nutrition</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/button.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
.h2{
	font: bold;
}
.submit{
margin-top:10px; 
background-color:white;
}
</style>
</head>
<body>
<div class="container">
	<div class="row">
	 	<% String uname = request.getParameter("username").toString(); %>
		<div class="col-md-3"></div> 
		<div class="col-md-6 col-xs-8">
			<h1 class="text-center" style="margin-top:20px;">Nutrition Schedule</h1><br>
			<div class="text-center">
				<button type="button" class="btn btn-primary custom" data-toggle="collapse" data-target="#week1">Week 1</button>	
				<div id="week1" class="collapse" style="margin-top:10px;">
					<form action="Nutrition" class="form1" method="post">
						<table>
							<tr>
								<th colspan=3><h2>Week 1</h2></th>
							</tr>
							<tr>
								<td>Select Day </td>
								<td colspan=2><select name="day">
										<option> Monday </option>
										<option> Tuesday </option>
										<option> Wednesday </option>
										<option> Thursday </option>
										<option> Friday </option>
										<option> Saturday </option>
									</select></td>
							</tr>
							<tr style="background-color:white; color:#f21d1d; ">
								<td><b>Breakfast</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td>30g oats (cooked in water/skimmed milk) / <br>
									Poha / Upma / granola / 2 brown bread <br> OR <br>
									3 egg whites + 2 whole eggs in any form  
								</td>
								<td><input type="radio" name="breakfast" value="Yes"> Yes</td>
  								<td><input type="radio" name="breakfast" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#f21d1d; ">
								<td><b>Lunch</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> Home made vegetable(cooked in minimal oil, no peas/corn/potato) + <br>
									100g rice Or 1 roti + <br>
									Salad(green vegetables likes spinach/broccoli/green beans etc.)  
								</td>
								<td><input type="radio" name="lunch" value="Yes"> Yes</td>
  								<td><input type="radio" name="lunch" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#f21d1d; ">
								<td><b>Snack</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> 1 scoop protein shake <br> OR <br>
									2 boiled eggs + Handful of any nuts 
								</td>
								<td><input type="radio" name="snack" value="Yes"> Yes</td>
  								<td><input type="radio" name="snack" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#f21d1d; ">
								<td><b>Dinner</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> 100g paneer + Home made vegetable(cooked in minimal oil, no peas/corn/potato) + <br>
									 100g rice or 1 roti + <br>
									 Salad(green vegetables likes spinach/broccoli/green beans etc.)
								</td>
								<td><input type="radio" name="dinner" value="Yes"> Yes</td>
  								<td><input type="radio" name="dinner" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#f21d1d; ">
								<td><b>Post Workout</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> 1 scoop Whey Protein in water <br> OR <br>
									5 to 3 eggs
								</td>
								<td><input type="radio" name="post" value="Yes"> Yes</td>
  								<td><input type="radio" name="post" value="No" checked> No</td>
							</tr>
							<tr style="display:none;">
								<td><input type="hidden" name="week" value="1"></td>
								<td><input type="hidden" name="username" value="<%=uname %>"></td>
							</tr>
							<tr>
								<td colspan=3><input type="submit" class="btn text-center submit"  name="submit" value="Submit"></td>
							</tr>
							</table>	
						</form>
				</div>
			</div>
			<div class="text-center" style="margin-top:20px;">
				<button type="button" class="btn btn-primary custom" data-toggle="collapse" data-target="#week2">Week 2</button>	
				<div id="week2" class="collapse" style="margin-top:10px;">
					<form action="Nutrition" class="form2" method="post">
						<table>
							<tr>
								<th colspan=3><h2>Week 2</h2></th>
							</tr>
							<tr>
								<td>Select Day </td>
								<td colspan=2><select name="day">
										<option> Monday </option>
										<option> Tuesday </option>
										<option> Wednesday </option>
										<option> Thursday </option>
										<option> Friday </option>
										<option> Saturday </option>
									</select></td>
							</tr>
							<tr style="background-color:white; color:#08a80e; ">
								<td><b>Breakfast</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td>30g oats (cooked in water/skimmed milk) / <br>
									Poha / Upma / granola / 2 brown bread <br> OR <br>
									3 egg whites + 2 whole eggs in any form  
								</td>
								<td><input type="radio" name="breakfast" value="Yes"> Yes</td>
  								<td><input type="radio" name="breakfast" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#08a80e; ">
								<td><b>Lunch</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> Home made vegetable(cooked in minimal oil, no peas/corn/potato) + <br>
									100g rice Or 1 roti + <br>
									Salad(green vegetables likes spinach/broccoli/green beans etc.)  
								</td>
								<td><input type="radio" name="lunch" value="Yes"> Yes</td>
  								<td><input type="radio" name="lunch" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#08a80e; ">
								<td><b>Snack</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> 1 scoop protein shake <br> OR <br>
									2 boiled eggs + Handful of any nuts 
								</td>
								<td><input type="radio" name="snack" value="Yes"> Yes</td>
  								<td><input type="radio" name="snack" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#08a80e; ">
								<td><b>Dinner</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> 100g paneer + Home made vegetable(cooked in minimal oil, no peas/corn/potato) + <br>
									 100g rice or 1 roti + <br>
									 Salad(green vegetables likes spinach/broccoli/green beans etc.)
								</td>
								<td><input type="radio" name="dinner" value="Yes"> Yes</td>
  								<td><input type="radio" name="dinner" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#08a80e; ">
								<td><b>Post Workout</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> 1 scoop Whey Protein in water <br> OR <br>
									5 to 3 eggs
								</td>
								<td><input type="radio" name="post" value="Yes"> Yes</td>
  								<td><input type="radio" name="post" value="No" checked> No</td>
							</tr>
							<tr style="display:none;">
								<td><input type="hidden" name="week" value="2"></td>
								<td><input type="hidden" name="username" value="<%=uname %>"></td>
							</tr>
							<tr>
								<td colspan=3><input type="submit" class="btn text-center submit"  name="submit" value="Submit"></td>
							</tr>
							</table>	
						</form>
				</div>
			</div>
			<div class="text-center" style="margin-top:20px;">
				<button type="button" class="btn btn-primary custom" data-toggle="collapse" data-target="#week3">Week 3</button>	
				<div id="week3" class="collapse" style="margin-top:10px;">
					<form action="Nutrition" class="form3" method="post">
						<table>
							<tr>
								<th colspan=3><h2>Week 3</h2></th>
							</tr>
							<tr>
								<td>Select Day </td>
								<td colspan=2><select name="day">
										<option> Monday </option>
										<option> Tuesday </option>
										<option> Wednesday </option>
										<option> Thursday </option>
										<option> Friday </option>
										<option> Saturday </option>
									</select></td>
							</tr>
							<tr style="background-color:white; color:#f78b1e; ">
								<td><b>Breakfast</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td>30g oats (cooked in water/skimmed milk) / <br>
									Poha / Upma / granola / 2 brown bread <br> OR <br>
									3 egg whites + 2 whole eggs in any form  
								</td>
								<td><input type="radio" name="breakfast" value="Yes"> Yes</td>
  								<td><input type="radio" name="breakfast" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#f78b1e; ">
								<td><b>Lunch</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> Home made vegetable(cooked in minimal oil, no peas/corn/potato) + <br>
									100g rice Or 1 roti + <br>
									Salad(green vegetables likes spinach/broccoli/green beans etc.)  
								</td>
								<td><input type="radio" name="lunch" value="Yes"> Yes</td>
  								<td><input type="radio" name="lunch" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#f78b1e; ">
								<td><b>Snack</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> 1 scoop protein shake <br> OR <br>
									2 boiled eggs + Handful of any nuts 
								</td>
								<td><input type="radio" name="snack" value="Yes"> Yes</td>
  								<td><input type="radio" name="snack" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#f78b1e; ">
								<td><b>Dinner</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> 100g paneer + Home made vegetable(cooked in minimal oil, no peas/corn/potato) + <br>
									 100g rice or 1 roti + <br>
									 Salad(green vegetables likes spinach/broccoli/green beans etc.)
								</td>
								<td><input type="radio" name="dinner" value="Yes"> Yes</td>
  								<td><input type="radio" name="dinner" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#f78b1e; ">
								<td><b>Post Workout</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> 1 scoop Whey Protein in water <br> OR <br>
									5 to 3 eggs
								</td>
								<td><input type="radio" name="post" value="Yes"> Yes</td>
  								<td><input type="radio" name="post" value="No" checked> No</td>
							</tr>
							<tr style="display:none;">
								<td><input type="hidden" name="week" value="3"></td>
								<td><input type="hidden" name="username" value="<%=uname %>"></td>
							</tr>
							<tr>
								<td colspan=3><input type="submit" class="btn text-center submit"  name="submit" value="Submit"></td>
							</tr>
							</table>	
						</form>
				</div>
			</div>
			<div class="text-center" style="margin-top:20px;">
				<button type="button" class="btn btn-primary custom" data-toggle="collapse" data-target="#week4">Week 4</button>	
				<div id="week4" class="collapse" style="margin-top:10px;">
					<form action="Nutrition" class="form4" method="post">
						<table>
							<tr>
								<th colspan=3><h2>Week 4</h2></th>
							</tr>
							<tr>
								<td>Select Day </td>
								<td colspan=2><select name="day">
										<option> Monday </option>
										<option> Tuesday </option>
										<option> Wednesday </option>
										<option> Thursday </option>
										<option> Friday </option>
										<option> Saturday </option>
									</select></td>
							</tr>
							<tr style="background-color:white; color:#db1689; ">
								<td><b>Breakfast</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td>30g oats (cooked in water/skimmed milk) / <br>
									Poha / Upma / granola / 2 brown bread <br> OR <br>
									3 egg whites + 2 whole eggs in any form  
								</td>
								<td><input type="radio" name="breakfast" value="Yes"> Yes</td>
  								<td><input type="radio" name="breakfast" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#db1689; ">
								<td><b>Lunch</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> Home made vegetable(cooked in minimal oil, no peas/corn/potato) + <br>
									100g rice Or 1 roti + <br>
									Salad(green vegetables likes spinach/broccoli/green beans etc.)  
								</td>
								<td><input type="radio" name="lunch" value="Yes"> Yes</td>
  								<td><input type="radio" name="lunch" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#db1689; ">
								<td><b>Snack</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> 1 scoop protein shake <br> OR <br>
									2 boiled eggs + Handful of any nuts 
								</td>
								<td><input type="radio" name="snack" value="Yes"> Yes</td>
  								<td><input type="radio" name="snack" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#db1689; ">
								<td><b>Dinner</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> 100g paneer + Home made vegetable(cooked in minimal oil, no peas/corn/potato) + <br>
									 100g rice or 1 roti + <br>
									 Salad(green vegetables likes spinach/broccoli/green beans etc.)
								</td>
								<td><input type="radio" name="dinner" value="Yes"> Yes</td>
  								<td><input type="radio" name="dinner" value="No" checked> No</td>
							</tr>
							<tr style="background-color:white; color:#db1689; ">
								<td><b>Post Workout</b></td>
								<td colspan=2><b>Completion Status</b></td>
							</tr>
							<tr>
								<td> 1 scoop Whey Protein in water <br> OR <br>
									5 to 3 eggs
								</td>
								<td><input type="radio" name="post" value="Yes"> Yes</td>
  								<td><input type="radio" name="post" value="No" checked> No</td>
							</tr>
							<tr style="display:none;">
								<td><input type="hidden" name="week" value="4"></td>
								<td><input type="hidden" name="username" value="<%=uname %>"></td>
							</tr>
							<tr>
								<td colspan=3><input type="submit"  class="btn text-center submit"  name="submit" value="Submit"></td>
							</tr>
							</table>	
						</form>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>