<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Student Profile Page Design Example</title>

    <meta name="author" content="Codeconvey" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>

    <!--Only for demo purpose - no need to add.-->
    <link rel="stylesheet" href="res/cssu/demo.css" />
    
	    <link rel="stylesheet" href="res/cssu/styleu.css">
</head>
<body>

		
   
            
    

<section>
    <div class="rt-container">
          <div class="col-rt-12">
              <div class="Scriptcontent">
    
    
  <%--   <% 
    Long uid =%> ${arv.userId};
    <%
    
session.setAttribute("juser",uid);
%>

<%
String name=(String)session.getAttribute("juser");  
System.out.println(name);
%>
     --%>
 

<!-- Student Profile -->
<div class="student-profile py-4">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent text-center">
            <img class="profile_img" src="https://source.unsplash.com/600x300/?student" alt="student dp">
           <%--  <dd:forEach var="profile" items="${arv}"> --%>
            <h3>${arv.firstname} ${arv.lastname}</h3>
          </div>
          <div class="card-body">
            <p class="mb-0"><strong class="pr-1">member ID:</strong>${arv.userId}</p>
            <p class="mb-0"><strong class="pr-1">User Name:</strong>${arv.userName}</p>
            <p class="mb-0"><strong class="pr-1">Email:</strong>${arv.email}</p>
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>
          </div>
          <div class="card-body pt-0">
            <table class="table table-bordered">
              <tr>
                <th width="30%">First Name</th>
                <td width="2%">:</td>
                <td>${arv.firstname}</td>
              </tr>
              <tr>
                <th width="30%">Last Name	</th>
                <td width="2%">:</td>
                <td>${arv.lastname}</td>
              </tr>
              <tr>
                <th width="30%">Address</th>
                <td width="2%">:</td>
                <td>${arv.address}</td>
              </tr>
              <tr>
                <th width="30%">Phone Number</th>
                <td width="2%">:</td>
                <td>${arv.phone}</td>
              </tr>
             
            </table>
     <%--        </dd:forEach> --%>
          </div>
        </div>
          <div style="height: 26px"></div>
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Other Information</h3>
          </div>
          <div class="card-body pt-0">
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- partial -->
           
    		</div>
		</div>
    </div>
</section>
     


    <!-- Analytics -->

</body>
</html>