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
	
	<div style="margin-left:100px; margin-right:500px;">
	<br><br>
	<h2>The donation process</h2><br>
	<p>Giving blood is simple and it saves lives. When you give blood, it is collected so it can be used to treat someone else.</p>
	<h2>Before you give blood</h2>
	<p>1) <a href="registerDonor.jsp">Register</a> your interest in being a donor</p>
	<p>2) <a href="bloodDonorProfileSignup.jsp">Sign in to your online account</a> and find an appointment – a number of appointments can be booked in advance. If you are unable to book now, then please try for a later date. A limited number of walk-in slots are available.</p>
	<p>3) If you are unable to keep your donation appointment please try and give us at least 3 days' notice.</p>
	
	<h2>When you give blood</h2><br>
	<p>This is what will happen when you give blood. The whole process takes about an hour. </p>
	<h3>1. Welcome and preparation</h3>
	<p>We will ask you to <a href="https://nhsbtdbe.blob.core.windows.net/umbraco-assets-corp/23778/2122-0067-donor-consent-information-leaflet-blood-final.pdf">read our donor consent booklet (PDF 517KB)</a> which explains the importance of blood safety. It’s important to read this whenever you attend because advice does change. We will give you 500ml of fluid just before you give blood. Drinking this over about 5 minutes will help with your well-being during and after donation.</p>
	
	<h3>2. Health screening</h3>
	<p>We make sure it is safe for you to donate, and that your blood donation is safe for a patient to receive.</p>
	<ul>
		<li>We confirm your identity and ask you about the information on your donor health check form; a registered nurse may follow up if necessary.</li>
		<li>We test a drop of blood from your finger to check the iron levels (haemoglobin) in your blood.</li>
	</ul>
	<p>If you are not able to donate we will explain why, and may ask you to make another appointment.</p>
	<p>If you are able to donate you will be asked to sit in a waiting area until you are called to a donation chair. </p>
	
	<h3>3. Your blood donation</h3>
	<p>We examine your arm and place a cuff on your arm to maintain a small amount of pressure during donation (this does not measure blood pressure).</p>
	<p>We then examine your arm to find a suitable vein and clean it with an antiseptic sponge.</p>
	<ol>
		<li>We will insert a needle in your arm which will collect your blood into a blood bag with your unique donor number.</li>
		<li>You should not feel any discomfort or pain. If you do, tell a member of staff.</li>
		<li>A scale weighs the blood and stops when you have donated 470ml (or just under a pint). This usually takes between 5-10 minutes.</li>
		<li>The needle will be removed and a sterile dressing applied to your arm.</li>
	</ol>
	
	
	</div>
	<br><br><br><br>
	<%@ include file = "footer.jsp" %>

</body>
</html>