<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<h1>thank you for job posting</h1>

<header id="footer" class="bg-one">
	<div class="container">
		<div class="row">
			
			<!-- section title -->
			<div class="title text-center wow fadeIn" data-wow-duration="500ms">
				<br>
				<h2>ALL<span class="color"> Jobs</span></h2>
				<div class="border"></div>
				<br>

			</div>
			<!-- /section title -->
			
		
		</div> <!-- end row -->
	</div> <!-- end container -->
	
	</header>


<!-- /section title -->
<div class="title text-center wow fadeIn block color" >

<Table  border=1>

<tr>
<th>JOB ID</th>
<th>JOB TITLE</th>
<th>COMPANY</th>
<th>JOB DESCRIPTION</th>



<tr >
<dd:forEach var="jobi" items="${Jobinfo}">
<tr ><td class="bg-primary">${jobi.jobId}</td><td class="bg-primary">${jobi.jobtitle}</td><td class="bg-primary">${jobi.company}</td><td class="bg-primary">${jobi.jobdescription}</td>
<!-- <td><input type="submit" value="Apply" class="btn btn-transparent btn-block" ></td> -->

</tr>
</dd:forEach>
</Table>
	
</div>

</body>
</html>