<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
<body>
	<!-- section title -->
			<div class="title text-center wow fadeIn" data-wow-duration="500ms">
				<h2>Learner <span class="color">Details</span></h2>
				<div class="border"></div>
			</div>
			<!-- /section title -->
<div class="col-md-4 col-md-offset-1">

<Table border=1>
<tr>
<th>UserID</th>
<th>UserName</th>
<th>Password</th>
<th>First Name</th>
<th>Last Name</th>
<th>Address</th>
<th>Email</th>
<th>Phone</th>
</tr>
<%-- <dd:forEach var="lear" items="${arvse}"> --%>

<tr><td>${gigi.userId}</td><td>${gigi.userName}</td><td>${gigi.password}</td><td>${gigi.firstname}</td><td>${arvse.lastname}</td>
<td>${gigi.address}</td><td>${gigi.email}</td><td>${gigi.phone}</td>
</tr>
<%-- </dd:forEach> --%>


</Table>
</div>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


<footer id="footer" class="bg-one">
	<div class="container">
		<div class="row wow fadeInUp" data-wow-duration="500ms">
			<div class="col-lg-12">

			

				<!-- copyright -->
				<div class="copyright text-center">
					<a href="/admin">
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