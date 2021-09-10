<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http//:ww.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charsert=UTF-8">
<title>Notices Management-NEWS-Add New|Brave Blood Donation System</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">



</head>

<body>


<h1 style="color:red;font-family:Helvetica, sans-serif; font-size: 100px;">NEWS ARTICLES</h1>
 
<br>
<h4>New News Articles</h4>
<form  class="border border-secondary needs-validation" novalidate action="AddNewsArticleServlet" method="post" enctype="multipart/form-data">
 <br>
 <div class="input-group mb-3">
 	<span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Article ID</span>
	<input type="text" name="newsId" class="form-control"  readonly="readonly" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
</div>


<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Author ID</span>
  <input type="text" name ="newsAuthorID" class="form-control"  aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
  <div class="invalid-tooltip">
        Please provide the Author ID.
      </div>
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Article Heading</span>
  <input type="text" name="newsHeading" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
     <div class="invalid-tooltip">
        Please provide the Article Heading.
      </div>
</div>
<div class="input-group">
  <span class="input-group-text" style="width:150px;">Description</span>
  <textarea name="newsDescription"class="form-control" aria-label="With textarea" required></textarea>
      <div class="invalid-tooltip">
        Please provide the Article description.
      </div>
</div>
<br>
<div class="input-group">
  <span class="input-group-text" style="width:150px;">Full Article</span>
  <textarea name="newsArticle"class="form-control" aria-label="With textarea" required></textarea>
      <div class="invalid-tooltip">
        Please provide the Article.
      </div>
</div>
<br>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default" style="width:150px;">Upload Image</span>
  <input name="newsPhoto"class="form-control" type="file" id="formFile" required >
  <div class="invalid-tooltip">
        Please provide an Image.
      </div>
</div>
<br>
 <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-success" style="width:150px; text-align: center;">Add</button>
            <a href="news2.jsp" class="btn btn-outline-dark" style="width:150px; text-align: center;">Close</a>            
        </div>
 </div>
 <br>
 </form>
 
 <script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>

	<!-- jquery script -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>
