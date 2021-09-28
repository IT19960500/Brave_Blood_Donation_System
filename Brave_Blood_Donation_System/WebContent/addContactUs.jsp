<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact-Us|Brave Blood Donation System</title>
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
                        <a href="#" class="px-2" data-toggle="modal" data-target="#profile-model"> <span> <i class="fas fa-user-circle"></i> </span>   </a>
                        <a href="logout.jsp" class="px-1"> <span><i class="fas fa-sign-out-alt"></i></span> Logout !</a>
                    </p>
                </div>

            </div>
<%@ include file="navBar.jsp" %>
        </div> <!--/contaner-->
	
	
	</header>
	
	<br>
<h1 style="color:red;font-family:Helvetica, sans-serif; font-size: 100px;">CONTACT US</h1>

<form action="AddContactUsServlet" method="post" 
style="width:70%;margin-left:10px;"class="border border-secondary needs-validation" 
id="addContact" enctype="multipart/form-data">
<br>
<h4>What You Want To Know?</h4>
<div class="input-group mb-3">
  <input type="hidden" class="form-control" readonly="readonly" name="contactUsId" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" >
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Question About</span>
   <select class="form-control" id="exampleFormControlSelect1" aria-label="Sizing example input" 
   name="contactUsQusType" aria-describedby="inputGroup-sizing-default"  required>
   
   	  <option></option>
      <option>Appointments</option>
      <option>Organizing Camps</option>
      <option>Registration</option>
      <option>Requirements to be a blood donor</option>
    </select>
</div>
<div class="input-group">
  <span class="input-group-text" style="width:150px;">Question</span>
  <textarea class="form-control" name="contactUsQus" aria-label="With textarea" required></textarea>
</div>
<br>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Name</span>
  <input type="text" class="form-control" name="contactUsName" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
 </div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">E-mail</span>
  <input type="email" class="form-control" name="contactUsEmail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
  aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" 
  placeholder="abc@gmail.com"required>
 </div>

<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Phone</span>
  <input type="tel" class="form-control" name="contactUsPhone"
  pattern="[0-9]{3}-[0-9]{7}" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" 
  placeholder="123-4567890"required>
</div>
<br>
 <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-success" style="width:150px; text-align: center;">Add</button> 
            <a href="home.jsp" class="btn btn-outline-dark" style="width:150px; text-align: center;">Back</a>           
        </div>
 </div>
 <br>
 </form>
 <div class="container" >
 <div class="card" style="width:15rem; height: 15rem;text-align:center;margin-top:-480px;float:right;" >
      <div class="card-body" >
        <h5 class="card-title" style="color:red;">Want to Become a Blood Donor?</h5>
        <p class="card-text">Join With Us Today!</p>
        <a href="#" class="btn btn-info">Register</a>
      </div>
    </div>
    <br>
     <div class="card" style="width:15rem; height: 15rem;text-align:center;margin-top:-250px;float:right;">
      <div class="card-body">
        <h5 class="card-title" style="color:red;">Already Have an Account?</h5>
        <p class="card-text">Sign-In Now!</p>
        <a href="#" class="btn btn-info">Sign-In</a>
      </div>
    </div>
    </div>
<br>
	
	
	<footer>
	<%@ include file="footer.jsp" %>
	
	</footer>
	
 <!-- jquery script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>

//Add News category

$(document).ready(function (e) {
	
	console.log('loadring camp cat edit page..');
	
	

	$('#addContact').on("submit", function(evenet) {
		
		evenet.preventDefault();
		
	
		let form = new FormData(this);
		
		
		Swal.fire({
			  title: 'Are you sure?',
			  text: "Do you want to sumbit this!",
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: 'Yes, Submit the inquiry!'
			}).then((result) => {
				
			  if (result.isConfirmed) {
		
					$.ajax({
						
						
						url: "AddContactUsServlet",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
							if(data.trim() == "Success"){
								
								new swal("Good job!", "Submitted Successfully!", "success")
								.then((value) => {
								  window.location="home.jsp"
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

//end of update news category


</script>

	
</body>
</html>