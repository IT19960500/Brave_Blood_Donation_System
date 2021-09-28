	<!-- boostrap cdn -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<!-- css -->
	<link rel="stylesheet" href="css/donationCampManagementStyle.css" type="text/css"/>
	
	
	
	<!-- font awasome icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!--font awesom CDN-->
    <script src="https://kit.fontawesome.com/2a0f6dfc30.js" crossorigin="anonymous"></script>
    
 	<!-- date and time picker css -->
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />







<!-- add camp -->
		  	
	<%@page import="com.braveBloodDonation.dao.donationCampManagemetDButill"%>
	<%@page import="com.braveBloodDonation.entities.campCategory"%>
	<%@page import="java.util.ArrayList"%>
	<div class="container">
		  		
		  			<!-- Modal add camp -->
						<div class="modal fade" id="organizeDonationCamp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header" style="background: #bb372d">
						        <h5 class="modal-title text-white" style="font-weight: bold;" id="exampleModalLabel">Add Camp Details</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body " style="font-weight: bold;">
						      
						      	
						      				<form id="addCampDetailsUserForm" action="addCampDetailsUserServlet" method="post" enctype="multipart/form-data">
			
														  <div class="form-group">
														    <label for="orgName">Organization Name</label>
														    <input name="orgName" type="text" class="form-control" id="orgName"  placeholder="Enter organization Name" required="required">
											
														  </div>
													
															<div class="form-group">
																<label for="orgDate"> Camp Date</label>
																<input name="orgDate" type="text" class="form-control" id="datepicker"  placeholder="MM/DD/YYYY" required="required">
															</div>
														  
														  <div class="form-group">
														   <label for="orgTime">Camp Time</label>
														   <input name="orgTime" type="text" class="form-control" id="timepicker"  placeholder="HH:MM" required="required">
												
														  </div>
										
														  <div class="form-group">
														    <label for="ordAddress">Address</label>
														    <textarea name="ordAddress" class="form-control" id="exampleFormControlTextarea1" rows="2"></textarea>
														  </div>

														  <div class="form-group">
														    <label for="orgExpDonor">Expected Donors</label>
														    <input name="orgExpDonor" type="number" class="form-control" id="orgExpDonor"  placeholder="Enter expected donors">
														    <small id="emailHelp" class="form-text text-muted">Possible to enter approximate number</small>
														  </div>
													
														  <div class="form-group">
														    <label for="orgArrangement" style="padding-right: 15px">Arrangement</label>
														    <input type="radio"  id="mobile" value="Mobile Bus" name="orgArrangement"> Mobile Bus
							 			   				    <input type="radio"  id="venue" value="Venue" name="orgArrangement"> Venue
														  </div>
		
														  <div class="form-group">
														    <label for="orgizerName">Organizer Name</label>
														    <input name="orgizerName" type="text" class="form-control" id="orgizerName"  placeholder="Enter organizer Name" required="required">
														    <small id="emailHelp" class="form-text text-muted">Possible to enter name with initials</small>
														  </div>
													 
										
														  <div class="form-group">
														    <label for="exampleFormControlInput1">Organizer Email</label>
														    <input name="orgizerEmail" type="email" class="form-control" id="orgizerEmail" placeholder="name@example.com" required="required">
														    <small id="emailHelp" class="form-text text-muted">Enter email given format</small>	
														  </div>
														  
														  
														  
														
														  <div class="form-group">
														    <label for="campCategory"> Camp Category</label>
														    <select name="campCategory" class="form-control" id="campCategory" required="required">
														      <option selected disabled>--select category--</option>
														      
														      <!-- get camp category details -->
														      <%
														      	
														      	ArrayList<campCategory> campCat = donationCampManagemetDButill.getAllCampCategory();
										
														    		for(campCategory ct:campCat){
														    		%>
														    			<option value="<%= ct.getCid() %>"><%= ct.getCampName() %></option>
														    		<% 
														    		}
														      %>
														      
														    </select>
														  </div>
																										  
															     
														      <div class="modal-footer">
														        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
														        <button id="saveBtn" type="submit" class="btn btn-primary">Add Camp</button>
														      </div>
																		  
													</form>
																	        
						      </div>
						 						      
						    </div>
						  </div>
						</div> <!-- model end -->
		  					  		
		  		</div>
		  	
<!-- end of add camp -->
	
	
	
	
	
	
		  	
	<!-- jquery script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>  	
	<!-- date and time picker js -->
	 <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>	  	

	<!-- pdf --> 
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
	
	<script type="text/javascript" src="js/donationCampScript.js"></script>
	
	<!-- set date and time -->
    <script>
        $('#datepicker').datepicker({
            uiLibrary: 'bootstrap4'
        });
    </script>

   <script>
        $('#timepicker').timepicker();
    </script>

		  	