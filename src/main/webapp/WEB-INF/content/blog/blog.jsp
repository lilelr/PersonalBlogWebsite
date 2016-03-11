<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <title>李乐乐的个人博客</title>
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
    <div class="row single">
        <div class="col-md-9">
            <section>
                <div class="article-header">
                    <h3>乱世出英雄</h3>
                    <h4>
                        <small>2016-3-06&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</small>
                    </h4>
                </div>
            </section>
            <div class="row">
                <div class="article-content">
                    ${blog.blog_content}
                </div>
            </div>
            <div class="row comment-form">
                <h3>评论</h3>

                <form action="">
                    <input type="text" placeholder="大侠请留言" required/>
                    <textarea placeholder="..."></textarea>
                    <input type="submit" value="发送"/>
                </form>
            </div>
        </div>
        <div class="col-md-3 side-content">
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