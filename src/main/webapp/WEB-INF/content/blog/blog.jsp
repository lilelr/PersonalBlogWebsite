<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <title>李乐乐的个人博客</title>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.js"></script>
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="/css/blog.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="row page-header">
            <div class="col-md-9">
                <ul class="nav nav-pills">
                    <li role="presentation" class="active" id="main-page"><a href="#">主页</a></li>
                    <li role="presentation"><a href="#">博客列表</a></li>
                    <li role="presentation"><a href="#">留言</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                搜索
            </div>
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
                        <input type="text"  placeholder="大侠请留言" required/>
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
</nav>
</body>
</html>