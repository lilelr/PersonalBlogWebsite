<%--
  Created by IntelliJ IDEA.
  User: yuxiao
  Date: 16/4/17
  Time: 下午5:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Background Login</title>
  <script type="text/javascript" src="/js/jquery.min.js"></script>
  <script type="text/javascript" src="/js/bootstrap.js"></script>
  <link href="/css/bootstrap.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container">
    <div class="center-block">
        <form action="adminLogin">
            <div class="form-group">
                <label for="adminname">管理员名</label>
                <input type="text" class="form-control" id="adminname" name="adminname" placeholder="admin">
            </div>
            <div class="form-group">
                <label for="adminpassword">Password</label>
                <input type="password" class="form-control" id="adminpassword" name="adminpassword" placeholder="Password">
            </div>

            <button type="submit" class="btn btn-default">submit</button>
        </form>
    </div>
</div>

</body>
</html>
