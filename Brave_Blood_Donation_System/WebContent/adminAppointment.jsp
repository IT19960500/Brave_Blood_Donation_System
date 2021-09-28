<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.braveBloodDonation.dao.retrieveAppointmentsDao"%>
<%@page import="com.braveBloodDonation.entities.Appointment"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Appointment Management|Brave Blood Donation System</title>
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
<link rel="stylesheet" href="css/admincss.css" type="text/css" />

</head>
<body>
	<h1
		style="color: red; font-family: Helvetica, sans-serif; font-size: 100px; text-align: center">Appointments</h1>
	<div class="col-md-6 mb-4" style="margin-left: 250px; padding =: 10px">
		<div class="input-group md-form form-sm form-2 pl-0">
			<input id="myInput" onkeyup="myFunction()"
				class="form-control my-0 py-1 amber-border" type="text"
				placeholder="Search" aria-label="Search">
			<div class="input-group-append">
				<span class="input-group-text amber lighten-3" id="basic-text1"
					style="margin-right: 10px"><i
					class="fas fa-search text-grey" aria-hidden="true"></i></span>
				<button type="button" class="btn btn-danger" id="btnExport"
					style="margin-right: 10px; background: #bb372d; padding =: 10px">Generate
					Report</button>
				<button onclick="sortTable()" class="btn btn-danger"
					style="background: #bb372d; margin-left =: 100px">Sort by ID</button>
				
			</div>
		</div>
	</div>
	<br>

	<div class="container table-area">

		<table class="table table-hover" id="AppointmentsTable">
			<thead class=" text-center"
				style="font-weight: bold; background: #bb372d; color: white;">
				<tr>

					<th scope="col">Appointment ID</th>
					<th scope="col">NIC</th>
					<th scope="col">Name</th>
					<th scope="col">BloodGrp</th>
					<th scope="col">Date</th>
					<th scope="col">Status</th>
					<th scope="col" style="width: 15%;">Action</th>
				</tr>
			</thead>
			<tbody class="text-center">

				<%
				ArrayList<Appointment> appointment = retrieveAppointmentsDao.getAllAppointments();

				for (Appointment appointment1 : appointment) {
				%>

				<tr style="font-weight: bold;">
					<td><%=appointment1.getAppointmentId()%></td>
					<td><%=appointment1.getNic()%></td>
					<td><%=appointment1.getName()%></td>
					<td><%=appointment1.getBloodgrp()%></td>
					<td><%=appointment1.getDate()%></td>
					<td><%=appointment1.getStatus()%></td>
					<td><a href="#appointmentEdit"
						data-aid="<%=appointment1.getAppointmentId()%>"
						data-anic="<%=appointment1.getNic()%>"
						data-aname="<%=appointment1.getName()%>"
						data-abloodgrp="<%=appointment1.getBloodgrp()%>"
						data-adate="<%=appointment1.getDate()%>"
						data-astatus="<%=appointment1.getStatus()%>"
						class="btn btn-warning mr-2" type="button" data-toggle="modal"
						data-target="#appointmentModal"><i class="fas fa-pen"></i></a> <a
						href="#" onclick="appointmentDelete(<%=appointment1.getNic()%>)"
						class="btn btn-danger " type="button"><i
							class="far fa-trash-alt"></i></a></td>
				</tr>

				<%
				}
				%>


			</tbody>
		</table>

	</div>







	<!-- Modal -->
	<div class="modal fade" id="appointmentModal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel"
						style="color: red; font-family: Helvetica, sans-serif;">Update
						Appointments</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<form id="updateAppointment"
						class="border border-secondary needs-validation" novalidate
						action="updateAppointmentServlet" method="post">
						<br>
						<h4>Update an appointment</h4>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Appointment ID</span> <input type="text"
								class="form-control" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default"
								name="appointmentId" id="id1">
						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">NIC</span> <input class="form-control"
								aria-label="Sizing example input" name="nic" id="nic1"
								aria-describedby="inputGroup-sizing-default" required>
						</div>
						<div class="input-group">
							<span class="input-group-text" style="width: 150px;">Name</span>
							<textarea class="form-control" name="name" id="name1"
								aria-label="With textarea" required></textarea>

						</div>
						<br>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Blood Group</span> <input type="text"
								class="form-control" name="bloodgrp" id="bloodgrp1"
								aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" required>

						</div>
						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Date</span> <input type="text"
								class="form-control" name="date" id="date1"
								aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default" required>
						</div>

						<div class="input-group mb-3">
							<span class="input-group-text" id="inputGroup-sizing-default"
								style="width: 150px;">Status</span> <select class="form-control"
								name="status" id="status1" aria-label="Sizing example input"
								aria-describedby="inputGroup-sizing-default">
								<option selected>Pending</option>
								<option>Accept</option>
								<option>Reject</option>

							</select>
						</div>

						<br>
						<div class="container bg-light">
							<div class="col-md-12 text-center">
								<button type="submit" class="btn btn-success"
									style="width: 150px; text-align: center;">Update</button>

							</div>
						</div>
						<br>
					</form>
				</div>

			</div>
		</div>
	</div>



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

	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script>


