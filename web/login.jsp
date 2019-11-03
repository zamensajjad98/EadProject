<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/16/2019
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Login</title>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color:deepskyblue;
        }

        li {
            float: left;
            border-right:1px solid #bbb;
        }

        li:last-child {
            border-right: none;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover:not(.active) {
            background-color: #111;
        }

        .active {
            background-color:black;
        }
    </style>
</head>

<body>

<ul>
    <li><a href="#news">TWITTER</a></li>
    <li style="float:right"><a class="active" href="index.jsp">sign up</a></li>
    <li style="float:right"><a href="login.jsp">login</a></li>
</ul>
<div class="container" >
   <div class="row">
       <div class="col-lg-2"></div>
       <div class="col-lg-8">
<h1>Login </h1>

<form action="comparedata" method="get">

    USER NAME :   <input type="text" class="form-control" name="username" placeholder="Enter username">
    </br>
    </br>

    PASSWORD : <input type="password" class="form-control" name="password" placeholder="Password">
    </br>
    </br>
    <button type="submit" class="btn btn-primary">Submit</button>



</form>
       </div>
       <div class="col-lg-2"></div>
   </div>
</div>
</body>
</html>
