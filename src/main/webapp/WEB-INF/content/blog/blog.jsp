<%--
  Created by IntelliJ IDEA.
  User: yuxiao
  Date: 1/31/16
  Time: 10:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

  <!-- Basic Page Needs
================================================== -->
  <meta charset="utf-8">
  <title>zSoodany</title>
  <meta name="description" content="Free Responsive Html5 Css3 Templates Designed by Kimmy">
  <meta name="author" content="zSoodany">

  <!-- Mobile Specific Metas
================================================== -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <!-- CSS
================================================== -->
  <link rel="stylesheet" href="/blogmodel/css/zerogrid.css">
  <link rel="stylesheet" href="/blogmodel/css/style.css">
  <link rel="stylesheet" href="/blogmodel/css/responsive.css">

  <!-- //for-mobile-apps -->
  <link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
  <link href="/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/css/blogtree.css" rel="stylesheet" type="text/css" media="all"/>

    <!--fonts-->
  <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
        rel='stylesheet' type='text/css'>
  <link href='http://fonts.useso.com/css?family=Berkshire+Swash' rel='stylesheet' type='text/css'>
  <!--/fonts-->
  <!-- js -->
  <script src="/js/jquery.min.js"></script>
  <script src="/js/bootstrap.js"></script>
  <!-- //js -->

  <!--[if lt IE 8]>
  <div style=' clear: both; text-align:center; position: relative;'>
    <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
      <img src="http://storage.ie6countdown.com/assets/100//blogmodel/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
    </a>
  </div>
  <![endif]-->
  <!--[if lt IE 9]>
  <script src="/blogmodel/js/html5.js"></script>
  <script src="/blogmodel/js/css3-mediaqueries.js"></script>
  <![endif]-->

  <link href='/blogmodel/images/favicon.ico' rel='icon' type='image/x-icon'/>

</head>
<body>
<div class="wrap-body zerogrid">
  <!--------------Header--------------->
  <div class="header">
    <div class="container">
      <div class="logo">
        <%--<a href="#"><h1>${person.person_user_name}</h1></a>--%>
        <a href="#"><h1>银灯玉箫</h1></a>

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
                <li class="active"><a class="scroll" href="/showperson">主页 <span class="sr-only">(current)</span></a>
                </li>
                <li><a class="scroll" href="/showUpload">博客</a></li>
              </ul>
            </nav>
            <div class="clearfix"></div>
          </div>
          <!-- /.navbar-collapse -->
        </nav>
      </div>
      <div class="search-bar">
        <input type="text" value="搜索" onfocus="this.value = '';"
               onblur="if (this.value == '') {this.value = '搜索';}">
        <input type="submit" value="">
      </div>
      <div class="clearfix"></div>
    </div>
  </div>

  <!--------------Content--------------->
  <section id="content">
    <div class="wrap-content">
      <div class="row block">
        <div id="main-content" class="col-2-3">
          <div class="wrap-col">
            <article>
              <div class="heading">
                <h2>${blog.blog_title}</h2>
                  <div class="info">
                      <p>${blog.blog_time}</p>
                  </div>
              </div>
              <div class="content">
                <%--<img src="/blogmodel/images/img1.jpg" width="50%"/>--%>
                ${blog.blog_content}
              </div>

            </article>

            <section>
              <h3>Leave a Comment</h3>

              <form id="contact-form" method="post">
                <fieldset>
                  <label><input name="email" value="Email" onBlur="if(this.value=='') this.value='Email'" onFocus="if(this.value =='Email' ) this.value=''" /></label>
                  <label><input name="subject" value="Subject" onBlur="if(this.value=='') this.value='Subject'" onFocus="if(this.value =='Subject' ) this.value=''" /></label>
                  <textarea onBlur="if(this.value=='') this.value='Message'" onFocus="if(this.value =='Message' ) this.value=''">Message</textarea>
                  <div class="buttons">
                    <a href="#" onClick="document.getElementById('contact-form').reset()">Clear</a>
                    <a href="#" onClick="document.getElementById('contact-form').submit()">Send</a>
                  </div>
                </fieldset>
              </form>
            </section>
          </div>
        </div>
        <div id="sidebar" class="col-1-3 blogtree">
            <div id="accordian">
                <ul>
                    <li>
                        <h3><span class="icon-dashboard"></span>人文</h3>
                        <ul>
                            <li><a href="#"></a></li>
                            <li><a href="#">Search</a></li>
                            <li><a href="#">Graphs</a></li>
                            <li><a href="#">Settings</a></li>
                        </ul>
                    </li>
                    <!-- we will keep this LI open by default -->
                    <li class="active">
                        <h3><span class="icon-tasks"></span>Java</h3>
                        <ul>
                            <li><a href="#">Today's tasks</a></li>
                            <li><a href="#">Urgent</a></li>
                            <li><a href="#">Overdues</a></li>
                            <li><a href="#">Recurring</a></li>
                            <li><a href="#">Settings</a></li>
                        </ul>
                    </li>
                    <li>
                        <h3><span class="icon-calendar"></span>C++</h3>
                        <ul>
                            <li><a href="#">Current Month</a></li>
                            <li><a href="#">Current Week</a></li>
                            <li><a href="#">Previous Month</a></li>
                            <li><a href="#">Previous Week</a></li>
                            <li><a href="#">Next Month</a></li>
                            <li><a href="#">Next Week</a></li>
                            <li><a href="#">Team Calendar</a></li>
                            <li><a href="#">Private Calendar</a></li>
                            <li><a href="#">Settings</a></li>
                        </ul>
                    </li>
                    <li>
                        <h3><span class="icon-heart"></span>故事</h3>
                        <ul>
                            <li><a href="#">Global favs</a></li>
                            <li><a href="#">My favs</a></li>
                            <li><a href="#">Team favs</a></li>
                            <li><a href="#">Settings</a></li>
                        </ul>
                    </li>
                </ul>
            </div>


        </div>
      </div>
    </div>
  </section>
  <!--------------Footer--------------->


</div>
</body>
<script src="http://thecodeplayer.com/uploads/js/prefixfree-1.0.7.js" type="text/javascript" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#accordian h3").click(function(){
            //slide up all the link lists
            $("#accordian ul ul").slideUp();
            //slide down the link list below the h3 clicked - only if its closed
            if(!$(this).next().is(":visible"))
            {
                $(this).next().slideDown();
            }
        })
    })
</script>
<!-- prefix free to deal with vendor prefixes -->
</html>