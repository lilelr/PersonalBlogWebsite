<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>李乐乐的个人网站</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords"
          content="Mungo Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--fonts-->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Berkshire+Swash' rel='stylesheet' type='text/css'>
    <!--/fonts-->
    <!-- js -->
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.js"></script>
    <!-- //js -->
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="/js/move-top.js"></script>
    <script type="text/javascript" src="/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
</head>
<body>
<%--<s:debug/>--%>
<div class="header">
    <div class="container">
        <div class="logo">
            <a href="#">
                <img src="/images/yuntianhe.jpg" alt="" class="img-circle"/>
            </a>
        </div>
        <div class="navigation">
            <nav class="navbar navbar-default">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"> </span>
                        <span class="icon-bar"> </span>
                        <span class="icon-bar"> </span>
                    </button>
                </div>
                <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                    <nav class="cl-effect-7" id="cl-effect-7">
                        <ul class="nav navbar-nav">
                            <li class="active"><a class="scroll" href="#home">主页 <span class="sr-only">(current)</span></a>
                            </li>
                            <li><a class="scroll" href="#about">关于我</a></li>
                            <li><a class="scroll" href="#skills">技能</a></li>
                            <li><a class="scroll" href="#portfolio">相册</a></li>
                            <li><a class="scroll" href="#contact">联系我</a></li>
                        </ul>
                    </nav>
                    <div class="clearfix"></div>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
        <div class="search-bar">
            <input type="text" value="搜索" onfocus="this.value='';"
                   onblur="if (this.value == '') {this.value = '搜索';}"/>
            <input type="submit" value=""/>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="banner">
    <div class="container">
        <div class="banner-info">
            <div class="banner-text">
                <h1>${person.person_real_name}</h1>

                <h2>${person.person_position}</h2>
                <a href="/resumedl" class="hvr-bounce-to-right">下载我的简历</a>
            </div>
        </div>
    </div>
</div>
<!--about-->
<div id="about" class="about">
    <div class="container">
        <!-- head-section -->
        <div class="head-section text-center">
            <h2>关于我</h2>
            <span> </span>
        </div>
        <!-- head-section -->
        <!-- about-grids -->
        <div class="about-grids">
            <div class="col-md-6 about-left-grid">
                <h3></h3>
                <span>兴趣爱好</span>

                <%--<p>喜欢编程。我思故我在。<br>--%>
                    <%--爱打篮球，爱跑步，爱读书。<br>--%>
                    <%--喜欢骑行，大二暑假期间曾和小伙伴们花7天时间从秦皇岛骑到大连。<br>--%>
                    <%--喜欢弹吉他，虽然弹得不怎么样，却依然自我陶醉。</p>--%>
                <p><s:iterator value="interests" id="i">
                    <s:property value="interest_content"/><br>
                </s:iterator>
                </p>

                <p class="p-text">${person.person_enlighten}</p>
            </div>
            <div class="col-md-6 about-right-grid">
                <a class="popup-with-zoom-anim" href="#small-dialog"><img src="/images/mguitar.jpg"
                                                                          title="Designer_girl"></a>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- about-grids -->
    </div>
    <div class="clearfix"></div>
</div>
<!---pop-up-box---->
<link href="/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
<script src="/js/jquery.magnific-popup.js" type="text/javascript"></script>
<!---//pop-up-box---->
<%--<div id="small-dialog" class="mfp-hide">--%>
    <%--<iframe src="#"></iframe>--%>
<%--</div>--%>
<%--<script>--%>
    <%--$(document).ready(function () {--%>
        <%--$('.popup-with-zoom-anim').magnificPopup({--%>
            <%--type: 'inline',--%>
            <%--fixedContentPos: false,--%>
            <%--fixedBgPos: true,--%>
            <%--overflowY: 'auto',--%>
            <%--closeBtnInside: true,--%>
            <%--preloader: false,--%>
            <%--midClick: true,--%>
            <%--removalDelay: 300,--%>
            <%--mainClass: 'my-mfp-zoom-in'--%>
        <%--});--%>

    <%--});--%>
