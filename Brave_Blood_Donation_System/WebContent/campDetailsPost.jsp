<%@page import="com.braveBloodDonation.dao.donationCampManagemetDButill"%>
<%@page import="com.braveBloodDonation.entities.campDetails"%>
<%@page import="java.util.List"%>
<div class="row">

<%

	//if we want to show loader 1sec, then container sleep using thread
	Thread.sleep(1000);

	int cid = Integer.parseInt(request.getParameter("catid"));
	System.out.print(cid);
	
	List<campDetails> cd = null;

	//if cid equal to 0, all data fectch
	if(cid == 0){
		
		//create list and get the data with the help of getAllCampDetails method
		cd = donationCampManagemetDButill.getAllCampDetails();
		
	}else{
		
		//if cid greter than 0, get value according to the value
		//get data by cid
		cd =  donationCampManagemetDButill.getCampDetailsByCategoryId(cid);
	}
	
	
	//check the camp availability according to the catagory
	if(cd.size()==0){
		
		//if list array is emplty, then show this
		out.println("<h3 class='display-3 text-center mt-4'>No camps are availabel here...</h3>");
	}


	//assing the value usin foreach loop
	
	for(campDetails  c:cd){
		%>
		
		<div class="col-md-4" >
				
					<!-- card -->
					<div class="card mb-4" style="width: 19rem; margin-left: 70px;">
				
						<img class="card-img-top" src="images/<%= c.getPoster() %>" alt="Card image cap" style="max-width: auto; max-height: 260px">
						
						<div class=" card-body" style="max-height: 200px;">
							
							<h4>Organize By <%= c.getOrganizationName() %></h4>
							<p>Venue : <%= c.getAddress() %></p>
							<p>Date : <%= c.getCampDate() %></p>
							<p>Start Time : <%= c.getCampTime() %></p>
							
						</div>
						
						<div class="card-footer" style="background: #bb372d">
							
							<a href="moreCampDetails.jsp?campID=<%= c.getCampId() %>" class="btn btn-outline-light btn-sm">View Details</a>
						
						</div>
					
					</div>
				
				
				</div>
		
		<%
	}
	
	
%>


</div>