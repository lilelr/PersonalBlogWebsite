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
            <a href="/showperson">
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
                            <li class="active"><a class="scroll" href="/showperson">主页</a></li>
                            <li><a href="/showblogindex" class="scroll">博客目录</a></li>
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
                    <h3>${blog.blog_title}</h3>
                    <h4>
                        <small>${blog.blog_time}&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</small>
                    </h4>
                </div>
            </section>
            <div class="row">
                <div class="article-content">
                    ${blog.blog_content}
                </div>
            </div>
            <div class="row comment-form">
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <h3>
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseOne" onclick="showcomments();">
                                评论
                            </a>
                        </h3>

                        <div id="collapseOne" class="panel-collapse collapse ">
                            <div id="oldcommemts" class="panel-body">
                                <%--<div class="row eachcomment">--%>
                                <%--<div class="usercomment"><p>写得很让人感动！</p></div>--%>
                                <%--<div class="commentauthor">-- 大胖熊， 2016-3-09</div>--%>
                                <%--</div>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <h3>留言</h3>


                <form id="commentcontent">
                    <div class="container">
                        <div class="row">
                            <div class="input-group col-md-9">
                                <div class="col-md-4">
                                    <input type="text" name="visitorname" class="form-control" placeholder="大侠请留名"
                                           required/>
                                </div>
                                <div class="col-md-5 authoremail">
                                    <input type="email" name="visitoremail" class="form-control" placeholder="邮箱"
                                           required/>
                                </div>
                            </div>
                        </div>
                    </div>

                    <textarea name="visitormsg" placeholder="..."></textarea>

                    <div class="col-md-3">
                        <button id="msgbtn" type="button" onclick="sendmsg()">发送</button>
                    </div>
                    <div class="col-md-3">
                        <div id="msgsuccess" class="alert alert-success " role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                    aria-hidden="true">&times;</span></button>
                            发送成功！
                        </div>
                    </div>

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
    window["commentload"] = false;
    $(document).ready(function () {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */
        $("#msgsuccess").hide();
        $().UItoTop({easingType: 'easeOutQuart'});

    });

    function sendmsg() {
        $("#msgsuccess").hide();

        var postdata = $("#commentcontent").serializeArray();
        postdata.push({"name": "blog_id", "value":${blog.blog_id}});
        console.log(postdata);
        $.post("sendmsg.action", postdata,
                function (data, statusText) {
                    console.log(data);
//                    for(var propName in data){
////                        console.log(propName+":"+data[propName]);
//
////                        window.alert(propName+":"+data[propName]);
//                    }
                    $("#msgsuccess").show(1000,function(){
                        $(this).hide(1000);
                    });
                },
                "json");
        window["commentload"] = false;

    }

    function showcomments() {
        if (window["commentload"] == false) {
            $("#oldcommemts").empty();
            $.post("showMsgByBlogId", [{"name": "blog_id", "value":${blog.blog_id}}],
                    function (data, statusText) {
//                    window.alert(statusText);
//                    window.alert(data);
                        if (data.length >= 1) {
                            var msgs = data[0];
                            for (var index in msgs) {
                                $("#oldcommemts").append('<div class="row eachcomment"><div class="usercomment"><p>' + msgs[index]["msg_content"] +
                                        '</p></div><div class="commentauthor">-- ' +
                                        msgs[index]["visitor"]["visitor_name"] + '， ' + msgs[index]["msg_datetime"] + '</div></div></div>');

//                            window.alert( " :" + msgs[index]["msg_content"] );
                            }
                        }

                        console.log(data);
                    },
                    "json");
            window["commentload"] = true;
        }
    }
</script>
<div class="footer">
    <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</div>
</body>
</html>