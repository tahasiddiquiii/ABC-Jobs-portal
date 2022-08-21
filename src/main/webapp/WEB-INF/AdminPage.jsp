<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="Meghna One page parallax responsive HTML Template ">

	<meta name="author" content="Muhammad Morshed">

	<title>ABC Jobs Pte Ltd | portal</title>

	<!-- Mobile Specific Meta
		================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicon -->
	<!-- <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png" /> -->

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
	  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>

    <!--Only for demo purpose - no need to add.-->
    <link rel="stylesheet" href="res/cssu/demo.css" />
    
	    <link rel="stylesheet" href="res/cssu/styleu.css">


</head>

<body id="body" data-spy="scroll" data-target=".navbar" data-offset="50">

<div class="container">
		<div class="row">
			
			<!-- section title -->
			<div class="title text-center wow fadeIn" data-wow-duration="500ms">
				<h2>Admin <span class="color">login</span></h2>
				<div class="border"></div>
				<br>

			</div>
			<!-- /section title -->
			
			  
    
		</div> <!-- end row -->
	</div> <!-- end container -->
	<!--
	    Start Preloader
	    ==================================== -->
	<div class="preloader">
		<div class="sk-cube-grid">
			<div class="sk-cube sk-cube1"></div>
			<div class="sk-cube sk-cube2"></div>
			<div class="sk-cube sk-cube3"></div>
			<div class="sk-cube sk-cube4"></div>
			<div class="sk-cube sk-cube5"></div>
			<div class="sk-cube sk-cube6"></div>
			<div class="sk-cube sk-cube7"></div>
			<div class="sk-cube sk-cube8"></div>
			<div class="sk-cube sk-cube9"></div>
		</div>
	</div>
	<!-- End Preloader
        ==================================== -->


 <!-- 
  Fixed Navigation
  ==================================== -->
    <header id="navigation" class="navbar navigation ">
        <div class="container ">
            <div class="navbar-header">
              <!-- responsive nav button -->
               <!-- main nav -->
        <nav class="collapse navbar-collapse navbar-left " role="Navigation">
            <ul id="nav" class="nav navigation-menu d-flex align-items-center">
             <%--  <li><a href="/searchM/${lear.userId}">Search</a> </li>
                <li><a href="update/${arv.userId}">update</a> </li> --%>
                <li><a href="addL"> Register a new user</a></li>
				<li><a href="showdata">Show All Members</a> </li>
				<li><a href="search">Search</a></li>
				 <li><a href="update/${arv.userId}">update my profile</a> </li>
				 <li><a href="postjob">Post Job</a></li>
				 <li><a href="showjob">Show all Job</a></li>
				 <li><a href="sendEmail">Send bulk email</a></li>
				 
          <a class="btn btn-transparent" href="/logout"> <h3> Logout</h3> </a> 
            </ul>
          
        </nav>
        <!-- /main nav -->

     
                
        </div>

       
        
       
  
      </div>
  </header>

	    
<jsp:include page="profileuser.jsp"/>


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
					<a href="/WEB-INF/Home.jsp">
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

<!-- 
		Essential Scripts
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
		


    <!-- Analytics -->

	</body>
</html>
