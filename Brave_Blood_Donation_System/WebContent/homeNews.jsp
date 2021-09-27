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

	<title>Brave Blood Donation</title>
	
	<!-- boostrap cdn -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<!-- font awasome icon -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!--font awesom CDN-->
    <script src="https://kit.fontawesome.com/2a0f6dfc30.js" crossorigin="anonymous"></script>
    
    <!-- css -->
	<link rel="stylesheet" href="css/style.css" type="text/css"/>
	<link rel="stylesheet" href="css/headerStyle.css" type="text/css"/>

</head>
<body>

	<!-- include header -->
	<header>
	
		
		<div class="container">

            <div class="row">
                <div class="col-md-4 col-sm-12 col-12">
                    
				
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
<%@ include file="navBar.jsp" %>
        </div> <!--/contaner-->
	
	
	</header>
	
	 <h1 style="color:red;font-family:Helvetica, sans-serif; font-size: 100px;">NEWS</h1>
 <div class="sticky-top" style="float:right;">
 <div class="card" style="width:15rem; height: 15rem;text-align:center;">
      <div class="card-body">
        <h5 class="card-title" style="color:red;">Want to Become a Blood Donor?</h5>
        <p class="card-text">Join With Us Today!</p>
        <a href="#" class="btn btn-info">Register</a>
      </div>
    </div>
    </div>
	<div class="container table-area">
		  	
			  	<table  id="newsTable">
					  <tbody >
					  
					  <%
					  	ArrayList<News> news = NewsDao.getAllNews();
					  	
					  	for(News news1:news){
					  	
					  		%>
					  		
							    <tr style="font-weight: bold;">
							    	<td>
							    		<div class="card mb-3" style="max-width: 850px;">
  											<div class="row g-0">
    											<div class="col-md-4">
      												<img style="height:17vw; object-fit:cover;" src="images/<%= news1.getNewsPhoto() %>" 
      												alt="Card image cap" class="img-fluid rounded-start" alt="...">
    											</div>
    									<div class="col-md-8">
      										<div class="card-body">
						        				<h5 class="card-title"style="color:red; text-decoration:underline;">
						        				<%= news1.getNewsHeading() %></h5>
        										<p class="card-text"><%= news1.getNewsDescription() %></p>
       											<a href="ReadNews.jsp?newsId=<%= news1.getNewsId() %>" class="btn btn-danger">Read</a>
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
	



	<footer>
	<%@ include file="footer.jsp" %>
	
	</footer>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- jquery script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script type="text/javascript" src="js/editdata.js"></script>
	
	
	
</body>
</html>