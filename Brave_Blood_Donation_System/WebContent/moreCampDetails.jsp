<%@page import="com.braveBloodDonation.entities.campCategory"%>
<%@page import="com.braveBloodDonation.dao.donationCampManagemetDButill"%>
<%@page import="com.braveBloodDonation.entities.campDetails"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
	<!-- get camp id -->    
    <% 
    
	    int capmId = Integer.parseInt(request.getParameter("campID"));
    	
    	campDetails cd = donationCampManagemetDButill.getCampDetailsByCampId(capmId);
    	
    	campCategory ct = donationCampManagemetDButill.getCampCatgeoryDetailsByCampId(cd.getCampCat());
    
    %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>More Camp Details</title>


	<!-- boostrap cdn -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<!-- font awasome icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!--font awesom CDN-->
    <script src="https://kit.fontawesome.com/2a0f6dfc30.js" crossorigin="anonymous"></script>
    
    <!-- css -->
	<link rel="stylesheet" href="css/style.css" type="text/css"/>
	<link rel="stylesheet" href="css/headerStyle.css" type="text/css"/>

</head>
<body>

<!-- include header -->
	<header>
	
		
		<div class="container">

            <div class="row">
                <div class="col-md-4 col-sm-12 col-12" style="height: 150px;">
                    
				
				<!-- logo -->
				<div class="col-md-4 col-12 ">
					<div class="bravelogo" >
						<img alt="logo" src="./images/logo.jpg" style="width: 100px; height: 100px; margin-top: 10px; margin-bottom: 10px">
					</div>
				</div>	
					
                </div>

                <div class="col-md-4 col-12 text-center">
                    <h2 class="my-md-3  site-titel text-white">Brave Blood Donor</h2>
                </div>

                <div class="col-md-4 col-12 text-right">
                    <p class="my-md-4 header-link">
                        <a href="#" class="px-2" data-toggle="modal" data-target="#profile-model"> <span> <i class="fas fa-user-circle"></i> </span>   </a>
                        <a href="logout.jsp" class="px-1"> <span><i class="fas fa-sign-out-alt"></i></span> Logout !</a>
                    </p>
                </div>

            </div>

        </div> <!--/contaner-->
	
	
	</header>
	
	
	<!-- include navbar -->
	<div class="container">
	
		<%@ include file = "navBar.jsp"  %>
	
	</div>
	
	
	
	<!-- details are -->
	
		<!-- titel area -->
		<div class="container-fluid" style="background: #d9d9d9; padding-top: 10px; padding-bottom: 10px; margin-top: -20px;">
			<div class="container">
			<a  href="campSchedule.jsp" type="button" class="btn btn-outline-secondary" ><span><i class="fas fa-chevron-left"></i></span></a>
			<h3 style="display: inline-block; color: #000000; margin-left: 30px; transform: translateY(5.5px); font-weight: bold;">CAMP DETAILS</h3>
			</div>
		</div>
		
		<!-- content -->
		<div class="container-fluid">
			
			<!-- poster are -->
			<div class="container mt-3">
			
				<div class="row" style="">


					<div class="col-md-6" >
						<img class="img-thumbnail" style="width: 485px; height: 485px" src="images/<%= cd.getPoster() %>" alt="Card image cap" id="imgPoster">
					</div>
										
					<div class="img-thumbnail col-md-6" style="max-width: 620px; margin-left: -62px; background: #f2f2f2">
						<div class="gmap_canvas" ><iframe src="<%= cd.getLocation() %>"
						 width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
					</div>
					
					
				</div>
			
			</div>
			
			<!-- table are -->
			
			<div class="container mt-3" style="margin-bottom: 20px;">
				<table class="table">
				  <thead class="thead" style="background: #bb372d; color: #fff">
 					<tr>
						      <th scope="col">Camp Category</th>
						      <th scope="col">Organization Name</th>
						      <th scope="col">Date</th>
						      <th scope="col">Time</th>
						      <th scope="col">Address</th>
						      <th scope="col">Expected Donors</th>
						      <th scope="col">Arrangement</th>
						      <th scope="col">Organizer Name </th>
						      <th scope="col">Organizer Email </th>
						 
					</tr>
				  </thead>
				  <tbody style="font-weight: bold;">
				    <tr>
				      <td><%= ct.getCampName() %></td>
				      <td><%= cd.getOrganizationName() %></td>
				      <td><%= cd.getCampDate() %></td>
				      <td><%= cd.getCampTime() %></td>
				      <td><%= cd.getAddress() %></td>
				      <td><%= cd.getExceptDonors() %></td>
				      <td><%= cd.getArrangement() %></td>
				      <td><%= cd.getOrganizerName() %></td>
				      <td><%= cd.getOrganizerEmail() %></td>
				    </tr>
				</table>
			</div>
		
		</div>
	
	
	
	<!-- // details are -->
	
		
	
	
		<!-- include footer -->
	<%@ include file = "footer.jsp"  %>
	
	
	
	
	
			<!-- jquery script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script type="text/javascript" src="js/editdata.js"></script>
	

</body>
</html>