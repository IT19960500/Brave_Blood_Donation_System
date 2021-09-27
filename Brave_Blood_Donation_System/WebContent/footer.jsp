<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style type="text/css">



/*footer*/
footer{
    margin: 2% 5%;
}

footer ul li{
    text-decoration: none;
    list-style: none;
    
}
.footer_content{
    display: flex;
    justify-content: space-between;
}

footer h3,h4{
    margin-bottom: 10px;
    padding: 5px;
}


/*Map*/
.mapout {
    position: relative;
    text-align: right;
    height: 500px;
    width: 600px;
}

.map_canvas {
    overflow: hidden;
    background: none !important;
    height: 500px;
    width: 600px;
}

.quick_links ul li{
    margin-top: 15px;
    padding: 5px; 
}

.info ul li{
    margin-top: 15px;
    padding: 5px;
}

.contact_us ul li{
    margin-top: 15px;
    padding: 5px; 
}

/*social media icons */
.social{
    margin-top: 40px;
    display:flex;
    justify-content:space-between;
    
}

.social i{
    margin: 2px 10px;
    width: 50px;
    height: 50px;
    background-color: #eee;
    text-align: center;
    line-height: 50px;
    border-radius: 50%;
    color: #eee;
    
}

i.fa-facebook-f{
    background: #3b5998;
}

i.fa-twitter{
    background: #00acee;
}

i.fa-instagram{
    background: #ff4500;
}

i.fa-youtube{
    background: #FF0000;
}





</style>

</head>
<body>
<div class="footer">
    <hr>
    <footer>
        <div class="footer_content" style="margin-left:0">
            <div class="quick_links ">
                <h4 class="text-center">Quick Links</h4>
                <ul id="list_1">
                    <li><a href="#">Appointment</a></li>
                    <li><a href="#">Donation Camp</a></li>
                    <li><a href="#">Camp Schedule</a></li>
                    <li><a href="#">Notice</a></li>
                </ul>
            </div>
            <div class="info" style="margin-left:30px">
                <h4 class="text-center">Info</h4>
                <ul id="list_2">
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Help</a></li>
                    <li><a href="#">News</a></li>
                    <li><a href="#">About Us</a></li>
                </ul>
            </div>
        
            <hr>
        <!--contact details-->
        <div class="contact_us" style="margin-left:30px">
            <h3 class="text-center">Brave Blood Donor</h3>
            <ul>
                <li>Address: <a href="398/A/3 Main Street, Ganemulla.">398/A/3 Main Street colombo.</a></li>
                <li>Tel: <a href="tel:+0111234567">0111234567</a></li>
                <li>Fax: <a href="fax: 0111234567">0111234567</a></li>
                <li>Email: <a href="chanelD@medical.com">bbd@.com</a></li>
            </ul>
            <div class="social">
                <a href=https://www.facebook.com><i class="fab fa-facebook-f fa-lg"></i></a>
                <a href=https://www.twitter.com><i class="fab fa-twitter fa-lg"></i></a>
                <a href=https://www.instagram.com><i class="fab fa-instagram fa-lg"></i></a>
                <a href=https://www.youtube.com><i class="fab fa-youtube fa-lg"></i></a>
            </div>
        </div>
        <hr>
        <!--map-->
        <div class="mapouter" style="margin-left:100px">
            <div class="gmap_canvas"><iframe width="400" height="300" id="gmap_canvas" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.99481701519!2d79.87519665009907!3d6.891222220667191!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25a103d225647%3A0xef1259856066f0bf!2sNational%20Blood%20Centre!5e0!3m2!1sen!2slk!4v1629792132883!5m2!1sen!2slk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
            </div>
        </div>
          
    </footer>
    <hr>
    <div class="copyright">
    <center><p>&copy; BRAVE BLOOD DONOR | All Rights Reserved</p></center>
    </div>

  </div>

</body>
</body>
</html>