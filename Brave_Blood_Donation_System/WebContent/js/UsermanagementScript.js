//delete camp details
     
     function getUsernameForDeleteuserDetailsAdmin(uNAME) {
			
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
						url : "userdetailsDeleteAdminServelet",
						type: 'POST',
						data: {Username: uNAME},
						success: function (data, textStatus, jqXHR) {
							
							 Swal.fire('Done!', '', 'success')
							 .then((result) => {
									
									if (result.isConfirmed) {
						  				
										
											if(data.trim() == "done"){
											
													window.location="userManagementAdmin.jsp"
												
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