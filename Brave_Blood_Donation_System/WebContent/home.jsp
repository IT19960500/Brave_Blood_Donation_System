<%@page import="com.braveBloodDonation.entities.User"%>
<%@page import="com.braveBloodDonation.entities.Message"%>
<%@page import="java.util.ArrayList"%>;
<%@page import="com.braveBloodDonation.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%
    
    	User user =(User)session.getAttribute("curretUser");
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<title>Brave Blood Donation</title>
	
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
                <div class="col-md-4 col-sm-12 col-12">
                    
					
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
                        <a href="home.jsp" class="px-2" data-toggle="modal" data-target="#profile-modal"> <span> <i class="fas fa-user-circle"></i> </span> <%= user.getUsername() %> </a>
                        <a href="Logout.jsp" class="px-1"> <span><i class="fas fa-sign-out-alt"></i></span> Logout !</a>
                    </p>
                </div>

            </div>

        </div> <!--/contaner-->
	
	
	</header>
	
	
	<!-- Profile Modal -->
	
	
			
			<!-- Modal -->
			<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header primary-background text-white">
			      	
			        <h5 class="modal-title" id="exampleModalLabel"><%= user.getUsername() %></h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          
			        </button>
			      </div>
			      <div class="modal-body">
			      	<div class= "container text-center">
			      	
			      			 <img src="./images/donor.jpg">	      	
			   				 <h5 class="modal-title" id="exampleModalLabel"><%= user.getUsername() %></h5>
			      	</div>
			      
			      
			      
	 <!-- get massage with session -->
    
						    <%
							//create the object from Message class and assing the session it
						    	Message m = (Message) session.getAttribute("msg");
						    
								//if the session is not null, display the msg 
						    	if(m != null){
						    		
						    		%>
						    			<div class="alert <%= m.getCssClass() %>" role="alert">
	  								 		<%= m.getContent() %>
										</div>
						    		<%
						    		
						    	}
						    	
								//after the displaing the msg remove session
								session.removeAttribute("msg");
						    
						    %>
			      
			      
			      <div id ="profile_details">
				      <table class="table">
				      
				        <tbody>
						    <tr>
						      <th scope="row">First Name :</th>
						      <td><%= user.getfName() %></td>
						      
						    </tr>
						    <tr>
						      <th scope="row">Last Name :</th>
						      <td><%= user.getlName() %></td>
						      
						    </tr>
						    <tr>
						      <th scope="row">Email Address :</th>
						      <td><%= user.getEmail() %></td>
						    </tr>
						    
						  	<tr>
						      <th scope="row">Date of Birth :</th>
						      <td><%= user.getDob()%></td>
						    </tr>
						    
						     <tr>
						      <th scope="row">National ID :</th>
						      <td><%= user.getNic() %></td>
						    </tr>
						    
						     <tr>
						      <th scope="row">Gender :</th>
						      <td><%= user.getGender() %></td>
						    </tr>
						    
						    <tr>
						      <th scope="row">Weight :</th>
						      <td><%= user.getWeight() %> Kg</td>
						    </tr>
						    
						    <tr>
						      <th scope="row">Height :</th>
						      <td><%=  user.getHeight() %> cm</td>
						    </tr>
						  </tbody>
				            
				       
				      </table>
			      </div>
			      
