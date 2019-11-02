<%--
  Created by IntelliJ IDEA.
  User: Zmny
  Date: 10/15/2019
  Time: 6:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>tweets</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
<div class="container">


    <ul>
        <li><a href="#news">TWITTER</a></li>
        <li style="float:right"><a class="active" href="login.jsp">logout</a></li>
    </ul>
    <h2>tweet here</h2>
<form action="showtweets" method="post">

            <div class="form-group">

                <textarea class="form-control" rows="5" name="tweets"></textarea>
            </div>

    </br>
    </br>
    <input type="submit" value="posttweet"></input>

    </form>

</div>
</body>
</html>
