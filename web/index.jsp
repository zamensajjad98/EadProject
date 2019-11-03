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
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
  <div class="container" >
      <div class="row">
          <div class="col-lg-2"></div>
          <div class="col-lg-8">
  <h1>Sign up </h1>
  <form action="saveddata" method="post">


    NAME : <input type="text" class="form-control" name="myname" placeholder="Enter name">
    </br>
    </br>

    USER NAME : <input type="text" class="form-control" name="myusername" placeholder="Enter username">
    </br>
    </br>
    PASSWORD :  <input type="password" class="form-control" name="mypassword" placeholder="Enter password">
    </br>
    </br>


    DATE OF BIRTH:  <input type="date" class="form-control" name="mybirthdate" >
    </br>
    </br>
    EMAIL ADDRESS:  <input type="email" class="form-control" name="myemail" placeholder="Enter email">
    </br>
    </br>
    UPLOAD IMAGE : <input type="file"   name="myfile"><br>
    <br>
    </br>
    </br>
      <button type="submit" class="btn btn-primary">Submit</button>
    </br>
    </br>
    </br>
    <h6>Already have an account? click login </h6> <h5><a href="login.jsp">Login</a></h5>
  </form>
          </div>
          <div class="col-lg-2"></div>
      </div>
  </div>
  </body>
</html>
