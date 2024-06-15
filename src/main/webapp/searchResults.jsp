<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results Page</title>
 <%@include file="/Components/links.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #c5c5c5;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        button {
            background-color: #41d3a2;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 12px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #28a745;
        }

        button a {
            text-decoration: none;
            color: white;
        }

        .card-container {
            display: flex;
            flex-wrap: wrap; 
            justify-content: center; 
            gap: 21px; 
            padding: 15px; 
            margin-top: 11px;
        }

        .card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0,7);
            padding: 20px;
          
            width: 290px;
        }

        .card img {
            width: 100%;
            height: 200px;
            border-radius: 8px 8px 8px 8px;
            margin-bottom: 15px;
        }

        .card-content {
            display: flex;
            flex-direction: column; 
            align-items: left;
        }

        .card-content p {
            margin: 5px 0; 
        }

        .cart-button {
            margin-top: 10px; 
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

   <h1>Available Courses</h1>
 </div>
 </div>
 
    
    
    <div class="card-container">
    <c:forEach var="pro" items="${proList}">
        <div class="card">
            <c:if test="${not empty pro.imageUrl}">
         <a href="ViewProDesc.jsp?proId=${pro.id}&amp;coursename=${pro.coursename}&amp;courseowner=${pro.courseowner}&amp;price=${pro.price}&amp;duration=${pro.duration}&amp;material=${pro.material}&amp;category=${pro.category}&amp;desc=${pro.desc}&amp;imageUrl=${pro.imageUrl}&amp;level=${pro.level}&amp;features=${pro.features}">
                <img src="${pro.imageUrl}" alt="${pro.coursename}">
            </a>
            </c:if>

            <div style="margin-top: 10px;width: 300px;" class="card-content">
                <p>Course name: ${pro.coursename}</p>
                 <p>Level: ${pro.level}</p>
                  <p>Price: ${pro.price}</p> 
                <p>Category: ${pro.category}</p>

                 <p>Features: ${pro.features}</p>
            </div>
        </div>
    </c:forEach>
</div>



</body>
</html>