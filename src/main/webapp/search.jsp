<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Page</title>
 <%@include file="/Components/links.jsp" %>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #c5c5c5;
            margin: 0;
            padding: 0;
            background-image:url("/img/loginback1.jpg");
            background-repeat: no-repeat;
    background-size: cover;
        }

        header {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 10px;
        }

 
      
    </style>
</head>
<body>
<%@include file="/Components/usernav.jsp" %>

 <div style="border:solid 1px white;box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;background-color: white;
                   margin-left:200px; margin-right:200px;margin-top: 20px;">
<div style="margin-left: 124px;
    margin-top: 12px;
    margin-bottom: 8px;">

<form action="/search" method="get">
   
    <input  type="text" id="coursename" placeholder="Enter Coursename" name="coursename">
    
    
    <input type="text" id="level" placeholder="Enter Level(beginner/intermediate/advanced)" name="level">
    
   
    <input type="text" id="category" placeholder="Enter Category(IT/non-IT)" name="category">
    
    <button class="btn btn-outline-dark my-2 my-sm-1" type="submit">Search</button>
       
</form>
 </div>
 </div>
 
 <div class="container">
 

 <div class="row" style="padding:10px;">
  <div class="col-lg-4 mb-4 col-md-6" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;position:relative;background-color: white;border:solid 1px white;padding: 70px;">

 
 <h1>Skills are the key to unlocking potential</h1>  <br>
 <p> Advice from our experts to help you along your education journey.</p>  <br>
 
 
  <form class="form-inline my-2 my-lg-0" action="https://www.skillshare.com/en/browse/blogging" method="get">
    <button style="margin-right:30px"; class="btn btn-outline-dark my-2 my-sm-1" type="submit">Blogs courses</button>
     
    </form>
    </div>

  <div class="col-lg-4 mb-4 col-md-6" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;position:relative;background-color: white;border:solid 1px white;padding: 70px;">
  
 <a style="text-decoration:none;" > <h2>We believe..Serving the world through learning </h2></a>
  <p>Learning is the source of human progress.

It has the power to transform our world
from illness to health,
from poverty to prosperity,
from conflict to peace.</p>
  
  </div>
  
  
  <div class="col-lg-4 mb-4 col-md-6" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;position:relative;background-color: white;border:solid 1px white;padding: 70px;">
  
 <a style="text-decoration:none;" > <h2>See our research.</h2>  </a>
<p>We are proud to have positively influenced the career foundations for thousands of learners across India and Asian countries.</p>  
  </div>
</div>
 </div>
 
 
 <%@include file="/Components/footer.jsp" %>
</body>
</html>