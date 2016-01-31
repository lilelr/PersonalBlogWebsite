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


  <!--------------Content--------------->
  <section id="content">
    <div class="wrap-content">
      <div class="row block">
        <div id="main-content" class="col-2-3">
          <div class="wrap-col">
            <article>
              <div class="heading">
                <h2><a href="#">Sed accumsan libero quis mi commodo et suscipit</a></h2>
                  <div class="info">
                      <p>By Admin on December 01, 2012 - <a href="#">01 Commnets</a></p>
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
        <div id="sidebar" class="col-1-3">
          <div class="wrap-col">
            <%--<div class="box">--%>
              <%--<div class="heading"><h2>About us</h2></div>--%>
              <%--<div class="content">--%>
                <%--<a href="#" target="_blank"><img src="/blogmodel/images/zerotheme.jpg" style="border: 0px;"/></a>--%>
                <%--<p>Free Html5 Templates created by <a href="#">Zerotheme</a>. You can use and modify the template for both personal and commercial use. You must keep all copyright information and credit links in the template and associated files.</p>--%>
              <%--</div>--%>
            <%--</div>--%>
            <div class="box">
              <div class="heading"><h2>Categories</h2></div>
              <div class="content">
                <ul>
                  <li><a href="#">Free Html5 Templates</a></li>
                  <li><a href="#">Free Responsive Themes</a></li>
                  <li><a href="#">Free Html5 and Css3 Themes</a></li>
                  <li><a href="#">Free Responsive Html5 and Css3 Themes</a></li>
                  <li><a href="#">Free Basic Responsive Html5 Css3 Layouts</a></li>
                  <li><a href="#">Premium Responsive Html5 Css3 Templates</a></li>
                </ul>
              </div>
            </div>
            <div class="box">
              <div class="heading"><h2>Popular Post</h2></div>
              <div class="content">
                <div class="post">
                  <img src="/blogmodel/images/img4.jpg" width="50px"/>
                  <h4><a href="#">Lorem ipsum dolor sit</a></h4>
                  <p>November 11 ,2012</p>
                </div>
                <div class="post">
                  <img src="/blogmodel/images/img5.jpg" width="50px"/>
                  <h4><a href="#">Lorem ipsum dolor sit</a></h4>
                  <p>November 11 ,2012</p>
                </div>
                <div class="post">
                  <img src="/blogmodel/images/img1.jpg" width="50px"/>
                  <h4><a href="#">Lorem ipsum dolor sit</a></h4>
                  <p>November 11 ,2012</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--------------Footer--------------->


</div>
</body></html>