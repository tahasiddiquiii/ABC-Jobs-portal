<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib prefix="ff" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="/res/cssj/stylej.css">

<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 50%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #353b43;
}
</style>

</head>
<body>


 
 
<div class="row">


  
  <ff:forEach var="jobi" items="${Jobinfo}" >
  
  <div class="column">
  
 
    <div class="card"> 
   
		<div class="container">
		

				
					<div class="job-card">
						<div class="job-card__content">
							<div class="job-card_img">
								<img src="/res/images/jobava.jpg" alt="Company Logo">
							</div>
							<div class="job-card_info">
								<h6 class="text-muted">
									 <a href="#!" class="job-card_company"><h2> ${jobi.company} </h2></a> 
									<a href="#!" class="float-right">
										<i class="fa fa-heart-o"></i>
									</a>
								</h6>
								<h1><b>${jobi.jobtitle}</b></h1>

							</div>
						</div>
						<div class="job-card__footer">
							<div class="job-card_job-type">
								<h3><span class="job-label">${jobi.jobdescription}</span></h3>           
							</div>
						
							<a class="btn btn-primary" href="/jobDetails/${jobi.jobId}"><h1>View Job Details</h1></a>

							
						</div>
					</div>
				</div>
				
			</div>
		 <br>
         <br>
		</div>
		
		</ff:forEach>
		
     </div>
    


	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>