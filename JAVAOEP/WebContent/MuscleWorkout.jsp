<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gain Muscle Workout</title>
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
			<h1 class="text-center" style="margin-top:20px;">Muscle Gain Workout Schedule</h1><br>
			<div class="text-center">
				<button type="button" class="btn btn-primary custom" data-toggle="collapse" data-target="#week1">Week 1</button>
				<div id="week1" class="collapse" style="margin-top:10px;">
					<button class="button" data-toggle="collapse" data-target="#Monday1"> <h4>Monday </h4>Legs </button>
						<div id="Monday1" class="collapse">
							<form action="Workout" class="form1" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Monday</h2></th>
									</tr>
									<tr style="background-color:white; color:#f21d1d; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Squats</td>
										<td><input type="radio" name="squats" value="Yes"> Yes</td>
  										<td><input type="radio" name="squats" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Step Up</td>
										<td><input type="radio" name="stepup" value="Yes"> Yes</td>
  										<td><input type="radio" name="stepup" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Leg Press</td>
										<td><input type="radio" name="legpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="legpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Extension</td>
										<td><input type="radio" name="extension" value="Yes"> Yes</td>
  										<td><input type="radio" name="extension" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Leg Curl</td>
										<td><input type="radio" name="curl" value="Yes"> Yes</td>
  										<td><input type="radio" name="curl" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Standing Calf</td>
										<td><input type="radio" name="calf" value="Yes"> Yes</td>
  										<td><input type="radio" name="calf" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Monday"></td>
										<td><input type="hidden" name="week" value="1"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input type="submit" id="1" class="btn text-center submit"  name="submit" value="Submit"></td>
									</tr>
								</table>	
							</form>
						</div>
					<button class="button" data-toggle="collapse" data-target="#Tues1"> <h4>Tuesday </h4>Back </button>
						<div id="Tues1" class="collapse">
							<form action="Workout" class="form1" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Tuesday</h2></th>
									</tr>
									<tr style="background-color:white; color:#f21d1d; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Pull Ups</td>
										<td><input type="radio" name="pullups" value="Yes"> Yes</td>
  										<td><input type="radio" name="pullups" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Mid Row</td>
										<td><input type="radio" name="midrow" value="Yes"> Yes</td>
  										<td><input type="radio" name="midrow" value="No" checked> No</td>
									</tr>
									<tr>
										<td>High Row</td>
										<td><input type="radio" name="highrow" value="Yes"> Yes</td>
  										<td><input type="radio" name="highrow" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Bent Over Rows</td>
										<td><input type="radio" name="bentover" value="Yes"> Yes</td>
  										<td><input type="radio" name="bentover" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Shrugs</td>
										<td><input type="radio" name="shrugs" value="Yes"> Yes</td>
  										<td><input type="radio" name="shrugs" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Reverse Fly</td>
										<td><input type="radio" name="reverse" value="Yes"> Yes</td>
  										<td><input type="radio" name="reverse" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Bicep db Curl</td>
										<td><input type="radio" name="bicep" value="Yes"> Yes</td>
  										<td><input type="radio" name="bicep" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Tuesday"></td>
										<td><input type="hidden" name="week" value="1"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input type="submit" class="btn text-center submit" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button" data-toggle="collapse" data-target="#Wed1"> <h4>Wednesday </h4>Cardio </button>
						<div id="Wed1" class="collapse">
							<form action="Workout" class="form1" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Wednesday</h2></th>
									</tr>
									<tr style="background-color:white; color:#f21d1d; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Cardio 40 mins</td>
										<td><input type="radio" name="cardio" value="Yes"> Yes</td>
  										<td><input type="radio" name="cardio" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Abs 300 reps</td>
										<td><input type="radio" name="abs" value="Yes"> Yes</td>
  										<td><input type="radio" name="abs" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Wednesday"></td>
										<td><input type="hidden" name="week" value="1"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button" data-toggle="collapse" data-target="#Thur1"> <h4>Thursday </h4>CST </button>
						<div id="Thur1" class="collapse">
							<form action="Workout" class="form1" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Thursday</h2></th>
									</tr>
									<tr style="background-color:white; color:#f21d1d; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Flat Bench Press</td>
										<td><input type="radio" name="flatpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="flatpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Incline Db Press</td>
										<td><input type="radio" name="inclinepress" value="Yes"> Yes</td>
  										<td><input type="radio" name="inclinepress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Chest Press</td>
										<td><input type="radio" name="chestpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="chestpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Chest Fly</td>
										<td><input type="radio" name="chestfly" value="Yes"> Yes</td>
  										<td><input type="radio" name="chestfly" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Over Head press db</td>
										<td><input type="radio" name="headpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="headpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Lateral Raise DB</td>
										<td><input type="radio" name="lateral" value="Yes"> Yes</td>
  										<td><input type="radio" name="lateral" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Front Raise Cable</td>
										<td><input type="radio" name="frontcable" value="Yes"> Yes</td>
  										<td><input type="radio" name="frontcable" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Tricep push down</td>
										<td><input type="radio" name="triceppush" value="Yes"> Yes</td>
  										<td><input type="radio" name="triceppush" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Thursday"></td>
										<td><input type="hidden" name="week" value="1"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button" data-toggle="collapse" data-target="#Fri1"> <h4>Friday </h4>Gluteus </button>
						<div id="Fri1" class="collapse">
							<form action="Workout" class="form1" method="post">
								<table>
								<tr>
										<th colspan=3><h2>Friday</h2></th>
								</tr>
								<tr style="background-color:white; color:#f21d1d; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
								</tr>
								<tr>
									<td>Sumo Squats</td>
									<td><input type="radio" name="sumosquats" value="Yes"> Yes</td>
  									<td><input type="radio" name="sumosquats" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Lunges</td>
									<td><input type="radio" name="lunges" value="Yes"> Yes</td>
  									<td><input type="radio" name="lunges" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Stiff Leg Deadlift</td>
									<td><input type="radio" name="stiffleg" value="Yes"> Yes</td>
  									<td><input type="radio" name="stiffleg" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Hip Thrust</td>
									<td><input type="radio" name="hipthrust" value="Yes"> Yes</td>
  									<td><input type="radio" name="hipthrust" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Leg Curl</td>
									<td><input type="radio" name="curl" value="Yes"> Yes</td>
  									<td><input type="radio" name="curl" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Seated Calf</td>
									<td><input type="radio" name="calf" value="Yes"> Yes</td>
  									<td><input type="radio" name="calf" value="No" checked> No</td>
								</tr>
								<tr style="display:none;">
										<td><input type="hidden" name="day" value="Friday"></td>
										<td><input type="hidden" name="week" value="1"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
								<tr>
									<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
								</tr>
								</table>
							</form>
						</div>
					<button class="button" data-toggle="collapse" data-target="#Sat1"> <h4>Saturday </h4>Cardio </button>
  						<div id="Sat1" class="collapse">
							<form action="Workout" class="form1" method="post">
								<table>
								<tr>
										<th colspan=3><h2>Saturday</h2></th>
								</tr>
								<tr style="background-color:white; color:#f21d1d; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
								<tr>
									<td>Cardio 45 mins</td>
									<td><input type="radio" name="cardio" value="Yes"> Yes</td>
  									<td><input type="radio" name="cardio" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Abs 300 reps</td>
									<td><input type="radio" name="abs" value="Yes"> Yes</td>
  									<td><input type="radio" name="abs" value="No" checked> No</td>
								</tr>
								<tr style="display:none;">
										<td><input type="hidden" name="day" value="Saturday"></td>
										<td><input type="hidden" name="week" value="1"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
								<tr>
									<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
								</tr>
								</table>
							</form>
						</div>
  				</div>
			</div>
			
			
			<div class="text-center" style="margin-top:20px;">
				<button type="button" class="btn btn-primary custom" data-toggle="collapse" data-target="#week2">Week 2</button>
				<div id="week2" class="collapse" style="margin-top:10px;">
					<button class="button2" data-toggle="collapse" data-target="#Monday2"> <h4>Monday </h4>Legs </button>
						<div id="Monday2" class="collapse">
							<form action="Workout" class="form2" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Monday</h2></th>
									</tr>
									<tr style="background-color:white; color:#08a80e; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Squats</td>
										<td><input type="radio" name="squats" value="Yes"> Yes</td>
  										<td><input type="radio" name="squats" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Step Up</td>
										<td><input type="radio" name="stepup" value="Yes"> Yes</td>
  										<td><input type="radio" name="stepup" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Leg Press</td>
										<td><input type="radio" name="legpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="legpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Extension</td>
										<td><input type="radio" name="extension" value="Yes"> Yes</td>
  										<td><input type="radio" name="extension" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Leg Curl</td>
										<td><input type="radio" name="curl" value="Yes"> Yes</td>
  										<td><input type="radio" name="curl" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Standing Calf</td>
										<td><input type="radio" name="calf" value="Yes"> Yes</td>
  										<td><input type="radio" name="calf" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Monday"></td>
										<td><input type="hidden" name="week" value="2"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button2" data-toggle="collapse" data-target="#Tues2"> <h4>Tuesday </h4>Back </button>
						<div id="Tues2" class="collapse">
							<form action="Workout" class="form2" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Tuesday</h2></th>
									</tr>
									<tr style="background-color:white; color:#08a80e; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Pull Ups</td>
										<td><input type="radio" name="pullups" value="Yes"> Yes</td>
  										<td><input type="radio" name="pullups" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Mid Row</td>
										<td><input type="radio" name="midrow" value="Yes"> Yes</td>
  										<td><input type="radio" name="midrow" value="No" checked> No</td>
									</tr>
									<tr>
										<td>High Row</td>
										<td><input type="radio" name="highrow" value="Yes"> Yes</td>
  										<td><input type="radio" name="highrow" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Bent Over Rows</td>
										<td><input type="radio" name="bentover" value="Yes"> Yes</td>
  										<td><input type="radio" name="bentover" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Shrugs</td>
										<td><input type="radio" name="shrugs" value="Yes"> Yes</td>
  										<td><input type="radio" name="shrugs" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Reverse Fly</td>
										<td><input type="radio" name="reverse" value="Yes"> Yes</td>
  										<td><input type="radio" name="reverse" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Bicep db Curl</td>
										<td><input type="radio" name="bicep" value="Yes"> Yes</td>
  										<td><input type="radio" name="bicep" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Tuesday"></td>
										<td><input type="hidden" name="week" value="2"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button2" data-toggle="collapse" data-target="#Wed2"> <h4>Wednesday </h4>Cardio </button>
						<div id="Wed2" class="collapse">
							<form action="Workout" class="form2" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Wednesday</h2></th>
									</tr>
									<tr style="background-color:white; color:#08a80e; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Cardio 40 mins</td>
										<td><input type="radio" name="cardio" value="Yes"> Yes</td>
  										<td><input type="radio" name="cardio" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Abs 300 reps</td>
										<td><input type="radio" name="abs" value="Yes"> Yes</td>
  										<td><input type="radio" name="abs" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Wednesday"></td>
										<td><input type="hidden" name="week" value="2"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button2" data-toggle="collapse" data-target="#Thur2"> <h4>Thursday </h4>CST </button>
						<div id="Thur2" class="collapse">
							<form action="Workout" class="form2" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Thursday</h2></th>
									</tr>
									<tr style="background-color:white; color:#08a80e; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Flat Bench Press</td>
										<td><input type="radio" name="flatpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="flatpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Incline Db Press</td>
										<td><input type="radio" name="inclinepress" value="Yes"> Yes</td>
  										<td><input type="radio" name="inclinepress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Chest Press</td>
										<td><input type="radio" name="chestpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="chestpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Chest Fly</td>
										<td><input type="radio" name="chestfly" value="Yes"> Yes</td>
  										<td><input type="radio" name="chestfly" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Over Head press db</td>
										<td><input type="radio" name="headpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="headpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Lateral raise DB</td>
										<td><input type="radio" name="lateral" value="Yes"> Yes</td>
  										<td><input type="radio" name="lateral" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Front Raise Cable</td>
										<td><input type="radio" name="frontcable" value="Yes"> Yes</td>
  										<td><input type="radio" name="frontcable" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Tricep push down</td>
										<td><input type="radio" name="triceppush" value="Yes"> Yes</td>
  										<td><input type="radio" name="triceppush" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Thursday"></td>
										<td><input type="hidden" name="week" value="2"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button2" data-toggle="collapse" data-target="#Fri2"> <h4>Friday </h4>Gluteus </button>
						<div id="Fri2" class="collapse">
							<form action="Workout" class="form2" method="post">
								<table>
								<tr>
										<th colspan=3><h2>Friday</h2></th>
								</tr>
								<tr style="background-color:white; color:#08a80e; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
								<tr>
									<td>Sumo Squats</td>
									<td><input type="radio" name="sumosquats" value="Yes"> Yes</td>
  									<td><input type="radio" name="sumosquats" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Lunges</td>
									<td><input type="radio" name="lunges" value="Yes"> Yes</td>
  									<td><input type="radio" name="lunges" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Stiff leg Deadlift</td>
									<td><input type="radio" name="stiffleg" value="Yes"> Yes</td>
  									<td><input type="radio" name="stiffleg" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Hip Thrust</td>
									<td><input type="radio" name="hipthrust" value="Yes"> Yes</td>
  									<td><input type="radio" name="hipthrust" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Leg Curl</td>
									<td><input type="radio" name="curl" value="Yes"> Yes</td>
  									<td><input type="radio" name="curl" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Seated Calf</td>
									<td><input type="radio" name="calf" value="Yes"> Yes</td>
  									<td><input type="radio" name="calf" value="No" checked> No</td>
								</tr>
								<tr style="display:none;">
										<td><input type="hidden" name="day" value="Friday"></td>
										<td><input type="hidden" name="week" value="2"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
								<tr>
									<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
								</tr>
								</table>
							</form>
						</div>
					<button class="button2" data-toggle="collapse" data-target="#Sat2"> <h4>Saturday </h4>Cardio </button>
  						<div id="Sat2" class="collapse">
							<form action="Workout" class="form2" method="post">
								<table>
								<tr>
									<th colspan=3><h2>Saturday</h2></th>
								</tr>
								<tr style="background-color:white; color:#08a80e; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
								<tr>
									<td>Cardio 45 mins</td>
									<td><input type="radio" name="cardio" value="Yes"> Yes</td>
  									<td><input type="radio" name="cardio" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Abs 300 reps</td>
									<td><input type="radio" name="abs" value="Yes"> Yes</td>
  									<td><input type="radio" name="abs" value="No" checked> No</td>
								</tr>
								<tr style="display:none;">
										<td><input type="hidden" name="day" value="Saturday"></td>
										<td><input type="hidden" name="week" value="2"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
								<tr>
									<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
								</tr>
								</table>
							</form>
						</div>
  				</div>
			</div>
			
			
			<div class="text-center" style="margin-top:20px;">
				<button type="button" class="btn btn-primary custom" data-toggle="collapse" data-target="#week3">Week 3</button>
				<div id="week3" class="collapse" style="margin-top:10px;">
					<button class="button3" data-toggle="collapse" data-target="#Monday3"> <h4>Monday </h4>Legs </button>
						<div id="Monday3" class="collapse">
							<form action="Workout" class="form3" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Monday</h2></th>
									</tr>
									<tr style="background-color:white; color:#f78b1e; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Squats</td>
										<td><input type="radio" name="squats" value="Yes"> Yes</td>
  										<td><input type="radio" name="squats" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Step Up</td>
										<td><input type="radio" name="stepup" value="Yes"> Yes</td>
  										<td><input type="radio" name="stepup" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Leg Press</td>
										<td><input type="radio" name="legpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="legpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Extension</td>
										<td><input type="radio" name="extension" value="Yes"> Yes</td>
  										<td><input type="radio" name="extension" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Leg Curl</td>
										<td><input type="radio" name="curl" value="Yes"> Yes</td>
  										<td><input type="radio" name="curl" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Standing Calf</td>
										<td><input type="radio" name="calf" value="Yes"> Yes</td>
  										<td><input type="radio" name="calf" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Monday"></td>
										<td><input type="hidden" name="week" value="3"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button3" data-toggle="collapse" data-target="#Tues3"> <h4>Tuesday </h4>Back </button>
						<div id="Tues3" class="collapse">
							<form action="Workout" class="form3" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Tuesday</h2></th>
									</tr>
									<tr style="background-color:white; color:#f78b1e; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Pull Ups</td>
										<td><input type="radio" name="pullups" value="Yes"> Yes</td>
  										<td><input type="radio" name="pullups" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Mid Row</td>
										<td><input type="radio" name="midrow" value="Yes"> Yes</td>
  										<td><input type="radio" name="midrow" value="No" checked> No</td>
									</tr>
									<tr>
										<td>High Row</td>
										<td><input type="radio" name="highrow" value="Yes"> Yes</td>
  										<td><input type="radio" name="highrow" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Bent Over Rows</td>
										<td><input type="radio" name="bentover" value="Yes"> Yes</td>
  										<td><input type="radio" name="bentover" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Shrugs</td>
										<td><input type="radio" name="shrugs" value="Yes"> Yes</td>
  										<td><input type="radio" name="shrugs" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Reverse Fly</td>
										<td><input type="radio" name="reverse" value="Yes"> Yes</td>
  										<td><input type="radio" name="reverse" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Bicep db Curl</td>
										<td><input type="radio" name="bicep" value="Yes"> Yes</td>
  										<td><input type="radio" name="bicep" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Tuesday"></td>
										<td><input type="hidden" name="week" value="3"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button3" data-toggle="collapse" data-target="#Wed3"> <h4>Wednesday </h4>Cardio </button>
						<div id="Wed3" class="collapse">
							<form action="Workout" class="form3" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Wednesday</h2></th>
									</tr>
									<tr style="background-color:white; color:#f78b1e; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Cardio 40 mins</td>
										<td><input type="radio" name="cardio" value="Yes"> Yes</td>
  										<td><input type="radio" name="cardio" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Abs 300 reps</td>
										<td><input type="radio" name="abs" value="Yes"> Yes</td>
  										<td><input type="radio" name="abs" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Wednesday"></td>
										<td><input type="hidden" name="week" value="3"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button3" data-toggle="collapse" data-target="#Thur3"> <h4>Thursday </h4>CST </button>
						<div id="Thur3" class="collapse">
							<form action="Workout" class="form3" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Thursday</h2></th>
									</tr>
									<tr style="background-color:white; color:#f78b1e; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Flat Bench Press</td>
										<td><input type="radio" name="flatpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="flatpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Incline Db Press</td>
										<td><input type="radio" name="inclinepress" value="Yes"> Yes</td>
  										<td><input type="radio" name="inclinepress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Chest Press</td>
										<td><input type="radio" name="chestpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="chestpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Chest Fly</td>
										<td><input type="radio" name="chestfly" value="Yes"> Yes</td>
  										<td><input type="radio" name="chestfly" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Over Head press db</td>
										<td><input type="radio" name="headpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="headpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Lateral raise DB</td>
										<td><input type="radio" name="lateral" value="Yes"> Yes</td>
  										<td><input type="radio" name="lateral" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Front Raise Cable</td>
										<td><input type="radio" name="frontcable" value="Yes"> Yes</td>
  										<td><input type="radio" name="frontcable" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Tricep push down</td>
										<td><input type="radio" name="triceppush" value="Yes"> Yes</td>
  										<td><input type="radio" name="triceppush" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Thursday"></td>
										<td><input type="hidden" name="week" value="3"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button3" data-toggle="collapse" data-target="#Fri3"> <h4>Friday </h4>Gluteus </button>
						<div id="Fri3" class="collapse">
							<form action="Workout" class="form3" method="post">
								<table>
								<tr>
										<th colspan=3><h2>Friday</h2></th>
								</tr>
								<tr style="background-color:white; color:#f78b1e; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
								<tr>
									<td>Sumo Squats</td>
									<td><input type="radio" name="sumosquats" value="Yes"> Yes</td>
  									<td><input type="radio" name="sumosquats" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Lunges</td>
									<td><input type="radio" name="lunges" value="Yes"> Yes</td>
  									<td><input type="radio" name="lunges" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Stiff leg Deadlift</td>
									<td><input type="radio" name="stiffleg" value="Yes"> Yes</td>
  									<td><input type="radio" name="stiffleg" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Hip Thrust</td>
									<td><input type="radio" name="hipthrust" value="Yes"> Yes</td>
  									<td><input type="radio" name="hipthrust" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Leg Curl</td>
									<td><input type="radio" name="curl" value="Yes"> Yes</td>
  									<td><input type="radio" name="curl" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Seated Calf</td>
									<td><input type="radio" name="calf" value="Yes"> Yes</td>
  									<td><input type="radio" name="calf" value="No" checked> No</td>
								</tr>
								<tr style="display:none;">
										<td><input type="hidden" name="day" value="Friday"></td>
										<td><input type="hidden" name="week" value="3"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
								<tr>
									<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
								</tr>
								</table>
							</form>
						</div>
					<button class="button3" data-toggle="collapse" data-target="#Sat3"> <h4>Saturday </h4>Cardio </button>
  						<div id="Sat3" class="collapse">
							<form action="Workout" class="form3" method="post">
								<table>
								<tr>
										<th colspan=3><h2>Saturday</h2></th>
								</tr>
								<tr style="background-color:white; color:#f78b1e; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
								<tr>
									<td>Cardio 45 mins</td>
									<td><input type="radio" name="cardio" value="Yes"> Yes</td>
  									<td><input type="radio" name="cardio" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Abs 300 reps</td>
									<td><input type="radio" name="abs" value="Yes"> Yes</td>
  									<td><input type="radio" name="abs" value="No" checked> No</td>
								</tr>
								<tr style="display:none;">
										<td><input type="hidden" name="day" value="Saturday"></td>
										<td><input type="hidden" name="week" value="3"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
								<tr>
									<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
								</tr>
								</table>
							</form>
						</div>
  				</div>
			</div>
			
			
			<div class="text-center" style="margin-top:20px;">
				<button type="button" class="btn btn-primary custom" data-toggle="collapse" data-target="#week4">Week 4</button>
				<div id="week4" class="collapse" style="margin-top:10px;">
					<button class="button4" data-toggle="collapse" data-target="#Monday4"> <h4>Monday </h4>Legs </button>
						<div id="Monday4" class="collapse">
							<form action="Workout" class="form4" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Monday</h2></th>
									</tr>
									<tr style="background-color:white; color:#db1689; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Squats</td>
										<td><input type="radio" name="squats" value="Yes"> Yes</td>
  										<td><input type="radio" name="squats" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Step Up</td>
										<td><input type="radio" name="stepup" value="Yes"> Yes</td>
  										<td><input type="radio" name="stepup" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Leg Press</td>
										<td><input type="radio" name="legpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="legpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Extension</td>
										<td><input type="radio" name="extension" value="Yes"> Yes</td>
  										<td><input type="radio" name="extension" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Leg Curl</td>
										<td><input type="radio" name="curl" value="Yes"> Yes</td>
  										<td><input type="radio" name="curl" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Standing Calf</td>
										<td><input type="radio" name="calf" value="Yes"> Yes</td>
  										<td><input type="radio" name="calf" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Monday"></td>
										<td><input type="hidden" name="week" value="4"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button4" data-toggle="collapse" data-target="#Tues4"> <h4>Tuesday </h4>Back </button>
						<div id="Tues4" class="collapse">
							<form action="Workout" class="form4" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Tuesday</h2></th>
									</tr>
									<tr style="background-color:white; color:#db1689; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Pull Ups</td>
										<td><input type="radio" name="pullups" value="Yes"> Yes</td>
  										<td><input type="radio" name="pullups" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Mid Row</td>
										<td><input type="radio" name="midrow" value="Yes"> Yes</td>
  										<td><input type="radio" name="midrow" value="No" checked> No</td>
									</tr>
									<tr>
										<td>High Row</td>
										<td><input type="radio" name="highrow" value="Yes"> Yes</td>
  										<td><input type="radio" name="highrow" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Bent Over Rows</td>
										<td><input type="radio" name="bentover" value="Yes"> Yes</td>
  										<td><input type="radio" name="bentover" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Shrugs</td>
										<td><input type="radio" name="shrugs" value="Yes"> Yes</td>
  										<td><input type="radio" name="shrugs" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Reverse Fly</td>
										<td><input type="radio" name="reverse" value="Yes"> Yes</td>
  										<td><input type="radio" name="reverse" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Bicep db Curl</td>
										<td><input type="radio" name="bicep" value="Yes"> Yes</td>
  										<td><input type="radio" name="bicep" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Tuesday"></td>
										<td><input type="hidden" name="week" value="4"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button4" data-toggle="collapse" data-target="#Wed4"> <h4>Wednesday </h4>Cardio </button>
						<div id="Wed4" class="collapse">
							<form action="Workout" class="form4" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Wednesday</h2></th>
									</tr>
									<tr style="background-color:white; color:#db1689; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Cardio 40 mins</td>
										<td><input type="radio" name="cardio" value="Yes"> Yes</td>
  										<td><input type="radio" name="cardio" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Abs 300 reps</td>
										<td><input type="radio" name="abs" value="Yes"> Yes</td>
  										<td><input type="radio" name="abs" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Wednesday"></td>
										<td><input type="hidden" name="week" value="4"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button4" data-toggle="collapse" data-target="#Thur4"> <h4>Thursday </h4>CST </button>
						<div id="Thur4" class="collapse">
							<form action="Workout" class="form4" method="post">
								<table>
									<tr>
										<th colspan=3><h2>Thursday</h2></th>
									</tr>
									<tr style="background-color:white; color:#db1689; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
									<tr>
										<td>Flat Bench Press</td>
										<td><input type="radio" name="flatpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="flatpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Incline Db Press</td>
										<td><input type="radio" name="inclinepress" value="Yes"> Yes</td>
  										<td><input type="radio" name="inclinepress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Chest Press</td>
										<td><input type="radio" name="chestpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="chestpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Chest Fly</td>
										<td><input type="radio" name="chestfly" value="Yes"> Yes</td>
  										<td><input type="radio" name="chestfly" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Over Head press db</td>
										<td><input type="radio" name="headpress" value="Yes"> Yes</td>
  										<td><input type="radio" name="headpress" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Lateral raise DB</td>
										<td><input type="radio" name="lateral" value="Yes"> Yes</td>
  										<td><input type="radio" name="lateral" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Front Raise Cable</td>
										<td><input type="radio" name="frontcable" value="Yes"> Yes</td>
  										<td><input type="radio" name="frontcable" value="No" checked> No</td>
									</tr>
									<tr>
										<td>Tricep push down</td>
										<td><input type="radio" name="triceppush" value="Yes"> Yes</td>
  										<td><input type="radio" name="triceppush" value="No" checked> No</td>
									</tr>
									<tr style="display:none;">
										<td><input type="hidden" name="day" value="Thursday"></td>
										<td><input type="hidden" name="week" value="4"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
									<tr>
										<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
									</tr>
								</table>
							</form>
						</div>
					<button class="button4" data-toggle="collapse" data-target="#Fri4"> <h4>Friday </h4>Gluteus </button>
						<div id="Fri4" class="collapse">
							<form action="Workout" class="form4" method="post">
								<table>
								<tr>
										<th colspan=3><h2>Friday</h2></th>
								</tr>
								<tr style="background-color:white; color:#db1689; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
								<tr>
									<td>Sumo Squats</td>
									<td><input type="radio" name="sumosquats" value="Yes"> Yes</td>
  									<td><input type="radio" name="sumosquats" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Lunges</td>
									<td><input type="radio" name="lunges" value="Yes"> Yes</td>
  									<td><input type="radio" name="lunges" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Stiff leg Deadlift</td>
									<td><input type="radio" name="stiffleg" value="Yes"> Yes</td>
  									<td><input type="radio" name="stiffleg" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Hip Thrust</td>
									<td><input type="radio" name="hipthrust" value="Yes"> Yes</td>
  									<td><input type="radio" name="hipthrust" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Leg Curl</td>
									<td><input type="radio" name="curl" value="Yes"> Yes</td>
  									<td><input type="radio" name="curl" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Seated Calf</td>
									<td><input type="radio" name="calf" value="Yes"> Yes</td>
  									<td><input type="radio" name="calf" value="No" checked> No</td>
								</tr>
								<tr style="display:none;">
										<td><input type="hidden" name="day" value="Friday"></td>
										<td><input type="hidden" name="week" value="4"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
								<tr>
									<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
								</tr>
								</table>
							</form>
						</div>
					<button class="button4" data-toggle="collapse" data-target="#Sat4"> <h4>Saturday </h4>Cardio </button>
  						<div id="Sat4" class="collapse">
							<form action="Workout" class="form4" method="post">
								<table>
								<tr>
										<th colspan=3><h2>Saturday</h2></th>
								</tr>
								<tr style="background-color:white; color:#db1689; ">
										<td><b>Tasks</b></td>
										<td colspan=2><b>Completion Status</b></td>
									</tr>
								<tr>
									<td>Cardio 45 mins</td>
									<td><input type="radio" name="cardio" value="Yes"> Yes</td>
  									<td><input type="radio" name="cardio" value="No" checked> No</td>
								</tr>
								<tr>
									<td>Abs 300 reps</td>
									<td><input type="radio" name="abs" value="Yes"> Yes</td>
  									<td><input type="radio" name="abs" value="No" checked> No</td>
								</tr>
								<tr style="display:none;">
										<td><input type="hidden" name="day" value="Saturday"></td>
										<td><input type="hidden" name="week" value="4"></td>
										<td><input type="hidden" name="username" value="<%=uname %>"></td>
									</tr>
								<tr>
									<td colspan=3><input style="margin-top:10px; background-color:white" type="submit" class="btn text-center" name="submit" value="Submit"></td>
								</tr>
								</table>
							</form>
						</div>					
  				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>