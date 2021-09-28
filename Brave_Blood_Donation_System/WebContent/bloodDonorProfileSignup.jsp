<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create an account</title>

<!-- boostrap cdn -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- font awasome icon -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--font awesom CDN-->
<script src="https://kit.fontawesome.com/2a0f6dfc30.js"
	crossorigin="anonymous"></script>

<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/headerStyle.css" type="text/css" />
<link rel="stylesheet" href="css/navbar.css" type="text/css" />
<link rel="stylesheet" href="css/footer.css" type="text/css" />


</head>
<body>

	<%@ include file="header.jsp"%>

	<%@ include file="navBar.jsp"%>

	<div class="top" style="margin-left: 500px; margin-top: 100px">
		<h1>Create an account</h1>
		<h3>Sign up for your online account today!</h3>
		<h4>Members of the Brave Blood Donor able to do the following:</h4>
		<ul>
			<li>Find out where you can donate</li>
			<li>Book an appointment</li>
			<li>Update your blood donor details</li>
			<li>View your recent donation history</li>
		</ul>
	</div>
	<!-- sign up form -->

	<form id="register-form" action="Register" method="post">
		<div class="signup form"
			style="margin-left: 270px; padding-top: 30px; padding-bottom: 30px; margin-top: 100px; margin-bottom: 100px; width: 70%; border: 3px double #bb372d; border-width: thick">
			<div class="form-group col-md-5" style="margin-left: 250px">
				<label for="inputUsername">Username</label> <input type="text"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters"
					class="form-control" id="inputEmail4" name="username"
					placeholder="Enter unique username">
			</div>
			<div class="form-group col-md-5" style="margin-left: 250px">
				<label for="inputEmail4">Email</label> <input type="email"
					class="form-control" id="inputEmail4" name="email"
					placeholder="Email" required>
			</div>
			<div class="form-group col-md-2" style="margin-left: 250px">
				<label for="inputTel">Phone</label> <input type="tel"  pattern="[0-9]{10}"
					class="form-control" id="inputPhone" name="phone"
					placeholder="0123456789" required>
			</div>
			<div class="form-group col-md-5" style="margin-left: 250px">
				<label for="inputAddress2">Address</label> <input type="text"
					class="form-control" id="inputAddress" name="address" 
					placeholder="Apartment, studio, or floor" required>
			</div>
			<div class="form-group col-md-4" style="margin-left: 250px">
				<label for="inputOccupation">Occupation</label> <input type="text"
					class="form-control" id="inputOccupation" name="occupation"
					size="50">
			</div>
			<div class="form-row1">
				<div class="form-group col-md-3" style="margin-left: 250px">
					<label for="inputWeight">Weight</label> <select id="inputWeight"
						name="weight" class="form-control"required>
						<option value="" disabled selected>Select your weight</option>
						<option>50-60</option>
						<option>60-70</option>
						<option>70-80</option>
						<option>80-90</option>
						<option>90-100</option>
						<option>Above 100</option>
					</select>
				</div>
				<div class="form-group col-md-3" style="margin-left: 250px">
					<label for="inputHeight">Height</label> <select id="inputHeight"
						name="height" class="form-control" required>
						<option value="" disabled selected>Select your height</option>
						<option>Below 140</option>
						<option>140-150</option>
						<option>150-160</option>
						<option>160-170</option>
						<option>170-180</option>
						<option>Above 180</option>
					</select>
				</div>
			</div>
			<div class="button" style="margin-left: 350px; margin-top: 50px">
				<button type="submit" value="register" class="btn btn-outline-dark">Sign
					Up</button>
			</div>
		</div>
	</form>

	<%@ include file="footer.jsp"%>

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


$(document).ready(function (e) {
	
	console.log('loading form page..');
	
	

	$('#register-form').on("submit", function(evenet) {
		
		evenet.preventDefault();
		
	
		let form = new FormData(this);
		
		
		Swal.fire({
			  title: 'Are you sure?',
			  text: "Do you wnat to update this!",
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: 'Yes, update it!'
			}).then((result) => {
				
			  if (result.isConfirmed) {
		
					$.ajax({
						
						
						url: "Register",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
								if(data.trim() == "done"){
								
								new swal("Good job!", "Update Successfully!", "success")
								.then((value) => {
								  window.location="updateDonorProfile.jsp"
								});
								
							}else{
								new swal("Error!", data , "error");
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

//end of update donor profile


</script>


</body>
</html>