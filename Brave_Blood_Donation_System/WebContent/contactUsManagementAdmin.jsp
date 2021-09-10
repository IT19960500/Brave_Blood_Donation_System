<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.braveBloodDonation.entities.ContactUs"%>
<%@page import="com.braveBloodDonation.dao.ContactUsDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>ContactUs Management|Brave Blood Donation System</title>
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
	<h1 style="color:red;font-family:Helvetica, sans-serif; font-size: 100px;">CONTACT-US</h1>
		<div class="col-md-6 mb-4">
      		<div class="input-group md-form form-sm form-2 pl-0">
        		<input class="form-control my-0 py-1 amber-border" type="text" placeholder="Search" aria-label="Search">
        			<div class="input-group-append">
          				<span class="input-group-text amber lighten-3" id="basic-text1" style="margin-right:10px"><i class="fas fa-search text-grey" aria-hidden="true"></i></span>
           				<button type="button" class="btn btn-danger"  id="btnExport" style="margin-right:10px;background: #bb372d;" > <span><i class="fas fa-print" ></i> </span>  Generate Report</button>
           				<a href="addContactUs.jsp" class="btn btn-danger" style="background: #bb372d;">Add New Record</a>                                                                  
        			</div>
      		</div>
    	</div>
	<br>
	
	<div class="container table-area">
		  	
			  	<table class="table table-hover" id="contactUsTable">
					  <thead  class=" text-center" style="font-weight: bold; background:#bb372d; color: white;">
					    <tr>
					      
					      <th scope="col">Contact-Us ID</th>
					      <th scope="col">Question Type</th>
					      <th scope="col">Question</th>
					      <th scope="col">Name</th>
					      <th scope="col">Email</th>
					      <th scope="col">Phone</th>
					      <th scope="col">Approved/Rejected</th>
					      <th scope="col"style="width: 15%;">Action</th>
					    </tr>
					  </thead>
					  <tbody class="text-center">
					  
					  <%
					  ArrayList<ContactUs> contactUs = ContactUsDao.getAllContactUs();
					  	
					  	for(ContactUs contactUs1:contactUs){
					  	
					  		
					  	
					  		%>
					  		
							<tr style="font-weight: bold;">
								      <td><%= contactUs1.getContactUsId() %></td>
								      <td><%= contactUs1.getContactUsQusType() %></td>
								      <td><%= contactUs1.getContactUsQus() %></td>
								      <td><%= contactUs1.getContactUsName() %></td>
								      <td><%=contactUs1.getContactUsEmail() %></td>
								       <td><%=contactUs1.getContactUsPhone() %></td>
								      <td><%=contactUs1.getContactusStatus() %></td>
					      			  <td>
									<a href="#contactUsDetailsEdit"
														
											data-contactusid="<%= contactUs1.getContactUsId() %>"
											data-contactusqustype="<%= contactUs1.getContactUsQusType() %>"
											data-contactusqus="<%= contactUs1.getContactUsQus() %>"
											data-contactusname="<%= contactUs1.getContactUsName() %>"
											data-contactusemail="<%= contactUs1.getContactUsEmail() %>"
											data-contactusphone="<%= contactUs1.getContactUsPhone() %>"
											data-contactusstatus="<%=contactUs1.getContactusStatus() %>"
										 class="btn btn-warning mr-2" type="button" data-toggle="modal" data-target="#contactUsModal"><i class="fas fa-pen"></i></a>
										 <a href="#" onclick="getContactUsIDDelete(<%= contactUs1.getContactUsId() %>)" class="btn btn-danger " type="button" ><i class="far fa-trash-alt"></i></a>
							
																		
					 			     </td>
							    </tr>
					  		
					  		<%
					  	}
					  %>
					  
					
					  </tbody>
				</table>
		  	
		  	</div>
	







<!-- Modal -->
<div class="modal fade" id="contactUsModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="color:red;font-family:Helvetica, sans-serif;">Update ContactUs </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
        <form id="updateContactUs" class="border border-secondary needs-validation" novalidate action="UpdateContactUsServlet" method="post" enctype="multipart/form-data">
	<br>
