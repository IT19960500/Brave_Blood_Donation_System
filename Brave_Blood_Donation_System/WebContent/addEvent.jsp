<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notices Management-EVENTS-Add New|Brave Blood Donation System</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<h1 style="color:red;font-family:Helvetica, sans-serif; font-size: 100px;">EVENT ARTICLES</h1>

<form id="addEvent" action="AddEventArticleServlet" method="post" class="border border-secondary needs-validation"  enctype="multipart/form-data">
<br>
<h4>New Event Articles</h4>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Event ID</span>
  <input type="text" class="form-control"name="eventId"   readonly="readonly" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
  	 
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Author ID</span>
  <input type="text" class="form-control" name="eventAuthorID" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Article Heading</span>
  <input type="text" class="form-control" name="eventHeading" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
 </div>
<div class="input-group">
  <span class="input-group-text" style="width:150px;">Description</span>
  <textarea class="form-control" name="eventDescription"aria-label="With textarea" required></textarea>
</div>
<br>
<div class="input-group">
  <span class="input-group-text" style="width:150px;">Article</span>
  <textarea class="form-control" name="eventArticle"aria-label="With textarea" required></textarea>
</div>
<br>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Upload Image</span>
  <input class="form-control" name="eventPhoto" type="file" id="formFile" required>
</div>
<br>
 <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-success" style="width:150px; text-align: center;">Add</button> 
            <a href="event2.jsp" class="btn btn-outline-dark" style="width:150px; text-align: center;">Back</a>           
        </div>
 </div>
 <br>
 </form>
 
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
	
	

	$('#addEvent').on("submit", function(evenet) {
		
		evenet.preventDefault();
		
	
		let form = new FormData(this);
		
		
		Swal.fire({
			  title: 'Are you sure?',
			  text: "Do you want to add this!",
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: 'Yes, add the article!'
			}).then((result) => {
				
			  if (result.isConfirmed) {
		
					$.ajax({
						
						
						url: "AddEventArticleServlet",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
							if(data.trim() == "Success"){
								
								new swal("Good job!", "Added Successfully!", "success")
								.then((value) => {
								  window.location="event2.jsp"
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