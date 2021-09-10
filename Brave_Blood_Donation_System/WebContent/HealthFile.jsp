<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.braveBloodDonation.entities.Health"%>
<%@page import="com.braveBloodDonation.dao.HealthDao"%>
<!DOCTYPE html> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notices Management-Health|Brave Blood Donation System</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- font awasome icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--font awesom CDN-->
<script src="https://kit.fontawesome.com/2a0f6dfc30.js" crossorigin="anonymous"></script>
    
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css"/>
<link rel="stylesheet" href="css/admincss.css" type="text/css"/>
</head>

<body>

		
<h1 style="color:red;font-family:Helvetica, sans-serif; font-size: 100px;">HEALTH ARTICLES</h1>
		<div class="col-md-6 mb-4">
      		<div class="input-group md-form form-sm form-2 pl-0">
        		<input class="form-control my-0 py-1 amber-border" type="text" placeholder="Search" aria-label="Search">
        			<div class="input-group-append">
          				<span class="input-group-text amber lighten-3" id="basic-text1"><i class="fas fa-search text-grey" aria-hidden="true"></i></span>
           				<a href="addHealth.jsp" class="btn btn-danger" style="background: #bb372d;">Add New Article </a>                                                                  
        			</div>
      		</div>
    	</div>
	

<div class="container table-area">
		  	
			  	<table  id="healthTable">
					  
					  <tbody>
					  
					  <%
					  	ArrayList<Health> health = HealthDao.getAllHealth();
					  	
					  	for(Health health1:health){
					  	
					  		%>
					  		<tr style="font-weight: bold;">
					  			<td>
					 				<div class="card mb-3" style="max-width: 640px;">
  										<div class="row g-0">
   											 <div class="col-md-4">
      											<img style="height:15vw; object-fit:cover;"src="images/<%= health1.getHealthPhoto() %>"
      											alt="Card image cap" class="img-fluid rounded-start" alt="...">
    										</div>
    									<div class="col-md-8">
      								<div class="card-body">
						        <h5 class="card-title">Article Heading:<%= health1.getHealthHeading()  %></h5>
						        <p class="card-text">Description:<%= health1.getHealthDescription() %></p>
						        <p class="card-text"><small class="text-muted">Health Id:<%= health1.getHealthId() %></small></p>
						        <p class="card-text"><small class="text-muted">Author Id:<%= health1.getHealthAuthorID() %></small></p>
						         <p class="card-text"><small class="text-muted">Article:<%= health1.getHealthArticle() %></small></p>
								<a href="#healthDetailsEdit"
														
											data-healthid="<%= health1.getHealthId() %>"
											data-healthauthorid="<%= health1.getHealthAuthorID() %>"
											data-healthheading="<%= health1.getHealthHeading()  %>"
											data-healthdescription="<%= health1.getHealthDescription() %>"
											data-healtharticle="<%= health1.getHealthArticle() %>"
											data-healthphoto="<%= health1.getHealthPhoto() %>"
			
										 class="btn btn-warning mr-2" type="button" data-toggle="modal" data-target="#healthModal"><i class="fas fa-pen"></i></a>
										 <a href="#" onclick="getHealthIDDelete(<%=health1.getHealthId() %>)" class="btn btn-danger " type="button" ><i class="far fa-trash-alt"></i></a>
											
      </div>
    </div>
  </div>
</div>
				</td>
				</tr>	  		
							   
					  		
					  		<%
					  	}
					  %>
					  
					
					  </tbody>
				</table>
		  	
		  	</div>
		  	
	
	<!-- Modal -->
<div class="modal fade" id="healthModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="color:red;font-family:Helvetica, sans-serif;">Update Event Articles </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
<form  id="updateHealth" action="UpdateHealthServlet" method="post" enctype="multipart/form-data" class="border border-secondary needs-validation" novalidate>
<br>
<h4>Update Health Articles</h4>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Health Article ID</span>
  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
  readonly="readonly" name="healthId" id="health_id" value="health_id">
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Author ID</span>
  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" 
   name="healthAuthorID" id="health_author_id"  value="health_author_id"required>
  	  <div class="invalid-tooltip">
        Please provide the Author ID.
      </div>
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Article Heading</span>
  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" 
  name="healthHeading" id="health_heading" value="health_heading" required>
     <div class="invalid-tooltip">
        Please provide the Article Heading.
      </div>
</div>
<div class="input-group">
  <span class="input-group-text" style="width:150px;">Description</span>
  <textarea class="form-control" aria-label="With textarea" 
  name="healthDescription" id="health_description" value="health_description"required></textarea>
      <div class="invalid-tooltip">
        Please provide the Article description.
      </div>
</div>
<br>
<div class="input-group">
  <span class="input-group-text" style="width:150px;">Article</span>
  <textarea class="form-control" aria-label="With textarea" 
  name="healthArticle" id="health_article" value="health_article"required></textarea>
      <div class="invalid-tooltip">
        Please provide the Article.
      </div>
</div>
<br>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Upload Image</span>
  <input class="form-control" type="file"  name="healthPhoto" id="health_photo" value="health_photo" required>
  <div class="invalid-tooltip">
        Please provide an Image.
      </div>
</div>
<br>
 <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-success" style="width:150px; text-align: center;">Update</button>
            <a href="health2.jsp" class="btn btn-outline-dark" style="width:150px; text-align: center;">Close</a>               
        </div>
 </div>
 <br>
 </form>
 
      </div>
    </div>
  </div>
</div>	



<!-- jquery script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


<script>


//edit camp category

$(document).on("click", "a[href='#healthDetailsEdit']", function () {
	
	var healthId = $(this).data('healthid');
    var healthAuthorId = $(this).data('healthauthorid');
    var healthHeading = $(this).data('healthheading');
    var healthDescription = $(this).data('healthdescription');
    var healthPhoto = $(this).data('healthphoto');
    var healthArticle = $(this).data('healtharticle');
    
    $(".modal-body #health_id").val( healthId );
    $(".modal-body #health_author_id").val( healthAuthorId );
    $(".modal-body #health_heading").val( healthHeading );
    $(".modal-body #health_description").val( healthDescription);
    $(".modal-body #health_article").val( healthArticle);
	
	});

</script>

<script>

//edit camp category

$(document).ready(function (e) {
	
	console.log('loadring health edit page..');
	
	

	$('#updateHealth').on("submit", function(evenet) {
		
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
						
						
						url: "UpdateHealthServlet",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
							if(data.trim() == "done"){
								
								new swal("Good job!", "Update Successfully!", "success")
								.then((value) => {
								  window.location="health2.jsp"
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

//end of edit camp category


</script>

<script>

function getHealthIDDelete(healthid) {
	
	Swal.fire({
		
		  title: 'Are you sure?',
		  text: "You won't be able to revert this!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Yes, delete it!'
	
	}).then((result) => {
		if (result.isConfirmed) {
			
			$.ajax({
				
				//goto jsp page
				url : "healthDeleteServlet",
				type: 'POST',
				data: {hId: healthid},
				success: function (data, textStatus, jqXHR) {
					
					 Swal.fire('Done!', '', 'success')
					 .then((result) => {
							
							if (result.isConfirmed) {
				  				
								
									if(data.trim() == "done"){
									
											window.location="health2.jsp"
										
									}else{
										swal(data);
										
									}
				   
									
								}
							});
					
				}
				
			});//ajax end
			
			
		} 
		
								
	});//swal end
	
}//fun end
</script>
 <script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>
</body>
</html>
