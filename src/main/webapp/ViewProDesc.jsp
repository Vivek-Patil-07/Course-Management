<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Course Description Page</title>
 <%@include file="/Components/links.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #c5c5c5;
            margin: 0;
            padding: 0;
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

        .left-section {
            flex: 1;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.001);
                margin-top: 70px;
        }

        .left-section img {
            width: 100%;
            height:500px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 8);
                height: 240px
        }

        .left-section h2{
            text-align: center;
        }

        .right-section {
            flex: 2;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
                margin-top: 22px;
                margin-left: 17px;
        }

        .right-section h2 {
            font-weight: bold;
            color: #333;
            border-bottom: 2px solid #333;
            padding-bottom: 10px;
        }

        .right-section p {
            margin: 20px 0; 
            color: #555;
            font-size: 16px;
        }

        .right-section .btn-container {
            margin-top: 40px;
            text-align: center;
        }

        .right-section button {
            background-color: #41d3a2;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 12px 24px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 16px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 8);
        }

        .right-section button:hover {
            background-color: #28a745;
        }
        
      

        button {
            padding: 12px 25px;
            font-size: 18px;
            cursor: pointer;
            color: #fff;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            box-shadow: 0 4px #0056b3;
            transition: all 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        button:active {
            box-shadow: 0 2px #0056b3;
            transform: translateY(2px);
        }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fff;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
            text-align: center;
            font-size: 18px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            position: relative;
            animation: fadeIn 0.3s;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            position: absolute;
            top: 10px;
            right: 20px;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<%@include file="/Components/usernav.jsp" %>


<div class="container">
    <div class="left-section">
        <h2>Course Details</h2><hr>
        <img src="${param.imageUrl}" alt="${param.coursename}">
          
  <a style="text-decoration:none;position: relative;
    left: 670px;
    top: 48px;" href="${param.material}"> <i class="fa-solid fa-book fa-2xl"></i>  </a>
         
                 
 <button style="position: relative;
    left: 696px;
    top: 44px;" class="btn btn-outline-primary-dark my-2 my-sm-1" id="bookButton" type="submit">Book</button>
        
    </div>
   
     
     
      <!--  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d238.30840569670062!2d74.1910949!3d17.1246945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc19fe8ba38ebcd%3A0x1db1f02f195fad60!2sSpeed%20fitness%20club%20gym%20kasegon!5e0!3m2!1sen!2sin!4v1679653211990!5m2!1sen!2sin" width="800" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>     
      - -->  
     
    
     
     
    
    
    <div class="right-section">
        <h2>Description</h2>
        <div>
            <p><strong>Course name:</strong> ${param.coursename}</p>
             <p><strong>Course Owner name:</strong> ${param.courseowner}</p>
            <p><strong>Price:</strong> ${param.price}</p>
            <p><strong>Duration:</strong> ${param.duration}</p>
            <p><strong>Level:</strong> ${param.level}</p>
            <p><strong>Category:</strong> ${param.category}</p>
            <p><strong>Features:</strong> ${param.features}</p>
             <p><strong>Description:</strong> ${param.desc}</p>        
        </div>
        
        <div class="btn-container">
           <form action="/addToCart" method="post">
    <input type="hidden" name="coursename" value="${param.coursename}">
    <input type="hidden" name="courseowner" value="${param.courseowner}">
    <input type="hidden" name="price" value="${param.price}">
     <input type="hidden" name="duration" value="${param.duration}">
      <input type="hidden" name="level" value="${param.level}">
    <input type="hidden" name="category" value="${param.category}">
    <input type="hidden" name="features" value="${param.features}">
    <input type="hidden" name="desc" value="${param.desc}">
    <input type="hidden" name="imageUrl" value="${param.imageUrl}">
    <div class="btn-container">
        
        
    </div>
</form>





       
        
    </div>
</div>
</div>


    <!-- The Modal -->
    <div id="myModal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <span class="close">&times;</span>
            <p>Course booked successfully!</p>
        </div>
    </div>

<script >
document.addEventListener("DOMContentLoaded", function() {
    var modal = document.getElementById("myModal");
    var btn = document.getElementById("bookButton");
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal 
    btn.onclick = function() {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
});


</script>
<%@include file="/Components/footer.jsp" %>
</body>
</html>