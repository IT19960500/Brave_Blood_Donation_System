<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.braveBloodDonation.entities.News"%>
<%@page import="com.braveBloodDonation.dao.NewsDao"%>

	pageEncoding="ISO-8859-1"%>

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
<body style="background-color:white">


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
	

	


	<footer>
	<%@ include file="footer.jsp" %>
	
	</footer>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	<%@ include file = "header.jsp" %>

	<%@ include file = "navBar.jsp" %>

	

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="slide1" src="images/ex3.png"  alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="slide2" src="images/ex1.jpg"  alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="slide3" src="images/ex4.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="slide4" src="images/ex5.png" alt="Fourth slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

	<%@ include file = "footer.jsp" %>

	<!-- jquery script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script type="text/javascript" src="js/editdata.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<script src="js/custom-scripts.js"></script>


<script>

$('.carousel').carousel({
	  interval: 3500
	})
</script>
	
</body>
</html>