// edit window chane -->

$(document).ready(function() {



let editStatus = false;

$('#edit_button').click(function() {


if(editStatus == false){

$('#profile_details').hide();
$('#delete_button').hide();
$('#edit_details').show();

editStatus = true;

$('#edit_button').text("Back")

}else{

$('#profile_details').show();
$('#delete_button').show();
$('#edit_details').hide();

editStatus = false;

$('#edit_button').text("Edit")

}

})

});





// delete window chane -->




$(document).ready(function() {



let deleteStatus = false;

$('#delete_button').click(function() {


if(deleteStatus == false){

$('#profile_details').hide();
$('#delete_details').show();
$('#edit_details').hide();
$('#edit_button').hide();

deleteStatus = true;

$('#delete_button').text("Back")

}else{

$('#profile_details').show();
$('#deleteBtn').show();
$('#edit_details').hide();
$('#edit_button').show();
$('#delete_details').hide();

deleteStatus = false;

$('#delete_button').text("Deactivate")

}

})

});