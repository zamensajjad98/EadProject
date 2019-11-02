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

<h1>login to your account </h1>
<form action="comparedata" method="get">
    USER NAME :  <input type="text" name="username">
    </br>
    </br>
    PASSWORD :  <input type="password" name="password">
    </br>
    </br>
    <input type="submit" value="SUBMIT" >
    </br>
    </br>
    </br>
    <input type="submit" value="CANCEL" >
</form>
</body>
</html>
