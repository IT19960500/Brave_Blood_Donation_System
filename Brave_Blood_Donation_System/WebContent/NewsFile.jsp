
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.braveBloodDonation.entities.News"%>
<%@page import="com.braveBloodDonation.dao.NewsDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Notices Management-NEWS|Brave Blood Donation System</title>
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

	<h1 style="color:red;font-family:Helvetica, sans-serif; font-size: 100px;">NEWS</h1>
		<div class="col-md-6 mb-4">
      		<div class="input-group md-form form-sm form-2 pl-0">
        		<input class="form-control my-0 py-1 amber-border"style="float:right;"type="text" placeholder="Search" aria-label="Search">
        			<div class="input-group-append">
          				<span class="input-group-text amber lighten-3" id="basic-text1" style="margin-right:10px"><i class="fas fa-search text-grey" aria-hidden="true"></i></span>
           				<a href="addNews.jsp" class="btn btn-danger" style="background: #bb372d;">Add New Article</a>                                                                  
        			</div>
      		</div>
    	</div>
	<br>
	
	<div class="container table-area">
		  	
			  	<table  id="newsTable">
					  <tbody >
					  
					  <%
					  	ArrayList<News> news = NewsDao.getAllNews();
					  	
					  	for(News news1:news){
					  	
					  		%>
					  		
							    <tr style="font-weight: bold;">
							    <td>
								     <div class="card mb-3" style="max-width: 640px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img style="height:15vw; object-fit:cover;"src="images/<%= news1.getNewsPhoto() %>"alt="Card image cap" class="img-fluid rounded-start" alt="...">
    </div>
    <div class="col-md-8">
      <div class="card-body">
      	<p class="card-text">Article Id:<small class="text-muted" style="font-size:15px;"><b><%= news1.getNewsId() %></b></small></p>
        <p class="card-text">Author Id:<small class="text-muted" style="font-size:15px;"><b><%= news1.getNewsAuthorID()%></b></small></p>
        <h5 class="card-title">Article Heading:</h5> <h6><%= news1.getNewsHeading() %></h6>
        <br>
        <h5>Description:</h5><p class="card-text"><%= news1.getNewsDescription() %></p>  
        <h5>Full Article:</h5><h6><%= news1.getNewsArticle() %></h6>
        <a href="#newsDetailsEdit"
														
											data-newsid="<%= news1.getNewsId() %>"
											data-newsauthorid="<%= news1.getNewsAuthorID() %>"
											data-newsheading="<%= news1.getNewsHeading() %>"
											data-newsdescription="<%= news1.getNewsDescription() %>"
											data-newsarticle="<%= news1.getNewsArticle() %>"
											data-newsphoto="<%= news1.getNewsPhoto() %>"
			
										 class="btn btn-warning mr-2" type="button" data-toggle="modal" data-target="#newsModal"><i class="fas fa-pen"></i></a>
										 <a href="#" onclick="getNewsIDDelete(<%= news1.getNewsId() %>)" class="btn btn-danger " type="button" ><i class="far fa-trash-alt"></i></a>
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
<div class="modal fade" id="newsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="color:red;font-family:Helvetica, sans-serif;">Update News Articles </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
        <form id="updateNews" class="border border-secondary needs-validation" novalidate action="UpdateNewsServlet" method="post" enctype="multipart/form-data">
		<br>
		<div class="input-group mb-3">
		  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;" >Article ID</span>
		  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" 
		   readonly="readonly" name="newsId" id="news_id" value="news_id">	  
		</div>
				
		<div class="input-group mb-3">
		  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Author ID</span>
		  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		  name="newsAuthorID" id="news_author_id"  value="news_author_id"required>
		  	  <div class="invalid-tooltip">
		        Please provide the Author ID.
		      </div>
		</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Article Heading</span>
  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" 
  		name="newsHeading" id="news_heading" value="news_heading"required>
     <div class="invalid-tooltip">
        Please provide the Article Heading.
      </div>
</div>
<div class="input-group">
  <span class="input-group-text" style="width:150px;">Description</span>
  <textarea type="text" class="form-control" aria-label="With textarea"
  name="newsDescription" id="news_description" value="news_description" required></textarea>
      <div class="invalid-tooltip">
        Please provide the Article description.
      </div>
</div>
<div class="input-group">
  <span class="input-group-text" style="width:150px;">Article</span>
  <textarea type="text" class="form-control" aria-label="With textarea"
  name="newsArticle" id="news_article" value="news_article" required></textarea>
      <div class="invalid-tooltip">
        Please provide the Article.
      </div>
</div>
<br>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Upload Image</span>
  <input type="file" class="form-control"  name="newsPhoto" id="news_photo" value="news_photo" >
  <div class="invalid-tooltip">
        Please provide an Image.
      </div>
</div>
<br>
 <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-success" style="width:150px; text-align: center;">Update</button>
            <a href="news2.jsp" class="btn btn-outline-dark" style="width:150px; text-align:data-dismiss="modal" center;">Close</a>               
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

$(document).on("click", "a[href='#newsDetailsEdit']", function () {
	
	var newsId = $(this).data('newsid');
    var newsAuthorId = $(this).data('newsauthorid');
    var newsHeading = $(this).data('newsheading');
    var newsDescription = $(this).data('newsdescription');
    var newsPhoto = $(this).data('newsphoto');
    var newsArticle=$(this).data('data-newsarticle');
    
    $(".modal-body #news_id").val( newsId );
    $(".modal-body #news_author_id").val( newsAuthorId );
    $(".modal-body #news_heading").val( newsHeading );
    $(".modal-body #news_description").val( newsDescription);
    $(".modal-body #news_photo").val( newsPhoto );
    $(".modal-body #news_article").val( newsArticle );
	
	});

</script>

<script>

//edit camp category

$(document).ready(function (e) {
	
	console.log('loadring camp cat edit page..');
	
	

	$('#updateNews').on("submit", function(evenet) {
		
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
						
						
						url: "UpdateNewsServlet",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
							if(data.trim() == "done"){
								
								new swal("Good job!", "Update Successfully!", "success")
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

//end of edit camp category


</script>



<script>

function getNewsIDDelete(newsid) {
	
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
				url : "newsDeleteServlet",
				type: 'POST',
				data: {nId: newsid},
				success: function (data, textStatus, jqXHR) {
					
					 Swal.fire('Done!', '', 'success')
					 .then((result) => {
							
							if (result.isConfirmed) {
				  				
								
									if(data.trim() == "done"){
									
											window.location="news2.jsp"
										
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
