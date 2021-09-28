<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="com.braveBloodDonation.entities.Donor"%>
<%@page import="com.braveBloodDonation.dao.DonorProfileDao"%>
<%
String username = request.getParameter("username");
Donor donor = DonorProfileDao.getDonorDetailsById(username);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">
<title>Donor Update</title>
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
	<%@ include file="header.jsp"%>

	<%@ include file="navBar.jsp"%>


	<h2 style="text-align: center">Donor Profile</h2>
	<br><br>
	<div class="container">
		<div class="form-group col-6 p-0">
			<form id="form" method="post" action="test.jsp"
				class="form-horizontal">
				<div class="form-group col-md-6" style="margin-left:410px">
					<label><b>Enter your username to access donor details</b></label> <br><input
						type="text" name="username" class="form-control" id="userInput"
						placeholder="user">
				</div>
				
				<div class="form-group col-md-6" align="center">

					<Button class="btn btn-danger" style="margin-left:490px; width: 80px;">Submit</Button>

				</div>

			</form>

		</div>
		
		
	</div>
	
	

	<div class="container" style="margin-left: 270px; padding-left:300px; padding-top: 30px; padding-bottom: 30px; margin-top: 100px; margin-bottom: 100px; width: 70%; border: 3px double #bb372d; border-width: thick">
		<div class="form-group col-12 p-0">
			<%
			Connection con;
			PreparedStatement pst;
			ResultSet rs;
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/brave_blood_donation_db?autoReconnect=true&useSSL=false",
					"root", "so1487906*");
			String inputUser = request.getParameter("username");
			if (inputUser == null || inputUser.isEmpty()) {
				pst = con.prepareStatement("select * from donor");
				rs = pst.executeQuery();
			} else {
				pst = con.prepareStatement("select * from donor where username =?");
				pst.setString(1, inputUser);
				rs = pst.executeQuery();
				while (rs.next()) {
			%>
			<h3>
				Email:&emsp;&emsp;&emsp;
				<%=rs.getString("email")%></h3><br>
			<h3>
				Phone:&emsp;&emsp;&ensp;&nbsp;
				<%=rs.getString("phone")%></h3><br>
			<h3>
				Address:&emsp;&emsp;
				<%=rs.getString("address")%></h3><br>
			<h3>
				Occupation:&ensp;
				<%=rs.getString("occupation")%></h3><br>
			<h3>
				Weight:&emsp;&emsp;&ensp;
				<%=rs.getString("weight")%></h3><br>
			<h3>
				Height:&emsp;&emsp;&ensp;&nbsp;
				<%=rs.getString("height")%></h3>
			<a href="#donorEdit" data-username="<%=donor.getUsername()%>"
				data-email="<%=donor.getEmail()%>"
				data-phone="<%=donor.getPhone()%>"
				data-address="<%=donor.getAddress()%>"
				data-occupation="<%=donor.getOccupation()%>"
				data-weight="<%=donor.getWeight()%>"
				data-height="<%=donor.getHeight()%>"
				style="margin-left: 140px; margin-top: 50px;" <%=donor.getEmail()%>
				class="btn btn-outline-danger" data-toggle="modal"
				data-target="#donorUpdateModal">Update</a>


			<%
			}
			}
			%>
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
						action="updateDonor" method="post" enctype="multipart/form-data">

						<br>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Username</span> <input type="text"
								class="form-control" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default"
								name="donorUsername" id="username" readonly="readonly">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Email</span> <input type="email"
								class="form-control" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" name="donorEmail"
								id="email">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Phone</span> <input type="text"
								class="form-control" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" name="donorPhone"
								id="phone">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Address</span> <input type="text"
								class="form-control" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" name="donorAddress"
								id="address">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Occupation</span> <input type="text"
								class="form-control" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default"
								name="donorOccupation" id="occupation" value="">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Weight Group</span> <select
								class="form-control" aria-label="Sizing example input"
								name="donorWeight" id="weight"
								aria-describedby="inputGroup-sizing-default" required>

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
								name="donorHeight" id="height"
								aria-describedby="inputGroup-sizing-default" >								
								
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
									style="width: 100px; text-align:center;">Update</button>
								<a href="test.jsp" class=" btn
									btn-outline-dark"
									style="width: 150px; text-align: center;">Back</a>
							</div>
						</div>
						<br>
					</form>
				</div>
			</div>
		</div>
	</div>





	<%@ include file="footer.jsp"%>

	<!-- jquery script -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script>
		$(document).on("click", "a[href='#donorEdit']", function() {
			
			var username = $(this).data('username');
			var email = $(this).data('email');
			var phone = $(this).data('phone');
			var address = $(this).data('address');
			var occupation = $(this).data('occupation');	
			var height = $(this).data('height');
			var weight = $(this).data('weight');

			$(".modal-body #username").val(username);
			$(".modal-body #email").val(email);
			$(".modal-body #phone").val(phone);
			$(".modal-body #address").val(address);
			$(".modal-body #occupation").val(occupation);
			$(".modal-body #height").val(height);
			$(".modal-body #weight").val(weight);

		});
	</script>

	<script>


$(document).ready(function (e) {
	
	console.log('loading camp cat edit page..');
	
	

	$('#updateDonorProfile').on("submit", function(evenet) {
		
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
						
						
						url: "updateDonor",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
							if(data.trim() == "done"){
								
								new swal("Good job!", "Update Successfully!", "success")
								.then((value) => {
								  window.location="test.jsp"
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