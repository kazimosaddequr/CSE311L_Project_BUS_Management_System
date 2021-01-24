<?php

require 'connection.php';

$sql = "SELECT * FROM route" ;
$get_data = mysqli_query($conn,$sql );

if(mysqli_num_rows($get_data) > 0){

  echo '<table>
      <tr>
        <th>Bus ID</th>
        <th>Route</th>
        <th>Fare</th>
      </tr>';
    while ($row = mysqli_fetch_assoc($get_data)) {

      echo '<tr>
              <td>'.$row['BUS_ID'].'</td>
              <td>'.$row['Route name'].'</td>
              <td>'.$row['price'].'</td>

          </tr>';

    }

}

?>

<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Online Ticket Rerservation</title>

		<!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.ticket.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">

	</head>
<body style="background-color: lightblue;">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Medallion Online Ticketing</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active">
      	<a href="#">Rerservation</a>
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="index.php"> Back To Home</a></li>
    </ul>
  </div>
</nav>


<div class="container-fluid">
	<div class="col-md-1"></div>
	<div class="col-md-10">
		<div class="panel panel-danger">
			<div class="panel-heading">
				<h3 class="panel-title">STEPS FOR BOOKING</h3>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-3">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">1. Choose your travel
								</h3>
							</div>
							<div class="panel-body">
								SCHEDULE OF TRAVEL
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">2. ACCOMODATION
								</h3>
							</div>
							<div class="panel-body">
								ACCOMODATION TYPE
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="panel panel-success">
							<div class="panel-heading">
								<h3 class="panel-title">3. PASSENGER INFO</h3>
							</div>
							<div class="panel-body">
								PASSENGER DETAILS
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="panel panel-warning">
							<div class="panel-heading">
								<h3 class="panel-title">4. PAYMENT INFO</h3>
							</div>
							<div class="panel-body">
								TOTAL PAYMENT
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-1"></div>
</div>

<div class="container-fluid">
	<div class="col-md-3"></div>
	<div class="col-md-6">
		<div class="panel panel-default">
			<div class="panel-body">
			 <h2>
			 	<center>ACCOMODATION</center>
			 </h2>
				<div class="container-fluid">
					<form class="form-horizontal" role="form" id="form-acc">
					  <table id="myTable-party" class="table table-bordered table-hover" cellspacing="0" width="100%">
							<thead>
							    <tr>
							        <th>
							        Accomodation
							        </th>
							        <th>
							        	<center>
							        		Time
							        	</center>
						        	</th>
							        <th>
							        	<center>
							        		Fare
							        	</center>
						        	</th>
							    </tr>
							</thead>
						    <tbody>
						   		<?php require_once('data/get_all_accomodations.php'); ?>
						   		<tr>
						   			<td>
						   				<input value="name1" type="radio" name="acc">
						   				Bus name1
						   			</td>
						   			<td align="center">
						   				8:00am
						   			</td>
						   			<td align="center">TK 80</td>
						   		</tr>
						   		<tr>
						   			<td>
						   				<input value="name2" type="radio" name="acc">
						   				BUS name2
						   			</td>
						   			<td align="center">
						   				9:00am
						   			</td>
						   			<td align="center">TK 100</td>
						   		</tr>
						   		<tr>
						   			<td>
						   				<input value="name3" type="radio" name="acc">
						   				BUS name3
						   			</td>
						   			<td align="center">
						   				10:00am
						   			</td>
						   			<td align="center">TK 200</td>
						   		</tr>
						   		<tr>
						   			<td>
						   				<input value="name4" type="radio" name="acc">
						   				BUS name4
						   			</td>
						   			<td align="center">
						   				11:00am
						   			</td>
						   			<td align="center">TK 5</td>
						   		</tr>
						   		<tr>
						   			<td>
						   				<input value="name5" type="radio" name="acc">
						   				BUS name5
						   			</td>
						   			<td align="center">
						   				1:00pm
						   			</td>
						   			<td align="center">Tk 10</td>
						   		</tr>
						   		<tr>
						   			<td>
						   				<input value="name6" type="radio" name="acc">
						   				BUS name6
						   			</td>
						   			<td align="center">
						   				2:00pm
						   			</td>
						   			<td align="center">Tk 15</td>
						   		</tr>
						    </tbody>
					    </table>
				      <div class="form-group">
					    <label for="">Total # of Passenger:</label>
					    <input type="number" min="1" class="form-control" name="totalPass" plactreholder="Total # of Passenger" autocomplete="off">
					  </div>
					  <button type="submit" class="btn btn-success">NEXT
					  <span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>
					  </button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-3"></div>
</div>

<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>


<script type="text/javascript">
	$(document).on('submit', '#form-acc', function(event) {
		event.preventDefault();
		/* Act on the event */
		var acc = $('input[name="acc"]:checked').val();
		var totalPass = $('input[name="totalPass"]').val();

		if(acc == null){
			alert('Please Select Accomodation!');
		}else{
			// console.log(acc);
			if(totalPass.length == 0){
				alert('Please Enter Number of Passenger!');
			}else{
					window.location.href = "passenger.php"
			}//end totalPass
		}//end acc == null
	});

</script>

</body>
</html>