//edit  appointment

$(document).on("click", "a[href='#appointmentEdit']", function () {
	
	var appointmentId = $(this).data('aid');
    var nic = $(this).data('anic');
    var name = $(this).data('aname');
    var bloodgrp = $(this).data('abloodgrp');
    var date = $(this).data('adate');
    var status = $(this).data('astatus');
   
    
    $(".modal-body #id1").val( appointmentId );
    $(".modal-body #nic1").val( nic  );
    $(".modal-body #name1").val( name );
    $(".modal-body #bloodgrp1").val( bloodgrp);
    $(".modal-body #date1").val( date);
    $(".modal-body #status1").val( status );
	});

</script>
	<script>

//edit appointment

$(document).ready(function (e) {
	
	console.log('loading appointment edit page..');
	
	

	$('#updateAppointment').on("submit", function(evenet) {
		
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
						
						
						url: "updateAppointmentServlet",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
							if(data.trim() == "done"){
								
								new swal("Good job!", "Update Successfully!", "success")
								.then((value) => {
								  window.location="adminAppointment.jsp"
								});
								
							}else{
								new swal("Good job!", "Update Successfully!", "success");
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

function appointmentDelete(anic) {
	
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
				url : "appointmentDelete",
				type: 'POST',
				data: {nic: anic},
				success: function (data, textStatus, jqXHR) {
					
					 Swal.fire('Done!', '', 'success')
					 .then((result) => {
							
							if (result.isConfirmed) {
				  				
								
									if(data.trim() == "done"){
									
											window.location="adminAppointment.jsp"
										
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

$("#btnExport").on("click", function () {
	html2canvas($('#AppointmentsTable')[0], {
      onrendered: function (canvas) {
          var data = canvas.toDataURL();
           var docDefinition = {
             content: [{
                 image: data,
                 width: 500
                 }]
             };
              pdfMake.createPdf(docDefinition).download("AppointmentsReport.pdf");
        }
      });
 });
</script>

<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("AppointmentsTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>

<script>
function sortTable() {
  var table, rows, switching, i, x, y, shouldSwitch;
  table = document.getElementById("AppointmentsTable");
  switching = true;
  /*Make a loop that will continue until
  no switching has been done:*/
  while (switching) {
    //start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /*Loop through all table rows (except the
    first, which contains table headers):*/
    for (i = 1; i < (rows.length - 1); i++) {
      //start by saying there should be no switching:
      shouldSwitch = false;
      /*Get the two elements you want to compare,
      one from current row and one from the next:*/
      x = rows[i].getElementsByTagName("TD")[0];
      y = rows[i + 1].getElementsByTagName("TD")[0];
      //check if the two rows should switch place:
      if (Number(x.innerHTML) > Number(y.innerHTML)) {
        //if so, mark as a switch and break the loop:
        shouldSwitch = true;
        break;
      }
    }
    if (shouldSwitch) {
      /*If a switch has been marked, make the switch
      and mark that a switch has been done:*/
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
    }
  }
}
</script>

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.22/pdfmake.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
</body>
</html>