<%@page import="com.braveBloodDonation.dao.donationCampManagemetDButill"%>
<%@page import="com.braveBloodDonation.entities.campCategory"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Camp Schedule</title>

	<!-- boostrap cdn -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<!-- font awasome icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!--font awesom CDN-->
    <script src="https://kit.fontawesome.com/2a0f6dfc30.js" crossorigin="anonymous"></script>
    
    <!-- css -->
	<link rel="stylesheet" href="css/style.css" type="text/css"/>
	<link rel="stylesheet" href="css/headerStyle.css" type="text/css"/>
	
	<style type="text/css">
		.list-group .active{
			background: #bb372d !important;
		}
	</style>

</head>
<body>


	<!-- include header -->
	<header>
	
		
		<div class="container">

            <div class="row">
                <div class="col-md-4 col-sm-12 col-12" style="height: 150px;">
                    
				
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

        </div> <!--/contaner-->
	
	
	</header>
	
	
	<!-- include navbar -->
	<div class="container">
	
		<%@ include file = "navBar.jsp"  %>
	
	</div>
	
	
	
	
	
	
	
	
	<!-- camp schedule -->	
		<main>
			
			<div class="container-fluid" style="max-width: 1300px">
			
				<div class="row mt-3">
				
				
					<!-- first col -->
					<div class="col-md-2" >
						
							<!-- camp categories -->
							
							<div class="list-group">
							
							<a href="#" onclick="getCampDetails(0,this)" class="clickThisLink list-group-item list-group-item-action active" >
							    All Camp
							  </a>
							
							<%
							
							ArrayList<campCategory> campCat = donationCampManagemetDButill.getAllCampCategory();
							
							for(campCategory cd:campCat){
								
								%>
								
							  	<a href="#" onclick="getCampDetails(<%= cd.getCid() %>,this)" class="clickThisLink list-group-item list-group-item-action"><%= cd.getCampName() %> </a>
																
								<%
								
							}
							
							%>
							

							</div>
							
						
					</div>
					
					
					
					<!-- second col -->
				    <div class="col-md-10" >
						
						<!-- camp list -->
							
						<div class="container text-center" id="loader">
									
							<i class="fa fa-refresh fa-4x fa-spin"></i>
							<h3 class="mt-2">Loading....</h3>
									
						</div>
									
						<div class="container-fluid " id="campDetailsPalce">
									
									
						</div>
								
					</div>
				
				
				
				</div>
			
			</div>
		
		</main>
		<!-- //camp schedule -->	
	
	
			<!-- include footer -->
		<%@ include file = "footer.jsp"  %>
	
	
	
	
		<!-- jquery script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script type="text/javascript" src="js/editdata.js"></script>
	
	
	
	
	<!-- camp  details shown --> 
	<script>
	
	
	
		function getCampDetails(cid, activeThisSelectedLink) {
			
			//cid.preventDefault();
			
			//loder show
			$('#loader').show();
			//hide content
			$('#campDetailsPalce').hide();
			//catch the click link and remove active class
			$('.clickThisLink').removeClass('active');
			
			$.ajax({
				
				//goto jsp page
				url : "campDetailsPost.jsp",
				data: {catid: cid},
				success: function (data, textStatus, jqXHR) {
					
					//hide loading containe
					$('#loader').hide();
					//show content
					$('#campDetailsPalce').show();
					
					//showing jsp page content in given id palce
					$('#campDetailsPalce').html(data);
					//console.log(data);
					
					//active link when click
					$(activeThisSelectedLink).addClass('active');
				}
				
			});//ajax end
			
			
		}//get fun end
	
	
		
		$(document).ready(function(e) {
			
			//by default select all catagorey 
			let allCatReg = $('.clickThisLink')[0];
			
			//call getDocDetails function
			//0 mens when id is not pass all deta show
			getCampDetails(0, allCatReg);
			
		});//main end
	
	</script>
	
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>