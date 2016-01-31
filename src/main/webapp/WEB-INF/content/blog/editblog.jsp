<%--
  Created by IntelliJ IDEA.
  User: yuxiao
  Date: 1/31/16
  Time: 12:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Replace Textareas by Class Name &mdash; CKEditor Sample</title>
    <meta content="text/html; charset=utf-8" http-equiv="content-type"/>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
    <script src="/ckeditor/_samples/sample.js" type="text/javascript"></script>
    <link href="/ckeditor/_samples/sample.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<form action="listpages" method="post">

    <div class="input-group input-group-lg col-md-8">
        <input type="text" class="form-control" placeholder="请输入标题" aria-describedby="sizing-addon1">
    </div>
    <p class="text-info lead">
        <s:bean var="now" name="java.util.Date"/>
        编辑时间:<s:date name="#now" nice="false" format="yyyy-MM-dd HH:mm"/>
    <hr/>
    </p>
    <textarea class="ckeditor" cols="80" id="editor1" name="editor1" rows="700"></textarea>
    </p>
    <p>
        <button type="submit" class="btn btn-default">保存并发布</button>
    </p>
</form>

<script>
    CKEDITOR.replace('editor1', {
        height: 660,
        uiColor: '#CCEAEE',
      extraPlugins: 'image'
    });
</script>

</body>
</html>
