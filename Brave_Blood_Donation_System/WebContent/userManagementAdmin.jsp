<%@page import="java.util.List"%>
<%@page import="com.braveBloodDonation.entities.User"%>
<%@page import="com.braveBloodDonation.dao.UserDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<!-- boostrap cdn -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<!-- css -->
	<link rel="stylesheet" href="css/userManagementAdmin.css" type="text/css"/>
	
	
	
	<!-- font awasome icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!--font awesom CDN-->
    <script src="https://kit.fontawesome.com/2a0f6dfc30.js" crossorigin="anonymous"></script>
    
 	<!-- date and time picker css -->
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

<style>

h1 {
  text-align: center;
}

table, th, td {
  border: 2px solid black;
  
}

</style>


</head>
<body>		


		  <!-- User management -->
		  
<div class="userTab">
		  	
		  		<div class="container btn-area" style="max-width: 2000px">
				
					<h1>User Accounts</h1>
					
					
					<div class="float-right" style="display: inline-block;">
					  <form class="form-inline" id="searchUdetailsServelet" action="searchUdetailsServelet" method="post" enctype="multipart/form-data">
   						 <input name="serachData" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    					 <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    					 <br><br>
    					 <br>
  					  </form>		
					</div>
					<br>
				</div>
		  	
		  		<div class="container table-area" style="max-width: 2000px  ">
		  	
				  	<table class="table table-hover" id="user_table" border="1">
						  <thead  class="text-center" style="font-weight: bold;">
						    <tr bgcolor="#ddd">
						      <th scope="col">User ID</th>
						      <th scope="col">First Name</th>
						      <th scope="col">Last Name</th>
						      <th scope="col">Email Address</th>
						      <th scope="col">Date of Birth</th>
						      <th scope="col">National ID</th>
						      <th scope="col">Gender</th>
						      <th scope="col">Weight</th>
						      <th scope="col">Height</th>
						      <th scope="col">Username</th>
						      <th scope="col">Image of National ID</th>
						      
						 
						      <th scope="col" style="width: 150px;">Action</th>
						    </tr1>
						  </thead>
						  <tbody class="text-center">
						 	
						 	<%
						 		String serachData =  request.getParameter("serachData");
						 	
						 		ArrayList<User> user = UserDao.getAlluserDetails();
						 		
						 		List<User> sreachDetails = UserDao.getUserBySearch(serachData);
						 		
						 		
						 							 		
						 		for(User u:user){
						 		%>
						 		
								    <tr style="font-weight: bold;">
									      <td> <%= u.getId() %> </td>
									      <td> <%= u.getfName() %> </td>
									      <td> <%= u.getlName() %> </td>
									      <td> <%= u.getEmail() %> </td>
									      <td> <%= u.getDob() %> </td>
									      <td> <%= u.getNic()%> </td>									      
									      <td> <%= u.getGender() %> </td>
									      <td> <%= u.getWeight() %> </td>
									      <td> <%= u.getHeight() %> </td>
									      <td> <%= u.getUsername() %> </td>
									      <td> <%= u.getImage() %> </td>
									     
									     <td>
											
												<a href="userDeleteServlet" onclick="userdetailsDelete(user_username)(<%= u.getId() %>)" class="btn btn-danger " type="button" ><i class="far fa-trash-alt"></i></a> 
												
																
						 			     </td>
								    </tr>
						 			
						 		
						 		
						 		<%
						 		}
						 	%>

						 </tbody>
					</table>
		  	
		  	<button type="button" class="btn btn-danger" id="btnExport"  > <span><i class="fas fa-print"></i> </span>  Generate Report</button>
					
		  	</div>

</div>	
		  <!-- end of User management -->
		  
	
	
	
		
		
		  	
		  	
		
		<!-- jquery script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	
	
	<!-- pdf --> 
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
	<script type="text/javascript" src="js/userdeatailsReport.js"></script>
    

    	
	<script>
	
	$(document).ready(function() {
		
		console.log('loard addd category data...')
		
		
	})
	</script>
	
	


</body>
</html>