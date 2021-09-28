<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http//:ww.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charsert=UTF-8">
<title>Notices Management-NEWS-Add New|Brave Blood Donation System</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">



</head>

<body>


<h1 style="color:red;font-family:Helvetica, sans-serif; font-size: 100px;">NEWS ARTICLES</h1>

<br>
<h4>New News Articles</h4>
<form  id="addNews"  class="border border-secondary needs-validation"
 action="AddNewsArticleServlet" method="post" enctype="multipart/form-data">
 <br>
 <div class="input-group mb-3">
 	<span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Article ID</span>
	<input type="text" name="newsId" class="form-control"  readonly="readonly" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
</div>


<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Author ID</span>
  <input type="text" name ="newsAuthorID" class="form-control"  aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Article Heading</span>
  <input type="text" name="newsHeading" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
</div>
<div class="input-group">
  <span class="input-group-text" style="width:150px;">Description</span>
  <textarea name="newsDescription"class="form-control" aria-label="With textarea" required></textarea>
</div>
<br>
<div class="input-group">
  <span class="input-group-text" style="width:150px;">Full Article</span>
  <textarea name="newsArticle"class="form-control" aria-label="With textarea" required></textarea>
</div>
<br>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Upload Image</span>
  <input name="newsPhoto"class="form-control" type="file" id="formFile" required >
</div>
<br>
 <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-success" style="width:150px; text-align: center;">Add</button>
            <a href="news2.jsp" class="btn btn-outline-dark" style="width:150px; text-align: center;">Close</a>            
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
	
	

	$('#addNews').on("submit", function(evenet) {
		
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
						
						
						url: "AddNewsArticleServlet",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
							if(data.trim() == "Success"){
								
								new swal("Good job!", "Added Successfully!", "success")
								.then((value) => {
								  window.location="news2.jsp"
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