<h4>Update ContactUs</h4>
<div class="input-group mb-3">
<span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Contact-Us ID</span>
  <input type="text"  class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" 
  readonly="readonly" name="contactUsId" id="contactus_id" value= "contactus_id">
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Question About</span>
   <select class="form-control"  aria-label="Sizing example input" 
   name="contactUsQusType" id="contactus_qus_type" value="contactus_qus_type" aria-describedby="inputGroup-sizing-default"  required>
   
   	  <option></option>
      <option>Appointments</option>
      <option>Organizing Camps</option>
      <option>Registration</option>
      <option>Requirements to be a blood donor</option>
    </select>
  <div class="invalid-tooltip">
        Please provide the question type.
      </div>
</div>
<div class="input-group">
  <span class="input-group-text" style="width:150px;">Question</span>
  <textarea class="form-control" name="contactUsQus" id="contactus_qus" value="contactus_qus" aria-label="With textarea" required></textarea>
      <div class="invalid-tooltip">
        Please ask your question.
      </div>
</div>
<br>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Name</span>
  <input type="text" class="form-control" name="contactUsName" id="contactus_name" value="contactus_name"aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
  <div class="invalid-tooltip">
        Please provide your name.
      </div>
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">E-mail</span>
  <input type="email" class="form-control" name="contactUsEmail" id="contactus_email" value="contactus_email"aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
     <div class="invalid-tooltip">
        Please provide your email address.
      </div>
</div>

<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Phone</span>
  <input type="phone" class="form-control" name="contactUsPhone" id="contactus_phone" value="contactus_phone" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
     <div class="invalid-tooltip">
        Please provide your mobile number.
      </div>
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Question Status</span>
   <select class="form-control"  aria-label="Sizing example input" 
   name="contactusStatus" id="contactus_status" value="contactus_status" aria-describedby="inputGroup-sizing-default"  required>
   
   	  <option>Select the status</option>
      <option>Approved</option>
      <option>Rejected</option>
    </select>
  <div class="invalid-tooltip">
        Please Approve or reject the question.
      </div>
</div>
<br>
 <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-success" style="width:150px; text-align: center;">Update</button> 
            <a href="contactUs.jsp" class="btn btn-outline-dark" style="width:150px; text-align: center;">Back</a>           
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


//edit  contact us

$(document).on("click", "a[href='#contactUsDetailsEdit']", function () {
	
	var contactUsId = $(this).data('contactusid');
    var contactUsQusType = $(this).data('contactusqustype');
    var contactUsQus = $(this).data('contactusqus');
    var contactUsName = $(this).data('contactusname');
    var contactUsEmail = $(this).data('contactusemail');
    var contactUsPhone = $(this).data('contactusphone');
    var contactusStatus= $(this).data('contactusstatus');
    
    $(".modal-body #contactus_id").val( contactUsId );
    $(".modal-body #contactus_qus_type").val( contactUsQusType  );
    $(".modal-body #contactus_qus").val( contactUsQus );
    $(".modal-body #contactus_name").val( contactUsName);
    $(".modal-body #contactus_email").val( contactUsEmail);
    $(".modal-body #contactus_phone").val( contactUsPhone );
    $(".modal-body #contactus_status").val( contactusStatus );
	});

</script>

<script>

//edit contact us

$(document).ready(function (e) {
	
	console.log('loadring camp cat edit page..');
	
	

	$('#updateContactUs').on("submit", function(evenet) {
		
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
						
						
						url: "UpdateContactUsServlet",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
							if(data.trim() == "done"){
								
								new swal("Good job!", "Update Successfully!", "success")
								.then((value) => {
								  window.location="contactUs.jsp"
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

//end of edit contact us


</script>



<script>

function getContactUsIDDelete(contactusid) {
	
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
				url : "contactUsDeleteServlet",
				type: 'POST',
				data: {cId: contactusid},
				success: function (data, textStatus, jqXHR) {
					
					 Swal.fire('Done!', '', 'success')
					 .then((result) => {
							
							if (result.isConfirmed) {
				  				
								
									if(data.trim() == "done"){
									
											window.location="contactUs.jsp"
										
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
<script>

$("#btnExport").on("click", function () {
	html2canvas($('#contactUsTable')[0], {
      onrendered: function (canvas) {
          var data = canvas.toDataURL();
           var docDefinition = {
             content: [{
                 image: data,
                 width: 500
                 }]
             };
              pdfMake.createPdf(docDefinition).download("ContactUsReport.pdf");
        }
      });
 });
</script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
</body>
</html>
