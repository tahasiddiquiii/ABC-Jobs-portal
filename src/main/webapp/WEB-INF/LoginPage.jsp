<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<title>Login form</title>

<!-- CSS
		================================================== -->
	<!-- Fontawesome Icon font -->
	<link rel="stylesheet" href="res/plugins/themefisher-font/style.css">
	<!-- bootstrap.min css -->
	<link rel="stylesheet" href="res/plugins/bootstrap/dist/css/bootstrap.min.css">
	<!-- Animate.css -->
	<link rel="stylesheet" href="res/plugins/animate-css/animate.css">
	<!-- Magnific popup css -->
	<link rel="stylesheet" href="res/plugins/magnific-popup/dist/magnific-popup.css">
	<!-- Slick Carousel -->
	<link rel="stylesheet" href="res/plugins/slick-carousel/slick/slick.css">
	<link rel="stylesheet" href="res/plugins/slick-carousel/slick/slick-theme.css">
	<!-- Main Stylesheet -->
	<link rel="stylesheet" href="res/css/style.css">


</head>

<body onload='document.loginForm.username.focus();' bgcolor="yellow">

 
  <c:if test="${not empty errorMessge}"><div style="color:red; font-weight: bold; margin: 30px 0px;">${errorMessge}</div></c:if>
 
 <!-- Srart Contact Us
=========================================== -->		
<section id="contact-us" class="contact-us section-bg">
	<div class="container">
		<div class="row">
			
			<!-- section title -->
			<div class="title text-center wow fadeIn" data-wow-duration="500ms">
				<h2>Login <span class="color">Page</span></h2>
				<div class="border"></div>
			</div>
			<!-- /section title -->
			
			<!-- Contact Details -->
			<div class="contact-info col-md-6 wow fadeInUp" data-wow-duration="500ms">
				<h3>Contact Details</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam, vero, provident, eum eligendi blanditiis ex explicabo vitae nostrum facilis asperiores dolorem illo officiis ratione vel fugiat dicta laboriosam labore adipisci.</p>
				<div class="contact-details">
					<div class="con-info clearfix">
						<i class="tf-map-pin"></i>
						<span>Khaja Road, Bayzid, Chittagong, Bangladesh</span>
					</div>
					
					<div class="con-info clearfix">
						<i class="tf-ion-ios-telephone-outline"></i>
						<span>Phone: +880-31-000-000</span>
					</div>
					
					<div class="con-info clearfix">
						<i class="tf-ion-iphone"></i>
						<span>Fax: +880-31-000-000</span>
					</div>
					
					<div class="con-info clearfix">
						<i class="tf-ion-ios-email-outline"></i>
						<span>Email: hello@meghna.com</span>
					</div>
				</div>
			</div>
			<!-- / End Contact Details -->
				
			<!-- Contact Form -->
			 <br>    
   <div class="contact-form col-md-6 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms" >   
    <form name='login' action="/login" method='POST' >    
        <label><b>User Name :    
        </b>    
        </label>    
        <input type='text' name='username' value='' id="Uname" placeholder="Username" class="btn-transparent btn-block">    
        <br><br>    
        <label><b>Password :    
        </b>    
        </label>    
        <input type='password' name='password' id="Pass" placeholder="Password" class="btn-transparent btn-block">    
        <br><br>    
        <input name="submit" type="submit" value="submit" id="log" class="btn btn-transparent btn-block">  
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />     
        <br>   
        <u><a href="/forget"> Forgot Password</a></u>    
    </form>     
</div>    
			<!-- ./End Contact Form -->
		
		</div> <!-- end row -->
	</div> <!-- end container -->
	
	
</section> <!-- end section -->


<footer id="footer" class="bg-one">
	<div class="container">
		<div class="row wow fadeInUp" data-wow-duration="500ms">
			<div class="col-lg-12">

				<!-- Footer Social Links -->
				<div class="social-icon">
					<ul class="list-inline">
						<li><a href="https://facebook.com/themefisher"><i class="tf-ion-social-facebook"></i></a></li>
						<li><a href="https://twitter.com/themefisher"><i class="tf-ion-social-twitter"></i></a></li>
						<li><a href="https://www.youtube.com/channel/UCx9qVW8VF0LmTi4OF2F8YdA"><i class="tf-ion-social-youtube"></i></a></li>
						<li><a href="https://dribbble.com/themefisher"><i class="tf-ion-social-dribbble-outline"></i></a></li>
						<li><a href="https://pinterest.com/themefisher"><i class="tf-ion-social-pinterest-outline"></i></a></li>
					</ul>
				</div>
				<!--/. End Footer Social Links -->

				<!-- copyright -->
				<div class="copyright text-center">
					<a href="/">
						<!-- <img src="images/logo-meghna.png" alt="Meghna" />  -->
						<svg width="40px" height="40px" viewBox="0 0 45 44" version="1.1"
							xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
							<g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
								<g id="Group" transform="translate(2.000000, 2.000000)" stroke="#57CBCC"
									stroke-width="3">
									<ellipse id="Oval" cx="20.5" cy="20" rx="20.5" ry="20"></ellipse>
									<path d="M6,7 L33.5,34.5" id="Line-2" stroke-linecap="square"></path>
									<path d="M21,20 L34,7" id="Line-3" stroke-linecap="square"></path>
								</g>
							</g>
						</svg>
					</a>
					<br />

					<p>Design And Developed by <a href="http://www.themefisher.com">Themefisher.com</a>. Copyright
						&copy; <script>
							document.write(new Date().getFullYear())
						</script>. All Rights Reserved.</p>
				</div>
				<!-- /copyright -->

			</div> <!-- end col lg 12 -->
		</div> <!-- end row -->
	</div> <!-- end container -->
</footer> <!-- end footer -->

<!-- Essential Scripts
		=====================================-->
		
		<!-- Main jQuery -->
		<script type="text/javascript" src="res/plugins/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap 3.1 -->
		<script type="text/javascript" src="res/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
		<!-- Slick Carousel -->
		<script type="text/javascript" src="res/plugins/slick-carousel/slick/slick.min.js"></script>
		<!-- Portfolio Filtering -->
		<script type="text/javascript" src="res/plugins/filterzr/jquery.filterizr.min.js"></script>
		<!-- Smooth Scroll -->
		<script type="text/javascript" src="res/plugins/smooth-scroll/dist/js/smooth-scroll.min.js"></script>
		<!-- Magnific popup -->
		<script type="text/javascript" src="res/plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
		<!-- Google Map API -->
		<script type="text/javascript"  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
		<!-- Sticky Nav -->
		<script type="text/javascript" src="res/plugins/Sticky/jquery.sticky.js"></script>
		<!-- Number Counter Script -->
		<script type="text/javascript" src="res/plugins/count-to/jquery.countTo.js"></script>
		<!-- wow.min Script -->
		<script type="text/javascript" src="res/plugins/wow/dist/wow.min.js"></script>
		<!-- Custom js -->
		<script type="text/javascript" src="res/js/script.js"></script>
		
</body>
</html>

