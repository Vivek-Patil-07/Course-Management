<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
 <%@include file="/Components/links.jsp" %>
    <style>
     body {
           
            font-family: Arial, sans-serif;
            background-color: #c5c5c5;
            margin: 0;
            padding: 0;
                background-image:url("/img/loginback1.jpg");
            background-repeat: no-repeat;
    background-size: 107%;
        
           
        }
        .container {
            display: flex;
            justify-content: center; 
            margin: 40px;
        }
        
        .card {
            background-color: white;
            width: 190px;
            height: 292px;
            border-radius: 7px;
            margin: 39px;
            box-shadow: 4px 5px rgb(66, 60, 59);
        }
        
        .card:hover {
            box-shadow: 0 0 10px rgba(0, 0, 0, 1); 
        }
        
        .btn button {
            padding: 10px 20px;
            border-radius: 10px;
            background-color: rgb(49, 160, 194);
            border-style: none;
            font-size: 17px;
            margin: 20px;
            color: rgb(231, 229, 230);
            cursor: pointer;
        }
        
        .btn button:hover {
            background-color: rgba(61, 77, 224, 0.699);
            color: rgb(240, 243, 242);
        }
        
        .image {
            background-color: rgb(154, 196, 209);
            border-radius: 10px;
        }
        
        .btn a {
            text-decoration: none;
            color: white;
        }
        
        .login-btn, .manage-btn, .add-btn {
            text-align: center;
        }
        
        .login-btn button, .manage-btn button, .add-btn button {
            padding: 10px 20px;
            border-radius: 10px;
            background-color: rgb(49, 160, 194);
            border-style: none;
            font-size: 17px;
            margin: 5px;
            color: rgb(231, 229, 230);
            cursor: pointer;
        }
        
        .login-btn button:hover, .manage-btn button:hover, .add-btn button:hover {
            background-color: rgba(61, 77, 224, 0.699);
            color: rgb(240, 243, 242);
        }
    </style>
</head>
<body>
<%@include file="/Components/adminnav.jsp" %>


    
    
    
    <div class="row" style="margin-top: 41px;;">
  <div class="col-sm-6">
    <div class="card" style="width:290px;margin-left:312px;height: 330px;">
      <div class="card-body">
       <img style="max-width: 175px;margin-left: 46px;margin-top: 21px; " alt="" src="/img/add.png">
       
        <a style="position: relative;
    left: 61px;
    top: 43px;" href="AddPro.jsp" class="btn btn-primary">Add Course</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card" style="width:290px;height: 330px;">
      <div class="card-body">
        <img style="max-width: 175px;margin-left: 38px;margin-top: 16px;" alt="" src="/img/clipboard.png">
      
        <a style="position: relative;
    left: 61px;
    top: 43px;" href="viewpro" class="btn btn-primary">Manage Course</a>
      </div>
    </div>
  </div>
</div>





</body>
</html>