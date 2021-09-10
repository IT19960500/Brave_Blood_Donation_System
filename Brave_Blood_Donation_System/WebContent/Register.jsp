<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>

.background {
     background-image:url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9eT0nLzeRId25oYFyNgXx6k-59OYKMlvAjg&usqp=CAU); 
      width:100%
    }

error{
	font-size:17px;
	margin-top: 3px;
	color: red;
	display: block;
}


input[type=text],select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=email]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=date]{
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
  background-color: #4CAF50;
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

input[type=file]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=number]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 2px;
  background-color: #f2f2f2;
  
}


</style>

<meta charset="ISO-8859-1">
<title>Register</title>

<!-- css -->

	<link rel="stylesheet" href="css/style.css" type="text/css"/>
	<link rel="stylesheet" href="css/registercss.css" type="text/css"/>
		

 	
</head>

<body>

<!-- background -->

 <div class=background>
	
	
	
	

	
	
	<div class ="row mt-5">
		<div class = "col-md-4 offset-md-4">
		
	<h1>Create an Account</h1>
			
<!-- Register form -->
			
			<form action = "RegisterSevlet" method ="POST" enctype="multipart/form-data">
			  <div class="form-row">
			  
			  	
					  	
					     <div class="form-group col-md-6">
					      <label for="inputFName">First Name : </label>
					      <input name = "user_fname" type="text" class="form-control" id="inputFName" required>
					    </div>
					    
					   </div>
					   
					   <div class="form-row">
					    
					    <div class="form-group col-md-6">
					      <label for="inputLName">Last Name : </label>
					      <input name = "user_lname" type="text" class="form-control" id="inputLName" required>
					    </div>
					  
					   
					    <div class="form-group col-md-6">
					      <label for="inputEmail4">Email : </label>
					      <input name = "user_email" type="email" class="form-control" id="inputEmail4" placeholder="Email" required>
					    </div>			   
					   
					  
					   <div class="form-group col-md-4">
					    <label for="inputID">National ID : </label>
					    <input name = "user_nic" type="text" class="fressorm-control" id="inputID" required>
					  </div>
					  
					  <div class="form-group col-md-4">
					    <label for="inputDOB">Date of Birth : </label>
					   <input name = "user_dob" type="date" id="date" required>
					    </div>
		
	<!-- Gender with drop down -->	
					  
					    <div class="form-group col-md-4">
					      <label for="inputGender">Gender : </label>
					      <select name = "user_gender" id="inputGender" class="form-control" required>
					        <option>Male</option>
					        <option>Female</option>
					        <option>Other</option>
					      </select>
					    </div>
    <!-- Weight-->				    
					    <div class="form-group col-md-6">
					      <label for="inputWeight">Weight : </label>
					      <input name = "user_weight" type="number" class="form-control" id="inputWeight"  placeholder="Kg" required>
					    </div>
	
	<!-- Height-->	
					    <div class="form-group col-md-6">
					      <label for="inputHeight">Height : </label>
					      <input name = "user_height"type="number" class="form-control" id="inputHeight"   placeholder="cm" required>
					      
					    </div>
					    
					    
					    <div class="form-group col-md-6">
					      <label for="inputUName">User Name : </label>
					      <input name = "user_username"type="text" class="form-control" id="inputUName" required>
					    </div>
					    
					    <div class="form-group col-md-6">
						    <label for="inputPassword6">Password : </label>
						    <input name = "user_password" type="password" id="inputPassword6"  class="form-control mx-sm-3"  aria-describedby="passwordHelpInline"required>
						    <small id="passwordHelpInline" class="text-muted">
						      Must be 8-10 characters long.
						    </small>
						</div>
						  
					    
					    <div class="form-group col-md-6">
					      <label for="password">Confirm Password : </label>
					      <input name = "confirmpassword" type="password" class="form-control" id="password"  placeholder="Confirm Password" required>
					   	 
					    </div>
					    
					  </div>
					  
		<!-- Photo upload -->	
				  
					  <div class="form-group col-md-4">
						  <div class="input-group-prepend">
						    Upload your ID Image : 
						     <input name ="user_image" type="file" class="custom-file-input" id="inputGroupFile01">
						    
						  </div>
					</div>
				
					<div class="req"  >
					  	All fields are required.
				    </div>
					  
				    <div class="form-check">
					    <input name = "user_check" class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" required>
					    <label class="form-check-label" for="invalidCheck3">
					      Agree to terms and conditions
					    </label>
					      
				    </div>
  					
					 
					<div class="btn1"> 
					  <button type="submit"  class="btn">Create</button>
					</div>  
		</form>
		
		
		</div>
	
	</div>
	
 </div>
	
</body>



</html>