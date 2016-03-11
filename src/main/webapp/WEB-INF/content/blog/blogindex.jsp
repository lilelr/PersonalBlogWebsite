<%--
  Created by IntelliJ IDEA.
  User: yuxiao
  Date: 1/31/16
  Time: 10:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <title>博客目录</title>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.js"></script>
    <script type="text/javascript" src="/js/easing.js"></script>
    <script type="text/javascript" src="/js/move-top.js"></script>

    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="/css/blog.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container">
    <div class="header container">
        <div class="logo">
            <a href="#">
                <img src="/images/yuntianhe.jpg" alt="" class="img-circle"/>
            </a>
        </div>

        <div class="navigation">
            <nav class="navbar navbar-default">
                <div class="nav-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#navcollapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"> </span>
                        <span class="icon-bar"> </span>
                        <span class="icon-bar"> </span>
                    </button>
                </div>
                <div id="navcollapse" class="collapse navbar-collapse nav-wil">
                    <nav class="cl-effect-7" id="cl-effect-7">
                        <ul class="nav navbar-nav">
                            <li class="active"><a class="scroll" href="#">主页</a></li>
                            <li><a href="#" class="scroll">博客目录</a></li>
                            <li><a href="#" class="scroll">留言</a></li>
                        </ul>
                    </nav>
                </div>
            </nav>
            <div class="clearfix"></div>
        </div>


        <div class="search-bar">
            <input type="text" value="搜索" onfocus="this.value='';"
                   onblur="if (this.value == '') {this.value = '搜索';}"/>
            <input type="submit" value=""/>
        </div>
        <div class="clearfinx"></div>
    </div>
    <div class="container index-content">
        <div class="content-grids">
            <div class="col-md-8 content-main">
                <div class="content-grid-info">

                    <img src="/images/post1.jpg" alt="" class= "img-rounded"/>

                    <div class="post-info">
                        <h4><a href="blog.html">多事之秋</a> 2016-03-11 / <span>27 评论</span></h4>
                        <p>一场游戏一场梦。也许再也没有重新开始的机会……</p>
                        <a href="blog.html"><span></span>阅读</a>
                    </div>
                </div>
                <div class="content-grid-info">


                    <div class="post-info">
                        <h4><a href="blog.html">多事之秋</a> 2016-03-11 / <span>27 评论</span></h4>
                        <p>一场游戏一场梦。也许再也没有重新开始的机会……</p>
                        <a href="blog.html"><span></span>阅读</a>
                    </div>
                </div>
                <div class="content-grid-info">

                    <img src="/images/post1.jpg" alt="" class= "img-rounded"/>

                    <div class="post-info">
                        <h4><a href="blog.html">多事之秋</a> 2016-03-11 / <span>27 评论</span></h4>
                        <p>一场游戏一场梦。也许再也没有重新开始的机会……</p>
                        <a href="blog.html"><span></span>阅读</a>
                    </div>
                </div>

            </div>
            <div class="col-md-4 side-content">
                <div class="recent">
                    <h3>最近访问</h3>
                    <ul>
                        <li><a href="#">一个人行走</a></li>
                        <li><a href="#">单身是贵族</a></li>
                        <li><a href="">多事之秋</a></li>
                        <li><a href="">我叫胖熊</a></li>
                    </ul>
                </div>
                <div class="recent-comment">
                    <h3>最近留言</h3>
                    <ul>
                        <li><a href="#">一个人行走</a></li>
                        <li><a href="#">单身是贵族</a></li>
                        <li><a href="#">多事之秋</a></li>
                        <li><a href="#">我叫胖熊</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<div class="footer">
    <a href="#" id="toTop" style="display: block;"><span id="toTopHover"></span><span id="toTopHover"></span> <span
            id="toTopHover" style="opacity: 1;"> </span></a>
</div>
</body>
</html>
