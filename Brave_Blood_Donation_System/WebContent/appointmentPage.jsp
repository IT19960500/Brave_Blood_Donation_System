<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment Page</title>

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
<link rel="stylesheet" href="css/appointmentPage.css" type="text/css" />
<link rel="stylesheet" href="css/navbar.css" type="text/css" />
<link rel="stylesheet" href="css/footer.css" type="text/css" />

</head>
<body >

	<%@ include file = "header.jsp" %>

	<%@ include file = "navBar.jsp" %>

	<!--/new blood donors-->
	<h1 style="text-align:center">Getting an appointment to give blood</h1>

	<div class="card-group" style="margin-left: 80px">
		<div class="card text-white bg-info mb-3"
			style="max-width: 18rem; margin-right: 80px; margin-top: 20px">
			<div class="card-header">Become a blood donor</div>
			<div class="card-body">
				<h5 class="card-title">If you are completely new to blood
					donation check whether you are able to donate in here</h5>
				<a href="registerDonor.jsp" class="btn btn-danger">Register</a>
				
			</div>
		</div>

		<!--/already donors-->

		<div class="card text-white bg-info mb-3"
			style="max-width: 18rem; margin-right: 80px; margin-top: 20px">
			<div class="card-header">Already a blood donor?</div>
			<div class="card-body">
				<h5 class="card-title">Sign up to donate blood</h5>
				<br> <br> <br>
				<a href="bloodDonorProfileSignup.jsp" class="btn btn-danger">New account</a>
			</div>
		</div>
		<div class="card mb-3" style="max-width: 540px; margin-top: 20px; background-color:#D3D3D3">
			<div class="row g-0">
				<div class="col-md-4" >
					<img src="./images/ex6.jpeg" class="img-fluid rounded-start"
						alt="...">
				</div>
				<div class="col-md-8">
					<div class="card-body" style="background-color:#D3D3D3">
						<h5 class="card-title"
							style="color: red; text-decoration: underline;">HRH The
							Princess Royal opens new world class blood centre in Barnsley</h5>
						<p class="card-text">HRH The Princess Royal has officially
							opened the new NHS Blood and Transplant Blood Centre in Barnsley.
							The official opening took place on the afternoon of Tuesday 20
							July 2021.</p>
						<a href="#" class="btn btn-danger">Read</a>

					</div>
				</div>
			</div>
		</div>

	</div>
	
	<%@ include file = "footer.jsp" %>

</body>
</html>