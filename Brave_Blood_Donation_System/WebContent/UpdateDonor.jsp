<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.braveBloodDonation.entities.Donor"%>
<%@page import="com.braveBloodDonation.dao.UpdateDonorDao"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">
<title>Update Profile</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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

	<%@ include file = "header.jsp" %>

	<%@ include file = "navBar.jsp" %>
	
	<h2 style="text-align: center">Donor Profile</h2>

	<div class="container"></div>

	<div class="container">
		<div class="form-group col-12 p-0"></div>
	</div>


	<div class="car"
		style="margin-left: 210px; padding-bottom: 50px; padding-left: 10px; margin-bottom: 60px; width: 50%; border: 3px double #bb372d; border-width: thick">
		<div class="row">
			<%
			ArrayList<Donor> user = UpdateDonorDao.getUser();
			for (Donor donor : user) {
			%>
			<div class="col-md-20">
				<div class="ca">
					<p style="margin-left: 280px; margin-top: 20px" class="card-text">
						<b>Username :</b><%=donor.getUsername()%></p>
					<p style="margin-left: 280px" class="card-text">
						<b>Email :</b><%=donor.getEmail()%></p>
					<p style="margin-left: 280px" class="card-text">
						<b>Phone :</b><%=donor.getPhone()%></p>
					<p style="margin-left: 280px" class="card-text">
						<b>Occupation :</b><%=donor.getOccupation()%></p>
					<p style="margin-left: 280px" class="card-text">
						<b>Address :</b><%=donor.getAddress()%></p>
					<p style="margin-left: 280px" class="card-text">
						<b>Weight :</b><%=donor.getWeight()%></p>
					<p style="margin-left: 280px" class="card-text">
						<b>Height :</b><%=donor.getHeight()%></p>

					<a href="#contactUsDetailsEdit"
						style="margin-left: 320px; margin-top: 50px;"
						<%=donor.getUsername()%>"
						class="btn btn-outline-danger"
						data-toggle="modal" data-target="#donorUpdateModal">Update</a>




				</div>
			</div>
		</div>


	</div>
	<%
	}
	%>

<div class="cards" style="float:right; margin-top:-510px; margin-right:60px">
	<div class="card" style="width: 18rem;">
		<img class="card-img-top" src="./images/ex7.png" alt="Card image cap">
		<div class="card-body">
			<h5 class="card-title">Coronavirus update</h5>
			<p class="card-text">How we're working to respond to the challenges caused by 
the coronavirus pandemic.
</p>
			<a href="#" style="margin-left:95px" class="btn btn-danger">Read</a>
		</div>
	</div>
<br>
	<div class="card" style="width: 18rem;">
		<img class="card-img-top" src="./images/ex8.png" alt="Card image cap">
		<div class="card-body">
			<h5 class="card-title">Covid Live Updates</h5>
			<p class="card-text">Cases and Deaths in Florida Hit Record Highs
The Delta variant of the coronavirus is spreading rapidly in the state. In Japan, the authorities will discard more than 1.6 million 
Moderna vaccine doses over contamination fears.</p>
			<a href="#" style="margin-left:95px" class="btn btn-danger">Read</a>
		</div>
	</div>
</div>


	<!-- Modal -->
	<div class="modal fade" id="donorUpdateModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel"
						style="color: red; font-family: Helvetica, sans-serif;">Update
						Donor Profile</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="updateDonorProfile"
						class="border border-secondary needs-validation" novalidate
						action="UpdateContactUsServlet" method="post"
						enctype="multipart/form-data">
						<br>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Email</span> <input type="email"
								class="form-control" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" name="contactUsId"
								id="contactus_id">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Phone</span> <input type="email"
								class="form-control" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" name="contactUsId"
								id="contactus_id">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Address</span> <input type="email"
								class="form-control" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" name="contactUsId"
								id="contactus_id">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Occupation</span> <input type="email"
								class="form-control" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" name="contactUsId"
								id="contactus_id">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Weight Group</span> <select
								class="form-control" aria-label="Sizing example input"
								name="contactUsQusType" id="contactus_qus_type"
								value="contactus_qus_type"
								aria-describedby="inputGroup-sizing-default" required>
								<option selected>Choose Weight Group</option>
								<option>Below 50</option>
								<option>50-60</option>
								<option>60-70</option>
								<option>70-80</option>
								<option>80-90</option>
								<option>90-100</option>
								<option>Above 100</option>
							</select>
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Height Group</span> <select
								class="form-control" aria-label="Sizing example input"
								name="contactUsQusType" id="contactus_qus_type"
								value="contactus_qus_type"
								aria-describedby="inputGroup-sizing-default" required>
								<option selected>Choose Height Group</option>
								<option>Below 140</option>
								<option>140-150</option>
								<option>150-160</option>
								<option>160-170</option>
								<option>170-180</option>
								<option>Above 180</option>
							</select>
						</div>

						<br>
						<div class="container bg-light">
							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-success"
									style="width: 100px; text-align: center;">Update</button>
								<a href="# class=" btn
									btn-outline-dark" style="width: 150px; text-align: center;">Back</a>
							</div>
						</div>
						<br>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>

<body>
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
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js">
		<script src="//cdn.jsdelivr.net/npm/sweetalert2@11">
	</script>
	<script>
		//edit contact us

		$(document).on("click", "a[href='#contactUsDetailsEdit']", function() {

			var email = $(this).data('username');

			$(".modal-body #username").val(email);

		});
	</script>


</body>

</html>