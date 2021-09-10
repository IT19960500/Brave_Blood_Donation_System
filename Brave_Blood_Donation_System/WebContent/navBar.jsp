
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
		<a class="navbar-brand" href="home.jsp"><span><i
				class="fas fa-home"></i></span></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">



				<li class="nav-item" style="font-weight: bold"><a
					class="nav-link" href="#"><span><i
							class="fas fa-hand-holding-medical"></i></span> DONATE</a></li>



				<li class="nav-item" style="font-weight: bold;"><a
					class="nav-link blmodal" href="home.jsp"> <span><i
							class="fas fa-clinic-medical" data-toggle="modal"
							data-target="#organizeDonationCamp"></i></span> ORGANIZE DONATION CAMP
				</a></li>


				<li class="nav-item" style="font-weight: bold;"><a
					class="nav-link" href="campSchedule.jsp"><span><i
							class="fas fa-calendar-alt"></i></span> CAMP SCHEDULE</a></li>

				<li class="nav-item" style="font-weight: bold;"><a
					class="nav-link" href="#"><span><i
							class="fas fa-notes-medical"></i></span> NOTICE</a></li>

				<li class="nav-item" style="font-weight: bold;"><a
					class="nav-link" href="#"><span><i
							class="fas fa-address-book"></i></span> CONTACT</a></li>


			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>


</body>
</html>

<style>
 .navbar{
 	background: #d9d9d9; 
 	border: 2px solid #bb372d;
 }
 
 ul li a{
 	color: #000000 !important;
 }
 
 nav{
 	transform: translateY(-30px);
 }
 
 ul li a:hover {
	color: #bb372d !important;
}
 
</style>

<nav class="navbar navbar-expand-lg navbar-light" >
  <a class="navbar-brand" href="home.jsp"><span><i class="fas fa-home"></i></span></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      
  
    
      <li class="nav-item" style="font-weight: bold">
        <a class="nav-link" href="#"><span><i class="fas fa-hand-holding-medical"></i></span> DONATE</a>
      </li>
    

      
 	 <li class="nav-item" style="font-weight: bold;">
        <a class="nav-link blmodal" href="home.jsp"> <span><i class="fas fa-clinic-medical" data-toggle="modal" data-target="#organizeDonationCamp"></i></span> ORGANIZE DONATION CAMP</a>
      </li>
      
      
     <li class="nav-item" style="font-weight: bold;">
        <a class="nav-link" href="campSchedule.jsp"><span><i class="fas fa-calendar-alt"></i></span> CAMP SCHEDULE</a>
      </li>

     <li class="nav-item" style="font-weight: bold;">
        <a class="nav-link" href="#"><span><i class="fas fa-notes-medical"></i></span> NOTICE</a>
      </li>

     <li class="nav-item" style="font-weight: bold;">
        <a class="nav-link" href="#"><span><i class="fas fa-address-book"></i></span> CONTACT</a>
      </li>
    
  
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

