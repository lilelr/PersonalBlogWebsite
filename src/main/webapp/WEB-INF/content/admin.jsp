<%--
  Created by IntelliJ IDEA.
  User: yuxiao
  Date: 16/4/17
  Time: 下午7:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>admin</title>
  <script type="text/javascript" src="/js/jquery.min.js"></script>
  <script type="text/javascript" src="/js/bootstrap.js"></script>
  <link href="/css/bootstrap.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container">
  <div class="cl-md-9">
    <table class="table table-striped">
      <tr>
        <td><h3>ITEM</h3></td>
        <td><h3>INCREASE</h3></td>
        <td><h3>DELETE</h3></td>
        <td><h3>MODIFY</h3></td>
        <td><h3>FIND</h3></td>
      </tr>
      <tr>
        <td>blog</td>
        <td><a href="blogedit">increase</a></td>
        <td><a href="showdeleteblog">delete</a></td>
        <td><a href="showblogindex">modify</a></td>
        <td><a href="showblogindex">find</a></td>
      </tr>
      <tr>
        <td>personalInfo</td>
        <td><a href="#">increase</a></td>
        <td><a href="#">delete</a></td>
        <td><a href="#">modify</a></td>
        <td><a href="#">find</a></td>
      </tr>
    </table>
  </div>
</div>
</body>
</html>