<!--Profile Edit  -->
			      
			      <div id="edit_details" style="display: none;">
		      
		      	<h3 class="mt-3 text-center">Edit Your Profile</h3>
		      	
		      		<form id="editFrom" action="userEditServlet" method="post" enctype="multipart/form-data">
		      		
		      			<table class="table">
	
						  <tbody>

						    <tr>
						      <th scope="row">Full Name :</th>
						      <td> <input name="user_fname" type="text" class="form-control" id="inputFName"  value="<%= user.getfName() %>"> </td>
						      
						    </tr>
						    <tr>
						      <th scope="row">Last name :</th>
						      <td>  <input name="user_lname" type="text" class="form-control" id="inputLName"  value="<%= user.getlName() %>" ></td>
						    </tr>
						    
						  	<tr>
						      <th scope="row">Email Address :</th>
						      <td> <input name="user_email" type="email" class="form-control" id="inputEmail4" value = "<%= user.getEmail() %>" > </td>
						    </tr>
						    
						     <tr>
						      <th scope="row">National ID :</th>
						      <td> <input name="user_nic" type="text" class="form-control" id="inputID"  value = "<%= user.getNic() %>"> </td>
						    </tr>
						    
						     <tr>
						      <th scope="row">Date of Birth :</th>
						      <td> <input name="inputDOB" type="date" class="form-control" id="date"  value="<%= user.getDob() %>" ></td>
						    </tr>
						    
						    <tr>
						      <th scope="row">Gender :</th>
						      <td> <input name="user_gender"  class="form-control" id="inputGender"  value="<%= user.getGender() %>" ></td>
						    </tr>
						    
						    <tr>
						      <th scope="row">Weight :</th>
						      <td> <input name="user_weight" type="number" class="form-control" id="inputWeight"  value="<%= user.getWeight() %>" ></td>
						    </tr>
						    
						    <tr>
						      <th scope="row">Height :</th>
						      <td> <input name="user_height" type="number" class="form-control" id="inputHeight"  value="<%= user.getHeight() %>" ></td>
						    </tr>
						    
						    <tr>
						      <th scope="row">User Name :</th>
						      <td> <input name="user_username" type="text" class="form-control" id="inputUName"  value="<%= user.getUsername() %>" ></td>
						    </tr>
						    
						    <tr>
						      <th scope="row">Password :</th>
						      <td> <input name="user_password" type="password" class="form-control" id="inputPassword6" value="<%= user.getPassword() %>" ></td>
						    </tr>
						    
						    <tr>
						      <th scope="row">Confirm Password</th>
						      <td> <input name="confirmpassword" type="password" class="form-control" id="password" value="<%= user.getImage() %>" ></td>
						    </tr>
						  </tbody>
						  
						  <tr>
						      <th scope="row">Upload your ID Image :</th>
						      <td> <input name="user_image" type="file" class="form-control" ></td>
						    </tr>
						  </tbody>
					</table>
					
						<div class="container">
						
							<button id="saveBtn" type="submit" class="btn btn-outline-primary float-right">Save</button>
						
						</div>			
		      		
		      		</form>
		      
		      </div>
		      
		      
		      
			      
<!--/Profile Edit  -->

					<!-- delete user details -->
		     			 <div id="delete_details" style="display: none;">
			     			 	
			     			 	<div class="container text-center">
			     			 		
			     			 		<h5 style="color: red">Dear <%= " "+user.getUsername()+", " %> Your are trying to delete your account now!!</h5>
			     			 		<br>
			     			 		<p style="font-weight: bold">This will delete your account permanently... There for we have to confirmation from you</p>
			     			 		
			     			 		<p style="font-weight: bold">Still if your want to delete your account !, Please enter you username..</p>
			     			 		<br>
			     			 		
			     			 		<form id="delete" action="userDeleteServlet" method="post">
			     			 		
			     			 		 <div class="form-group">
									    <label for="exampleInputUsername" class="float-left" style="font-weight: bold">Username</label>
									    <input name="user_username" type="text" class="form-control" id="inputUName" aria-describedby="usernameHelp"  required="required">
									    
									 </div>
			     			 			
			     			 			<button id="deleteBtn" type="submit" class="btn btn-outline-danger float-right">Delete</button>
			     			 			
			     			 		</form>
			     			 	</div>
			     			 	
		     			 </div>
			      
			      
			      
			      </div>
			      
			    <div class="modal-footer">
		          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		          <button id="delete_button" type="button" class="btn btn-danger">Delete</button>
		          <button id="edit_button" type="button" class="btn btn-primary">Edit</button>
		      	</div>
			      
			    </div>
			  </div>
			</div>
			
			
				
<!-- /Profile Modal -->	
	
	
	<footer>
	
	
	</footer>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- jquery script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script type="text/javascript" src="js/editdata.js"></script>
	<script type="text/javascript" src="js/profileScript.js"></script>
	
		
	
</body>
</html>