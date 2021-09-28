//add camp category	
		$(document).ready(function() {
				
		  		console.log("loading add camp cat page....");
		  		
		  		$('#campCat').on("submit", function(evenet) {
					
					evenet.preventDefault();
					
					let form = new FormData(this);
					
					//now requestiong to server
					$.ajax({
						
						url: "addCampCategoryServlet",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
							//console.log(data);
							
							if(data.trim() == "done"){
								
								new swal("Good job!", "Add Successfully!", "success")
								.then((value) => {
								  window.location="adminPanel.jsp"
								});
								
							}else{
								new swal("Error!", data , "error");
							}
							
						},
						error: function (jqXHR, textStatus, errorThrown) {
							//console.log(data);
							new swal("Error!", "Something went wrong !, Try Again..", "error");
						},
							processData: false,
							contentType: false
						
					});//ajax end
					
		  		});//end fun	
		  		
		  		
			});//end main
//end of add camp category



//edit camp category

	$(document).on("click", "a[href='#categoryModal']", function () {
		
		var catID = $(this).data('cid');
	    var cn = $(this).data('cname');
	    
	    $(".modal-body #c_id").val( catID );
	    $(".modal-body #c_name").val( cn );
		
		});
	
//end of edit camp category




//edit camp category
     
     $(document).ready(function (e) {
 		
 		console.log('loadring camp cat edit page..');
 		
 		

 		$('#editCampCategory').on("submit", function(evenet) {
 			
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
 							
 							
 							url: "editCampCategoryServlet",
 							type: 'POST',
 							data: form,
 							success: function(data, textStatus, jqXHR) {
 								
 								if(data.trim() == "done"){
 									
 									new swal("Good job!", "Update Successfully!", "success")
 									.then((value) => {
 									  window.location="adminPanel.jsp"
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
     
//end of edit camp category


//delete camp category
     
     function getCampCatIDForDelete(cid) {
			
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
						url : "campCatDeleteServlet",
						type: 'POST',
						data: {cId: cid},
						success: function (data, textStatus, jqXHR) {
							
							 Swal.fire('Done!', '', 'success')
							 .then((result) => {
									
									if (result.isConfirmed) {
						  				
										
											if(data.trim() == "done"){
											
													window.location="adminPanel.jsp"
												
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
     
     
//end of delete camp category
     



//add camp details	
		$(document).ready(function() {
				
		  		console.log("loading add camp cat page....");
		  		
		  		$('#addCampDetailsForm').on("submit", function(evenet) {
					
					evenet.preventDefault();
					
					let form = new FormData(this);
					
					//now requestiong to server
					$.ajax({
						
						url: "addCampDetailsAdminServlet",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
							//console.log(data);
							
							if(data.trim() == "done"){
								
								new swal("Good job!", "Add Successfully!", "success")
								.then((value) => {
								  window.location="adminPanel.jsp"
								});
								
							}else{
								new swal("Error!", data , "error");
							}
							
						},
						error: function (jqXHR, textStatus, errorThrown) {
							//console.log(data);
							new swal("Error!", "Something went wrong !, Try Again..", "error");
						},
							processData: false,
							contentType: false
						
					});//ajax end
					
		  		});//end fun	
		  		
		  		
			});//end main
//end of add camp details




//change windo for edit camp details
	$(document).ready(function() {

		let editStatus = false;
		
		$('#edit_button').click(function() {
			
			
			if(editStatus == false){
				
				$('#edit_details').hide();
				$('#poster_details').show();
				
				editStatus = true;
				
				$('#edit_button').text("Edit Poster")
				$('#edit_details').show();
				$('#poster_details').hide();
			}else{
				
				$('#poster_details').show();
				$('#edit_button').show();
				
				
				editStatus = false;
				$('#edit_button').text("Edit Details")
				$('#edit_details').hide();
			}
			
		})
		
	});



//get edit camp details

	$(document).on("click", "a[href='#campDetailsEdit']", function () {
		
		var campid = $(this).data('campid');
	    var poster = $(this).data('poster');
	    var campCat = $(this).data('campcat');
	    var orgName = $(this).data('orgname');
	    var cDate = $(this).data('cdate');
	    var cTime = $(this).data('ctime');
	    var address = $(this).data('address');
	    var location = $(this).data('location');
	    var exDonors = $(this).data('exdonors');
	    var arrangement = $(this).data('arrangement');
	    var ozerName = $(this).data('ozername');
	    var ozerMail = $(this).data('ozermail');
	    
	    $(".modal-body #c_id").val( campid );
	    $(".modal-body #cat_id").val( campCat );
	    $(".modal-body #c_name").val( orgName );
	    $(".modal-body #datepicker2").val( cDate );
	    $(".modal-body #timepicker2").val( cTime );
	    $(".modal-body #c_address").val( address );
	    $(".modal-body #c_location").val( location );
	    $(".modal-body #c_exdonors").val( exDonors );
	    $(".modal-body #c_arrangment").val( arrangement );
	    $(".modal-body #o_name").val( ozerName );
	    $(".modal-body #o_email").val( ozerMail );

		$('#c_poster').attr('src',poster);
		
		});
	
//end of get edit camp details



//edit camp poster
     
     $(document).ready(function (e) {
 		
 		console.log('loadring camp cat edit page..');
 		
 		

 		$('#editCampPoster').on("submit", function(evenet) {
 			
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
 							
 							
 							url: "editCampPosterServlet",
 							type: 'POST',
 							data: form,
 							success: function(data, textStatus, jqXHR) {
 								
 								if(data.trim() == "done"){
 									
 									new swal("Good job!", "Update Successfully!", "success")
 									.then((value) => {
 									  window.location="adminPanel.jsp"
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
     
//end of edit camp poster



//edit camp details
     
     $(document).ready(function (e) {
 		
 		console.log('loadring camp cat edit page..');
 		
 		

 		$('#editFrom').on("submit", function(evenet) {
 			
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
 							
 							
 							url: "editCampDetailsServlet",
 							type: 'POST',
 							data: form,
 							success: function(data, textStatus, jqXHR) {
 								
 								if(data.trim() == "done"){
 									
 									new swal("Good job!", "Update Successfully!", "success")
 									.then((value) => {
 									  window.location="adminPanel.jsp"
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
     
//end of edit camp podetailsster



//delete camp details
     
     function getCampIDForDeleteCampDetails(cID) {
			
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
						url : "campDetailsDeleteServlet",
						type: 'POST',
						data: {campId: cID},
						success: function (data, textStatus, jqXHR) {
							
							 Swal.fire('Done!', '', 'success')
							 .then((result) => {
									
									if (result.isConfirmed) {
						  				
										
											if(data.trim() == "done"){
											
													window.location="adminPanel.jsp"
												
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
     
     
//end of delete camp details


//add camp details from user	
		$(document).ready(function() {
				
		  		console.log("loading add camp user page....");
		  		
		  		$('#addCampDetailsUserForm').on("submit", function(evenet) {
					
					evenet.preventDefault();
					
					let form = new FormData(this);
					
					//now requestiong to server
					$.ajax({
						
						url: "addCampDetailsUserServlet",
						type: 'POST',
						data: form,
						success: function(data, textStatus, jqXHR) {
							
							//console.log(data);
							
							if(data.trim() == "done"){
								
								new swal("Good job!", "Add Successfully!", "success")
								.then((value) => {
								  window.location="home.jsp"
								});
								
							}else{
								new swal("Error!", data , "error");
							}
							
						},
						error: function (jqXHR, textStatus, errorThrown) {
							//console.log(data);
							new swal("Error!", "Something went wrong !, Try Again..", "error");
						},
							processData: false,
							contentType: false
						
					});//ajax end
					
		  		});//end fun	
		  		
		  		
			});//end main
//end of add camp details from user



//confrim camp details
     
     function getOrgIDFroConfirm(orgid) {
			
			Swal.fire({
				
				  title: 'Are you sure?',
				  text: "Do you want to confirm this request!",
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: 'Yes, delete it!'
			
			}).then((result) => {
				if (result.isConfirmed) {
					
					$.ajax({
						
						//goto jsp page
						url : "confirmCampDetailsServlet",
						type: 'POST',
						data: {orgId: orgid},
						success: function (data, textStatus, jqXHR) {
							
							 Swal.fire('Done!', '', 'success')
							 .then((result) => {
									
									if (result.isConfirmed) {
						  				
										
											if(data.trim() == "done"){
											
													window.location="adminPanel.jsp"
												
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
     
     
//end of confirm camp details


//delete organize camp details
     
     function getOrgIDForDelete(orgid) {
			
			Swal.fire({
				
				  title: 'Are you sure?',
				  text: "Do you want to reject request!",
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: 'Yes, delete it!'
			
			}).then((result) => {
				if (result.isConfirmed) {
					
					$.ajax({
						
						//goto jsp page
						url : "ooganizCampDetailsDeleteServlet",
						type: 'POST',
						data: {orgId: orgid},
						success: function (data, textStatus, jqXHR) {
							
							 Swal.fire('Done!', '', 'success')
							 .then((result) => {
									
									if (result.isConfirmed) {
						  				
										
											if(data.trim() == "done"){
											
													window.location="adminPanel.jsp"
												
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
     
     
//end of delete organize camp details











     
     





















     