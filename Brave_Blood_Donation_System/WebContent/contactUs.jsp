<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<title>Admin Panel</title> 
	
	<!-- boostrap cdn -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<!-- css -->
	<link rel="stylesheet" href="css/style.css" type="text/css"/>
		<link rel="stylesheet" href="css/admincss.css" type="text/css"/>
	
	
	<!-- font awasome icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!--font awesom CDN-->
    <script src="https://kit.fontawesome.com/2a0f6dfc30.js" crossorigin="anonymous"></script>
    
 	<!-- date and time picker css -->
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
	
</head>
<body>

	<div class="container" style="max-width: 5000px">
		
		<div class="tab adminTab">
		  <button class="tablinks" onclick="openCity(event, 'userManagment')" >User Management</button>
		  <button class="tablinks" onclick="openCity(event, 'appintmentManagement')">Appointment Management</button>
		  <button class="tablinks" onclick="openCity(event, 'donationCampManagement')">Donation Camp Management</button>
		  <button class="tablinks" onclick="openCity(event, 'noticeManagement')" >Notice Management</button>
		  <button class="tablinks" onclick="openCity(event, 'contactUsManagement')"id="defaultOpen">ContactUs Management </button>
		</div>
		
	
	

		<!-- Notice Camp management -->
		<div id="contactUsManagement" class="tabcontent border-light">
		
			<div class="container mt-3">
				
					<!-- include notice managemet admin page -->
 					<%@ include file = "contactUsManagementAdmin.jsp" %>
 					
										
			</div>

	</div>		
	
	
	
	
	
	
	

	
	<!-- jquery script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
	<script type="text/javascript" src="js/adminPanelScript.js"></script>


	
	<script>
	
	$(document).ready(function() {
		
		console.log('loard addd doc data...')
		
		
		
	})
	</script>
	
	
	

</body>
</html>