<%--</script>--%>
<!----//fea-video---->
<!--/about-->
<div class="details">
    <div class="container">
        <div class="bottom-grid">
            <div class="col-md-6 bottom-grid-left">
                <h3>教育背景</h3>
                <s:iterator value="educations">
                <div class="grids">
                    <div class="year text-center">
                        <h5><s:date name= "edu_time_begin" nice="false" format="yyyy"/></h5>
                    </div>
                    <div class="qualification">
                        <h4>${edu_major}专业热火朝天地${edu_content}</h4>

                        <p>${edu_school}</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                </s:iterator>


            </div>
            <div class="col-md-6 bottom-grid-right">
                <h3>荣誉</h3>

                <s:iterator value="honors">
                <div class="grids">
                    <div class="year year2 text-center">
                        <h5><s:date name= "honor_date" nice="false" format="yyyy"/></h5>
                    </div>
                    <div class="qualification">
                        <h4>${honor_content}</h4>
                        <!--<p>我爱冯如</p>-->
                    </div>
                    <div class="clearfix"></div>
                </div>
                </s:iterator>
                <%--<div class="grids">--%>
                    <%--<div class="year year2 text-center">--%>
                        <%--<h5>2014</h5>--%>
                    <%--</div>--%>
                    <%--<div class="qualification">--%>
                        <%--<h4>2014全国高校移动互联网应用开发创新大赛三等奖</h4>--%>
                        <%--<!--<p>i2c Inc</p>-->--%>
                    <%--</div>--%>
                    <%--<div class="clearfix"></div>--%>
                <%--</div>--%>


            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--skills-->
<div class="skills" id="skills">
    <div class="container">
        <div class="skills-info">
            <h3>技能</h3>
            <span> </span>

            <div class="study2">
                <h4>Java</h4>

                <div class="progress">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20"
                         aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                        <span class="sr-only">40% Complete (success)</span>
                    </div>
                </div>
                <h4>python</h4>

                <div class="progress">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="10" aria-valuemin="0"
                         aria-valuemax="100" style="width: 10%">
                        <span class="sr-only">20% Complete</span>
                    </div>
                </div>
                <h4>Linux</h4>

                <div class="progress">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="20"
                         aria-valuemin="0" aria-valuemax="100" style="width: 10%">
                        <span class="sr-only">20% Complete (warning)</span>
                    </div>
                </div>
                <h4>Hadoop</h4>
                <h4>
                    <div class="progress">
                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="5"
                             aria-valuemin="0" aria-valuemax="100" style="width: 10%">
                            <span class="sr-only">5% Complete (danger)</span>
                        </div>
                    </div>
                </h4>
            </div>
        </div>
    </div>
</div>
<!--/skills-->
<!--portfolio-->
<!--light-box-js -->
<script src="/js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="/css/chocolat.css" type="text/css" media="screen" charset="utf-8"/>
<!--light-box-files -->
<script type="text/javascript" charset="utf-8">
    $(function () {
        $('.moments-bottom a').Chocolat();
    });
