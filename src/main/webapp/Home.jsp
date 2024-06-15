<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Management System</title>
 <%@include file="/Components/links.jsp" %>
<style> 
 $('.carousel').carousel({
  interval: 500
})
   
   
   

 


#but2:active {
  color: #666;
  box-shadow: inset 4px 4px 12px #c5c5c5, inset -4px -4px 12px #ffffff;
}
</style>
</head>
<body>
 <%@include file="/Components/userMainHomeNavbar.jsp" %>
 
  
  
  <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
 
    <div class="carousel-item active">
      <img class="d-block w-100" src="/img/main1.jpg" alt="First slide">
      <form action="Register.jsp" method="post">
      <button type="submit" style="position: relative;
    top: -200px;
    left: 611px;
    
     color: #090909;
  padding: 0.7em 1.7em;
  font-size: 18px;
  border-radius: 0.5em;
  background: #ffffff;
  cursor: pointer;
  border: 1px solid #ededed;
  transition: all 0.3s;
  box-shadow: 6px 6px 12px #c5c5c5, -6px -6px 12px #ffffff"; id="but2"; class="btn btn-secondary btn-lg">Get Started</button>
    </form>
    </div>
    
    <div class="carousel-item">
      <img class="d-block w-100" src="/img/main2.jpg" alt="Second slide">
       
    </div>
    
     <div class="carousel-item">
      <img class="d-block w-100" src="https://png.pngtree.com/background/20231030/original/pngtree-illustration-of-3d-rendered-laptop-computer-showcasing-the-concept-of-e-picture-image_5792554.jpg" alt="Third slide">
      
       
  
    
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   <!-- -
    
   <form action="Login.jsp" method="post">
                <li><button class="Signup" type="submit">Login</button></li>
            </form>
            
            <br>
            <br>
            
            <form action="Register.jsp" method="post">
                <li><button class="Signup" type="submit">Sign Up</button></li>
            </form>
            
            
             --> 
</body>
</html>