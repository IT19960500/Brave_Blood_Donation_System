<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>

<!-- boostrap cdn -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- font awasome icon -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!--font awesom CDN-->
<script src="https://kit.fontawesome.com/2a0f6dfc30.js"
	crossorigin="anonymous"></script>

<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/headerStyle.css" type="text/css" />
<link rel="stylesheet" href="css/navbar.css" type="text/css" />
<link rel="stylesheet" href="css/footer.css" type="text/css" />

<title>Insert title here</title>


</head>
<body>

	<%@ include file = "header.jsp" %>

	<%@ include file = "navBar.jsp" %>

	<h3 style="text-align: center">Before you register as a blood
		donor</h3>
	<div class="top"
		style="margin-left: 300px; margin-right: 300px; margin-top: 10px">
		<br>
		<ul>
			<li style="align: center"><b>Most people can give blood but
					sometimes it is not possible to be a blood donor.</b></li>
			<br>
			<li style="align: center"><b>Please answer all of the
					following five questions so that we can advise if blood donation is
					appropriate for you. Your responses are not recorded in any way. </b></li>
			<br>
			<li style="align: center"><b>These questions only apply if
					you want to register as a new blood donor. If you are already a
					registered blood donor please</b> <a href="bloodDonorProfileSignup.jsp">create
					an online account</a></li>
		</ul>
	</div>

	<div class="questions" style="margin-left:270px; margin-top:100px; margin-bottom:100px;padding-top: 30px; padding-bottom: 30px; width: 70%; border: 3px double #bb372d; border-width: thick">
		<form action="" onsubmit="return check()">
		<div style="margin-left: 200px">
			
			<b>1. Are you 16-65 years old?</b>
			<br>
			<input type="radio" name="q1" value="Yes">Yes
			<input type="radio" name="q1" value="No">No
			<br><br>
						
			<b>2. Do you currently weigh less than 50kg (7 stone 12 pounds)?</b>
				<br><br>
			<input type="radio" name="q2" value="Yes">Yes
			<input type="radio" name="q2" value="No">No
			<br>

			<b>3. Have you had a blood or blood product transfusion since
					1st January 1980?</b>
				<br><br>
			<input type="radio" name="q3" value="Yes">Yes
			<input type="radio" name="q3" value="No">No
			<br>
			
			<b>4. Have you received donated eggs or embryos since 1st
				January 1980?</b>
				<br><br>
			<input type="radio" name="q4" value="Yes">Yes
			<input type="radio" name="q4" value="No">No
			<br>
		
			<b>5. Have you ever had a cancer other than basal cell carcinoma
				or cervical carcinoma insitu (CIN)?</b>
				<br><br>
			<input type="radio" name="q5" value="Yes">Yes
			<input type="radio" name="q5" value="No">No
			<br>
			
			</div>
			<button type="button" onclick="checkResult()" style="margin-top:50px; margin-left:400px "class="btn btn-outline-dark">Submit</button>
		</form>
	</div>
	<div id="result"></div>
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
	<script>
		function checkResult(){
			document.getElementById("result").innerHTML = "";
		
			var ele = document.getElementsByTagName('input');
			for(i = 0; i < ele.length; i++) {
				
				if(ele[i].type="radio") {
				
					if(ele[i].checked)
						document.getElementById("result").innerHTML
								+= ele[i].name + " Value: "
								+ ele[i].value + "<br>";
				}			
		}
		}
	
	</script>


</body>
</html>