
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>home</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/easySlider1.5.js"></script>
<script type="text/javascript" charset="utf-8">
// <![CDATA[
$(document).ready(function(){	
	$("#slider").easySlider({
		controlsBefore:	'<p id="controls">',
		controlsAfter:	'</p>',
		auto: true, 
		continuous: true
	});	
});
// ]]>
</script>
<style type="text/css">
#slider { margin:0; padding:0; list-style:none; }
#slider ul,
#slider li { margin:0; padding:0; list-style:none; }
/* 
    define width and height of list item (slide)
    entire slider area will adjust according to the parameters provided here
*/
#slider li { width:966px; height:348px; overflow:hidden; }
p#controls { margin:0; position:relative; }
#prevBtn,
#nextBtn { display:block; margin:0; overflow:hidden; width:13px; height:28px; position:absolute; left: -13px; top:-210px; }
#nextBtn { left:966px; }
#prevBtn a { display:block; width:13px; height:28px; background:url(images/l_arrow.gif) no-repeat 0 0; }
#nextBtn a { display:block; width:13px; height:28px; background:url(images/r_arrow.gif) no-repeat 0 0; }
</style>	<script type="text/javascript" src="js/datetimepicker_css.js"></script>
<script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="block_header">
      <div class="logo"><b style="color:#FC0">SMART.</b><b style="color:#FFF">WEBDESIGN</b></div>
      <div class="Twitter">Follow us on Twitter</div>
      <div class="clr"></div>
      <div class="menu">
        <ul>
          <li><a href="a1.jsp" class="active">Home</a></li>
          <li><a href="a2.jsp">Product</a></li>
          <li><a href="a3.jsp">View Product</a></li>
          <li><a href="a4.jsp">High Utility</a></li>
          <li><a href="a5.jsp">Threshold Value</a></li>
          <li><a href="a6.jsp">Utility</a></li>
           <li><a href="i2.jsp">Logout</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="slider">
    <div class="slice1">
      <div class="slice2" id="slider">
        <ul>
          <li>
            <div>
              <p class="img"><img src="images/simple_text_img_1.jpg" alt="screen 1" width="539" height="292" /></p>
              <h2>Our company <br />
                can help your <br />
                busness grow.</h2>
              <p>Add another layer of protection to your new Satellite C/L/S series laptop at no extra cost. Choose between ‘One year of accidental damage protection plan’ and ‘One year subscription of Norton anti-virus’. <a href="#"></a></p>
				<p><a href="#">more information...</a></p>
            </div>
          </li>
          <li>
            <div>
              <p class="img"><img src="images/simple_text_img_2.jpg" alt="screen 2" width="539" height="292" /></p>
              <h2>Our company <br />
                can help your <br />
                busness grow.</h2>
              <p>The best of Sony for the best of you
Xperia™ smartphones, tablets and accessories are packed full of intelligent Sony technology to enhance your world and get the most out of every moment that life brings. <a href="#"></a></p>
				<p><a href="#">more information...</a></p>
            </div>
          </li>
          <li>
            <div>
              <p class="img"><img src="images/simple_text_img_3.jpg" alt="screen 3" width="539" height="292" /></p>
              <h2>Our company <br />
                can help your <br />
                busness grow.</h2>
              <p>Add another layer of protection to your new Satellite C/L/S series laptop at no extra cost. Choose between ‘One year of accidental damage protection plan’ and ‘One year subscription of Norton anti-virus’. <a href="#"></a></p>
				<p><a href="#">more information...</a></p>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="clr"></div>
  <div class="body">
    <div class="topi">
      <div class="blogi">
        <h2 class="what">What We Do</h2>
        <p><strong>Lorem Ipsum passages,</strong> and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />
          Why do we use it?</p>
        <p><a href="#">more info</a></p>
      </div>
      <div class="blogi">
        <h2 class="Our">Our Support</h2>
        <p><strong>Lorem Ipsum passages,</strong> and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />
          Why do we use it?</p>
        <p><a href="#">more info</a></p>
      </div>
      <div class="blogi">
        <h2 class="work">Our Work</h2>
        <p><strong>Lorem Ipsum passages,</strong> and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br />
          Why do we use it?</p>
        <p><a href="#">more info</a></p>
      </div>
      <div class="clr"></div>
    </div>
    <div class="body_resize">
      <div class="Welcome" style="width:920px;">
        <h2>Welcome to our website</h2>
        <p><strong>Fusce vehicula dignissim ligula. </strong></p>
        <div class="bg"></div><FORM action="" method="post">
     <table width="654" border="0" align="center">
  <tr>
    <td width="648" height="56">HAI ADMIN ,</td>
  </tr>
  <tr>
    <td></td>
  </tr>
  <tr>
    <td height="404">&nbsp;</td>
  </tr>
</table></FORM>

        
    
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="footer">
    <div class="resize">
      <div>
        <p class="footer_logo"><i style="color:#FC0">Smart </i><i style="color:#FFF">WebDesign</i></p>
        <p>Copyright © Your Sitename || <a href="http://cds.com.co.in/">CDS</a> || All Rights Reserved<br />
          <a href="index.html">Home</a> | <a href="contact.html">Contact</a> | <a href="blog.html">RSS</a></p>
      </div>
    </div>
    <p class="clr"></p>
  </div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>