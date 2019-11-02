<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/12/2019
  Time: 11:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>assignment1</title>

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

  <h1>create your  twitter account </h1>
  <form action="saveddata" method="post">


    NAME : <input type="text" name="myname">
    </br>
    </br>
    USER NAME :  <input type="text" name="myusername">
    </br>
    </br>
    PASSWORD :  <input type="password" name="mypassword">
    </br>
    </br>


    DATE OF BIRTH:  <input type="date" name="mybirthdate">
    </br>
    </br>
    EMAIL ADDRESS:  <input type="email" name="myemail">
    </br>
    </br>
    UPLOAD IMAGE : <input type="file" name="myfile"><br>
    <br>
    </br>
    </br>
    <input type="submit" value="SUBMIT" >
    </br>
    </br>
    </br>
    <h6>Already have an account? click login </h6> <h5><a href="login.jsp">Login</a></h5>
  </form>

  </body>
</html>
