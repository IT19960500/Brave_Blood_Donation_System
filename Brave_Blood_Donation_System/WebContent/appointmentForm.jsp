<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Appointment Form</title>

<!-- boostrap cdn -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- font awasome icon -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Google cdn -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!--font awesom CDN-->
<script src="https://kit.fontawesome.com/2a0f6dfc30.js"
	crossorigin="anonymous"></script>


<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/headerStyle.css" type="text/css" />
<link rel="stylesheet" href="css/navbar.css" type="text/css" />
<link rel="stylesheet" href="css/footer.css" type="text/css" />
<link rel="stylesheet" href="css/banner.css" type="text/css" />

</head>
<body>

	<%@ include file = "header.jsp" %>

	<%@ include file = "navBar.jsp" %>
	
	
	<h2 style="text-align: center">Appointment Form</h2>

	<form id="form-submission"action="AppointmentForm" method="post">
		<div class="signup form"
			style="margin-left: 270px; padding-top: 30px; padding-bottom: 30px; margin-top: 80px; margin-bottom: 100px; width: 70%; border: 3px double #bb372d; border-width: thick">
			<div class="form-group col-md-2" style="margin-left: 250px">
				<label for="inputAddress">NIC</label> <input type="text"
					class="form-control" id="nic" pattern="[0-9]{12}" name="nic" placeholder="" required>
			</div>
			<div class="form-group col-md-5" style="margin-left: 250px">
				<label for="inputName">Name</label> <input type="text"
					class="form-control" id="name" name="name" required>
			</div>
			<div class="form-row1">
				<div class="form-group col-md-3" style="margin-left: 250px">
					<label for="inputGroup">Blood Type</label> <select
						id="inputWeight" name="bloodgrp" class="form-control">
						<option selected>Choose Blood Group</option>
						<option>O+</option>
						<option>O-</option>
						<option>A+</option>
						<option>A-</option>
						<option>B+</option>
						<option>B-</option>
						<option>AB+</option>
						<option>AB-</option>
						<option>Unknown</option>
					</select>
				</div>
				<div class="form-group col-md-3" style="margin-left: 250px">
					<label for="inputDate">Preffered Date</label> <input type="date"
						class="form-control" id="inputDate" name="date" placeholder="" required>

				</div>
					<div class="form-group col-md-5" style="margin-left: 250px">
				<label for="inputName">Status</label> <input type="text"
					class="form-control" id="status" name="status" value="Pending" readonly>
			</div>
			</div>
			<div class="button" style="margin-left: 350px; margin-top: 50px">
				<button onclick="msg()" id="btn-submit" type="submit" value="register" class="btn btn-outline-dark">Submit Appointment</button>
			</div>
		</div>
	</form>

		<%@ include file = "footer.jsp" %>

	<!-- jquery script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script>
	$(function(){
    var dtToday = new Date();
    
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();
    
    var maxDate = year + '-' + month + '-' + day;
    alert(maxDate);
    $('#inputDate').attr('min', maxDate);
});
	</script>
	

<script>

//edit appointment

$(document).ready(function (e) {
	
	console.log('loading appointment edit page..');
	
	

	$('#form-submission').on("submit", function(evenet) {
		
		evenet.preventDefault();
		
	
		let form = new FormData(this);
		
		
		Swal.fire({
			  title: 'Are you sure?',
			  text: "Do you want to apply as a donor?",
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: 'Yes'
			}).then((result) => {
				
			  if (result.isConfirmed) {
		
					$.ajax({
						
						
						url: "AppointmentForm",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
							if(data.trim() == "done"){
								
								new swal("Good job!", "Update Successfully!", "success")
								.then((value) => {
								  window.location="updateDonorProfile.jsp"
								});
								
							}else{
								new swal("Error!", "NIC already used!", "error");
							}
							
							
						},
						error: function (jqXHR, textStatus, errorThrown) {
							new swal("Error!", "Something went wrong !, Try Again..", "error");
						
						},
						processData: false,
						contentType: false
						
						
					});//ajax end
			    		    
			    
			  }//result confirm end
				  
			});//swal confirm end
					
		
	});//submit fun end	
	
});//end main

//end of edit contact us
	

</script>
</body>
</html>