<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us Page</title>
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

        h1 {
            text-align: center;
            color: #333;
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

   <h1>Contact Us</h1>
 </div>
 </div>
 
 
 
  <div class="container">
 

 <div class="row" style="padding:23px;">
  <div class="col-lg-6 mb-4 col-md-6" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;position:relative;background-color: white;border:solid 1px white;padding: 70px;">

 
 <h1>Talk to a member of our Sales team</h1>  <br>
 <p> We'll help you find the right courses for your learning. </p>  <br>
 
 
  
 <a href="tel:762-015-2099" > <button style="margin-right:30px;position: relative;
    left: 139px;" class="btn btn-outline-dark my-2 my-sm-1" type="submit">Contact Sales</button> </a> 
     
     
    </div>

  <div class="col-lg-6 mb-4 col-md-6" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;position:relative;background-color: white;border:solid 1px white;padding: 70px;">
  
 <h1>  Product and account support </h1>
  <p>Our help center is fresh and always open for business, if you can't find answer you're looking for, we're here to lend a hand.</p>
  
  
  <a href="sms:(+91)(7620152099)">
    <button style="margin-right:30px;position: relative;
        left: 124px;
    top: 22px;" class="btn btn-outline-dark my-2 my-sm-1" type="submit">Go to the help center</button>
     </a>
   
  
  </div>
  
  

</div>
 </div>



<%@include file="/Components/footer.jsp" %>
</body>
</html>