
<%@page import="com.braveBloodDonation.helper.wordLimit"%>
<%@page import="java.util.List"%>
<%@page import="com.braveBloodDonation.entities.organizeDonationCamp"%>
<%@page import="com.braveBloodDonation.entities.campDetails"%>
<%@page import="com.braveBloodDonation.entities.campCategory"%>
<%@page import="com.braveBloodDonation.dao.donationCampManagemetDButill"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">



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

</head>
<body>


		
		
	<div class="donationTab">
		
	<nav>
		  <div class="nav nav-tabs" id="nav-tab" role="tablist" style="font-weight: bold;">
		    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">CAMP CATEGORY</a>
		    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">CONFIRM REQUEST</a>
		    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">DONATION CAMP</a>
		  </div>
	</nav>
		
	</div> <!-- container end -->
	
	
	<!-- tab content -->
	<div class="container tab-content donationTabContent" id="nav-tabContent" style="max-width: 2000px">
		  
		  <!-- camp category -->
		  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" >
		  
		  	<div class="container btn-area">
				
				<button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#addCategory" >++ Add Category ++</button>
				<button type="button" class="btn btn-primary" id="btnExport"  > <span><i class="fas fa-print"></i> </span>  Generate Report</button>
					
			</div>
		  	
		  
		  	<div class="container table-area">
		  	
			  	<table class="table table-hover" id="campCatTable">
					  <thead  class=" text-center" style="font-weight: bold; background:#bb372d; color: white;">
					    <tr>
					      <th scope="col">Category ID</th>
					      <th scope="col">Category Name</th>
					      <th scope="col">Action</th>
					    </tr>
					  </thead>
					  <tbody class="text-center">
					  
					  <%
					  	ArrayList<campCategory> campCat = donationCampManagemetDButill.getAllCampCategory();
					  	
					  	for(campCategory ct:campCat){
					  	
					  		%>
					  		
							    <tr style="font-weight: bold;">
								      <td><%= ct.getCid() %></td>
								      <td><%= ct.getCampName() %></td>
					      			  <td>
										 <a href="#categoryModal"
														
											data-cid="<%= ct.getCid() %>"
											data-cname="<%= ct.getCampName() %>"
			
										 class="btn btn-warning mr-2" type="button" data-toggle="modal" data-target="#categoryModal"><i class="fas fa-pen"></i></a>
										 <a href="#" onclick="getCampCatIDForDelete(<%= ct.getCid() %>)" class="btn btn-danger " type="button" ><i class="far fa-trash-alt"></i></a>
							
																		
					 			     </td>
							    </tr>
					  		
					  		
					  		<%
					  	}
					  %>
					  
					
					  </tbody>
				</table>
		  	
		  	</div>

			<div style="color: #f2f2f2">hide</div>
		  
		  </div> <!-- //camp category -->
		  
		  
		  
		  
		  <!-- confirm request -->
		  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
		   
		    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" >
		  	
		  	
		  		<div class="container table-area" style="max-width: 2000px">
		  	
				  	<table class="table table-hover" >
						  <thead  class="text-center" style="font-weight: bold; background:#bb372d; color: white">
						    <tr>
						      <th scope="col">OID</th>
						      <th scope="col">Camp Category</th>
						      <th scope="col">Organization Name</th>
						      <th scope="col">Date&Time</th>
						      <th scope="col">Address</th>
						      <th scope="col">Expected Donors</th>
						      <th scope="col">Arrangement</th>
						      <th scope="col">Organizer Details </th>
						 
						      <th scope="col" style="width: 200px;">Action</th>
						    </tr>
						  </thead>
						  <tbody class="text-center">
						 	
						 	<%
						 	
						 		ArrayList<organizeDonationCamp> orgCamp = donationCampManagemetDButill.getAllConfirmCampDetails();
						 		
						 		for(organizeDonationCamp or:orgCamp){
						 			%>
						 			
								    <tr style="font-weight: bold;">
									      <td> <%= or.getOrgId() %> </td>
									      <td> <%= or.getCampCat() %> </td>
									      <td> <%= or.getOrganizationName() %> </td>
									      <td> <%= or.getCampDate() + " " + or.getCampTime() %> </td>
									      <td> <%= or.getAddress() %> </td>
									      <td> <%= or.getExceptDonors() %> </td>
									      <td> <%= or.getArrangement() %> </td>
									      <td> <p>Name : <%= or.getOrganizerName() %> </p> <p>Email : <%= or.getOrganizerEmail() %> </p>  </td>
									      
									    
						      			  <td>
											<div class="container text-center mr-4">
													
												<a href="#" onclick="getOrgIDFroConfirm(<%= or.getOrgId() %>)" class="btn btn-success mr-2" type="button" > <span><i class="fas fa-check"></i></span></a>
												<a href="#" onclick="getOrgIDForDelete(<%= or.getOrgId() %>)" class="btn btn-danger " type="button" ><span><i class="far fa-times-circle"></i></span></a>
													
											</div>
																			
						 			     </td>
								    </tr>
						 			
						 			<%
						 		}
						 	%>
						 		
						
						 </tbody>
					</table>
					
					<div>
					<%
						if(orgCamp.size()==0){
							
							//if list array is emplty, then show this
							out.println("<h3 class='display-4 text-center mt-4'>No camp organization requests are availabel here...</h3>");
						}
					%>					
					</div>
		  	
		  	</div>

			<div style="color: #f2f2f2">hide</div>
		  	
		  	</div>
		  		  
		  </div>
		  <!--end of confirm request -->
		
		
		
		
		
		
		  <!-- donation camp management -->
		  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
		  
		  	<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" >
		  	
		  		<div class="container btn-area" style="max-width: 2000px">
				
					<button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#addCamp" >++ Add Camp ++</button>
					<button type="button" class="btn btn-primary" id="btnExport2"  > <span><i class="fas fa-print"></i> </span>  Generate Report</button>
					
					<div class="float-right" style="display: inline-block;">
					  <form class="form-inline" id="seachCampDetails" action="serach.jsp" method="post" >
   						 <input name="serachData" id="serachData" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    					 <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  					  </form>		
					</div>

				</div>
		  	
		  		<div class="container table-area" style="max-width: 2000px">
		  	
				  	<table class="table table-hover" id="donationCampDetails">
						  <thead  class="text-center" style="font-weight: bold; background:#bb372d; color: white;">
						    <tr>
						      <th scope="col">CID</th>
						      <th scope="col">Poster</th>
						      <th scope="col">Camp Category</th>
						      <th scope="col">Organization Name</th>
						      <th scope="col">Date&Time</th>
						      <th scope="col">Address</th>
						      <th scope="col">Location</th>
						      <th scope="col">Expected Donors</th>
						      <th scope="col">Arrangement</th>
						      <th scope="col">Organizer Details </th>
						 
						      <th scope="col" style="width: 150px;">Action</th>
						    </tr>
						  </thead>
						  <tbody class="text-center">
						 	
						 	<%
						 		ArrayList<campDetails> campDetil = donationCampManagemetDButill.getAllCampDetails();
						 								 		
						 		for(campDetails cd:campDetil){
						 		%>
						 		
								    <tr style="font-weight: bold;">
									      <td> <%= cd.getCampId() %> </td>
									      <td> <img class="img-thumbnail" src="images/<%= cd.getPoster() %>" alt="Card image cap" id="imgPoster" style="width: 60px; height: 60px"> </td>
									      <td> <%= cd.getCampCat() %> </td>
									      <td> <%= cd.getOrganizationName() %> </td>
									      <td> <%= cd.getCampDate() + " " + cd.getCampTime() %> </td>
									      <td> <%= cd.getAddress() %> </td>
									      <td> <%= wordLimit.get10Words(cd.getLocation()) %> </td>
									      <td> <%= cd.getExceptDonors() %> </td>
									      <td> <%= cd.getArrangement() %> </td>
									      <td> <p>Name : <%= cd.getOrganizerName() %> </p> <p>Email : <%= cd.getOrganizerEmail() %></p>  </td>
									      
									    
						      			  <td>
											 <a href="#campDetailsEdit"
															
												data-campid="<%= cd.getCampId() %>"
												data-poster="images/<%= cd.getPoster() %>"
												data-campcat="<%= cd.getCampCat() %>"
												data-orgname="<%= cd.getOrganizationName() %>"
												data-cdate="<%= cd.getCampDate() %>"
												data-ctime="<%= cd.getCampTime() %>"
												data-address="<%= cd.getAddress() %> "
												data-location="<%= cd.getLocation() %>"
												data-exdonors="<%= cd.getExceptDonors() %>"
												data-arrangement="<%= cd.getArrangement() %>"
												data-ozername="<%= cd.getOrganizerName() %>"
												data-ozermail="<%= cd.getOrganizerEmail() %>"
				
											 class="btn btn-warning mr-2" type="button" data-toggle="modal" data-target="#campDetailsEdit"><i class="fas fa-pen"></i></a>
											 <a href="#" onclick="getCampIDForDeleteCampDetails(<%= cd.getCampId() %>)" class="btn btn-danger " type="button" ><i class="far fa-trash-alt"></i></a>
								
																			
						 			     </td>
								    </tr>
						 			
						 		
						 		
						 		<%
						 		}
						 	%>

						 </tbody>
					</table>
		  	
		  	</div>

			<div style="color: #f2f2f2">hide</div>
		  	
		  	</div>
		  	

		  		  
		  </div>
		  <!-- end of donation camp management -->
		  
		  
	</div>
	<!-- //tab content -->
	
		
		
	<!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->	
	<!-- add category form -->
	<div class="container">
	
		<!-- Modal -->
		<div class="modal fade" id="addCategory" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header" style="background: #bb372d">
		        <h5 class="modal-title text-white" id="exampleModalLongTitle">Add Donation Camp Category</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body" style="font-weight: bold;">
		        
		        <form id="campCat" action="addCampCategoryServlet" method="post">
				
					<div class="form-group">
						<label for="catName">Camp Category Name</label>
						<input name="catName" type="text" class="form-control" id="catName"  placeholder="Enter Camp Category Name" required="required">
						<small id="emailHelp" class="form-text text-muted">Cannot add already available category</small>
					</div>
						
				     <div class="modal-footer">
		       			 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		       			 <button type="submit" class="btn btn-primary">Submit</button>
		     		</div>
				</form>		    
		        
		      </div>
		    </div>
		  </div>
		</div>
	
	</div>
	<!-- //add category form -->	
		
		
		
	<!-- camp category edit -->
	<div class="container">
	
		<!-- Modal -->
			<div class="modal fade" id="categoryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header" style="font-weight: bold; background: #bb372d">
			        <h5 class="modal-title text-white" id="exampleModalLabel">Update Donation Camp Category</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body" style="font-weight: bold;">
			      
			       
				       <form id="editCampCategory" action="editCampCategoryServlet" method="post" enctype="multipart/form-data"> 
				       
					       	<table class="table" style="font-weight: bold;">
					        
					        	<tbody>
					        	<tr>
								    <th scope="row">Category ID</th>
								     <td><input name="c_id" type="text" class="form-control" readonly="readonly" id="c_id"  value="c_id"></td>
								</tr>
					        
					        	<tr>
					        		<th>Camp Category Name</th>
					        		<td> <input name="c_name" type="text" class="form-control" id="c_name"  value="c_name"></td>
					        	
					        	</tr>
					        	       
					     		</tbody>
					      		
					      	</table>	
				       
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					       		<button type="submit" class="btn btn-primary">Save changes</button>
					      	</div>
					       
				       
				       </form>
				       	
				   </div>
				 </div>
			  </div>
			</div> <!-- modal end -->
	
	</div> <!-- end of camp cat edit -->	
	
	
	
		<!-- add camp -->
		  	
		  		<div class="container">
		  		
		  			<!-- Modal add camp -->
						<div class="modal fade" id="addCamp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header" style="background: #bb372d">
						        <h5 class="modal-title text-white" style="font-weight: bold;" id="exampleModalLabel">Add Camp Details</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body " style="font-weight: bold;">
						      
						      	
						      				<form id="addCampDetailsForm" action="addCampDetailsAdminServlet" method="post" enctype="multipart/form-data">
			
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
														    <label for="orgLocation">Location</label>
														    <input name="orgLocation" type="text" class="form-control" id="orgLocation"  placeholder="Enter camp location">
														    <small id="emailHelp" class="form-text text-muted">Add GPS location</small>
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
		  	
		  	
		  	
		  	
	<!--edit camp details model -->

		<!-- Modal -->
		<div class="modal fade" id="campDetailsEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header  text-white" style="background: #bb372d">
		        <h5 class="modal-title" id="exampleModalLabel">Update Camp Details</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      
			
				<div id="poster_details">
					
					<div class="container text-center mb-3">
						<img class="img-thumbnail"  alt="Card image cap" id="c_poster" style="width: 300px; height: 300px">
					</div>
					
					<form id="editCampPoster" action="editCampPosterServlet" method="post" enctype="multipart/form-data">
						<table class="table">
							<tbody>
							
							<tr style="display: none">
						      <th scope="row">Camp ID</th>
						      <td> <input name="campId" type="number" class="form-control" id="c_id"  value="c_id" readonly="readonly"> </td>
						      
						    </tr>
						     
						      <th scope="row">Select Poster</th>
						      <td> <input name="c_poster" type="file" class="form-control" ></td>
					
							</tbody>
						</table>
						
						<div class="container">
						
							<button id="saveBtn" type="submit" class="btn btn-outline-primary float-right">Save</button>
						
						</div>			
		      		
						
					</form>
										 
		     	</div>
		      
		      <!-- edit details -->
		      <div id="edit_details" style="display: none;">
		      
		      	
		      		<form id="editFrom" action="editCampDetailsServlet" method="post" enctype="multipart/form-data">
		      		
		      			<table class="table">
	
						  <tbody>

						    <tr>
						      <th scope="row">Camp ID</th>
						      <td> <input name="campId" type="number" class="form-control" id="c_id"  value="c_id" readonly="readonly"> </td>
						      
						    </tr>
						    
						    <tr>
						      <th scope="row">Camp Category</th>
						      <td>  <input name="campCategory" type="number" class="form-control" id="cat_id"  value="cat_id" readonly="readonly"></td>
						    </tr>
						    
				    
						     <tr>
						      <th scope="row">Organization Name</th>
						      <td>  <input name="orgName" type="text" class="form-control" id="c_name"  value="c_name"></td>
						    </tr>
						    
						     <tr>
						      <th scope="row">Camp Date</th>
						     <td> <input name="orgDate" type="text" class="form-control" id="datepicker2"  value="datepicker2"></td>
						      
						    </tr>

						     <tr>
						      <th scope="row">Camp Time</th>
						      <td> <input name="orgTime" type="text" class="form-control" id="timepicker2" value="timepicker2" ></td>
						      
						    </tr>
						    
						  	<tr>
						      <th scope="row">Address</th>
						       <td> <input name="ordAddress" type="text" class="form-control" id="c_address" value="c_address" ></td>
						    </tr>
						     
						     <tr>
						      <th scope="row">Location</th>
						      <td> <input name="orgLocation" type="text" class="form-control" id="c_location"  value="c_location"> </td>
						      
						    </tr>

						     <tr>
						      <th scope="row">Expected Donors</th>
						      <td> <input name="orgExpDonor" type="text" class="form-control" id="c_exdonors"  value="c_exdonors"> </td>
						      
						    </tr>

						     <tr>
						      <th scope="row">Arrangement</th>
						      <td> <input name="orgArrangement" type="text" class="form-control" id="c_arrangment"  value="c_arrangment"> </td>
						      
						    </tr>

						     <tr>
						      <th scope="row">Organizer Name</th>
						      <td> <input name="orgizerName" type="text" class="form-control" id="o_name"  value="o_name"> </td>
						      
						    </tr>
						    
						     <tr>
						      <th scope="row">Organizer Email</th>
						      <td> <input name="orgizerEmail" type="email" class="form-control" id="o_email" aria-describedby="emailHelp" value="o_email" ></td>
						    </tr>
						    
						 
						  </tbody>
						  

						  </tbody>
					</table>
					
						<div class="container">
						
							<button id="saveBtn" type="submit" class="btn btn-outline-primary float-right">Save</button>
						
						</div>			
		      		
		      		</form>
		      
		      </div>
		      
		
		        
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button id="edit_button" type="button" class="btn btn-primary">Edit Details</button>
		      </div>
		    </div>
		  </div>
		</div>	<!-- end camp details model -->
	
	
	
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
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
	<script type="text/javascript" src="js/donationCampReport.js"></script>
	
	<!-- set date and time -->
    <script>
        $('#datepicker').datepicker({
            uiLibrary: 'bootstrap4'
        });
    </script>

   <script>
        $('#timepicker').timepicker();
    </script>




	<!-- set date and time 2 -->
    <script>
        $('#datepicker2').datepicker({
            uiLibrary: 'bootstrap4'
        });
    </script>

   <script>
        $('#timepicker2').timepicker();
    </script>
    
  

</body>
</html>