</script>
<!--//end-gallery js-->
<div id="portfolio" class="portfolio">
    <div class="container">
        <h3>相册</h3>
        <span> </span>

        <div class="gallery-info">
            <div class="col-md-4 galry-grids moments-bottom">
                <a class="b-link-stripe b-animate-go" href="/images/c.jpg">
                    <img src="/images/c.jpg" class="img-responsive" alt="">

                    <div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="/images/e.png" alt=""/>
							</span>
                    </div>
                </a>
            </div>
            <div class="col-md-4 galry-grids moments-bottom">
                <a class="b-link-stripe b-animate-go" href="/images/c++.jpg">
                    <img src="/images/c++.jpg" class="img-responsive" alt="">

                    <div class="b-wrapper">
							<span class="b-animate b-from-left b-delay03 ">
								<img class="img-responsive" src="/images/e.png" alt=""/>
							</span>
                    </div>
                </a>
            </div>
            <div class="col-md-4 galry-grids moments-bottom">
                <a class="b-link-stripe b-animate-go" href="/images/java_tech.jpg">
                    <img src="/images/java_tech.jpg" class="img-responsive" alt="">

                    <div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="/images/e.png" alt=""/>
							</span>
                    </div>
                </a>
            </div>
            <div class="col-md-4 galry-grids moments-bottom">
                <a class="b-link-stripe b-animate-go" href="/images/php.jpg">
                    <img src="/images/php.jpg" class="img-responsive" alt="">

                    <div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="/images/e.png" alt=""/>
							</span>
                    </div>
                </a>
            </div>
            <div class="col-md-4 galry-grids moments-bottom">
                <a class="b-link-stripe b-animate-go" href="/images/bear.jpg">
                    <img src="/images/bear.jpg" class="img-responsive" alt="">

                    <div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="/images/e.png" alt=""/>
							</span>
                    </div>
                </a>
            </div>
            <div class="col-md-4 galry-grids moments-bottom">
                <a class="b-link-stripe b-animate-go" href="/images/lua.jpg">
                    <img src="/images/lua.jpg" class="img-responsive" alt="">

                    <div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="/images/e.png" alt=""/>
							</span>
                    </div>
                </a>
            </div>
            <div class="col-md-4 galry-grids moments-bottom">
                <a class="b-link-stripe b-animate-go" href="/images/js.png">
                    <img src="/images/js.png" class="img-responsive" alt="">

                    <div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="/images/e.png" alt=""/>
							</span>
                    </div>
                </a>
            </div>
            <div class="col-md-4 galry-grids moments-bottom">
                <a class="b-link-stripe b-animate-go" href="/images/html.jpg">
                    <img src="/images/html.jpg" class="img-responsive" alt="">

                    <div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="/images/e.png" alt=""/>
							</span>
                    </div>
                </a>
            </div>
            <div class="col-md-4 galry-grids moments-bottom">
                <a class="b-link-stripe b-animate-go" href="/images/ruby.png">
                    <img src="/images/ruby.png" class="img-responsive" alt="">

                    <div class="b-wrapper">
							<span class="b-animate b-from-left    b-delay03 ">
								<img class="img-responsive" src="/images/e.png" alt=""/>
							</span>
                    </div>
                </a>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--/portfolio-->
<!--contact-->
<div class="contact" id="contact">
    <div class="container">
        <div class="contact-info text-center">
            <h3>联系我</h3>
            <span> </span>
        </div>
        <div class="contact-grids">
            <div class="col-md-5 contact-left">
                <h3>联系方式</h3>

                <div class="stripb"></div>
                <ul>
                    <li>${person.person_city}</li>
                    <li>${person.person_address}</li>
                    <li>QQ:${person.person_qq}</li>
                    <li>手机号码:${person.person_phone}</li>
                    <li>微信:${person.person_wechat}</li>
                    <li><a href="mailto:lilelr@163.com">邮箱:${person.person_Email}</a></li>
                    <!--<li><a href="#">www.Example.com</a></li>-->
                </ul>
            </div>
            <div class="col-md-7 contact-right">
                <h3>给我留言</h3>

                <div class="stripb"></div>
                <form action="sendmsg.action" method="post">
                    <input type="text" name="visitorname" value="大侠请留名" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Name';}" required="">
                    <input type="text" name="visitoremail" value="E-mail" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'E-mail';}" required="">
                    <textarea type="text" name="visitormsg" onfocus="this.value = '';"
                              onblur="if (this.value == '') {this.value = '留言...';}" required="">留言...</textarea>
                    <input type="submit" value="完成">
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--/contact-->
<div class="footer">
    <div class="copy">
        <div class="container">
            <p>Copyright &copy; 2015.Company name All rights reserved.&#x7F51;&#x9875;&#x6A21;&#x677F;</p>
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
    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"> </span></a>
</div>
</body>
</html>