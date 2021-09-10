<%@page import="com.braveBloodDonation.entities.Message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<!-- css -->

	<!-- boostrap cdn -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<!-- font awasome icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!--font awesom CDN-->
    <script src="https://kit.fontawesome.com/2a0f6dfc30.js" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="css/style.css" type="text/css"/>
	
	<link rel="stylesheet" href="css/headerStyle.css" type="text/css"/>
	<link rel="stylesheet" href="css/logincss.css" type="text/css"/>

	
	
<style>

		
		
		input[type=text]{
		  width: 100%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}
		input[type=submit] {
		  width: 100%;
		  background-color: red;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		}
		input[type=password]{
		  width: 100%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  border-radius: 4px;
		  box-sizing: border-box;
		}		
		
		
	</style>
	

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
                        <a href="Profile.jsp" class="px-2" data-toggle="modal" data-target="#profile-model"> <span> <i class="fas fa-user-circle"></i> </span>   </a>
                        <a href="Logout.jsp" class="px-1"> <span><i class="fas fa-sign-out-alt"></i></span> Logout !</a>
                    </p>
                </div>

            </div>

        </div> <!--/contaner-->
	
	
	</header>
	
	
		
<div class=background>	
		<div class ="row mt-5">
		
		 	<div class = "col-md-4 offset-md-4">
		
					
							
				<!-- Login form -->
							
							<form class="login"  action = "LoginServlet" method ="POST" enctype="multipart/form-data" style="border-width:1px; border-style:solid;padding: 15px 32px;">
							
								<h2>Donor sign in </h2>
								
								<%
									Message m = (Message) session.getAttribute("msg");
									if(m != null) {
								%>
								
								<div class ="alert alert-primary" role = "alert">
									<%= m.getContent() %>
								</div>
								
								<%
										session.removeAttribute("msg");
									}
								%>
							
							  <div class="form-row">
							  
							  			
										  <div class="form-group">
										    <label for="exampleInputUsername">User Name</label>
										    <input name = "user_name" type="text" class="form-control" id="exampleInputUsername" aria-describedby="eusernameHelp" placeholder="Enter Username">
										    <small id="usernamelHelp" class="form-text text-muted"></small>
										  </div>
										  <div class="form-group">
										    <label for="exampleInputPassword1">Password</label>
										    <input name = "user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
										  </div>
										  <div class="form-check">
										    <input type="checkbox" class="form-check-input" id="exampleCheck1">
										    <label class="form-check-label" for="exampleCheck1">Keep me sign in</label>
										  </div>
										  <div class="btnl"> 
										    <button type="submit" class="btn btn-primary" >Login</button>
										  </div>
										  <div class="text-center d-flex justify-content-between mt-4">
			                                    <p> OR &nbsp<a href="Register.jsp" class="font-italic text-muted"> <u>Create Account</u></a></p>
			                              </div>
										 
							  </div>
							
						   </form>
					
					
				
			 </div>
			
		</div>
		
		
		
		
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