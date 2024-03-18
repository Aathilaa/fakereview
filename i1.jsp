<%-- 
    Document   : index
    Created on : Oct 31, 2013, 9:50:18 AM
    Author     : ADMIN
--%>
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
          <li><a href="index.jsp" class="active">Home</a></li>
          <li><a href="i1.jsp">Registration</a></li>
          <li><a href="i2.jsp">Login</a></li>
          <li><a href="i3.jsp">Services</a></li>
          <li><a href="i4.jsp">Aboutus</a></li>
          <li><a href="i5.jsp">Contactus</a></li>
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
      <div class="clr"></div>
    </div>
    <div class="body_resize">
      <div class="Welcome" style="width:920px;">
        <h2>Welcome to our website</h2>
        <p>&nbsp;</p>
        <table width="654" border="0" align="center">

  <tr>
    <td> <form action="register" method="post">
        	<%
   String ok=(String)request.getAttribute("ok");
   String msg="";
 
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");

     }
    %>
  	  <table width="628" border="1" align="center" bordercolor="#006699">
  <tr>
    <td width="622" height="34" align="center"><span class="style5 style4">CREATE ACCOUNT</span></td>
  </tr>
  <tr>
    <td height="257"><table width="525" border="0" align="center">
      <tr>
        <td width="189" height="29">User Name </td>
        <td width="6">&nbsp;</td>
        <td  align="left"><label>
          <input type="text" id="a1" name="a1"  style="width:180px" maxlength="25"class="displayValue" onKeyPress="return nospecialcharacters();" onChange="return val_zero('a1','err_a1');" 
                     onBlur="return txt_empty('a1','err_a1','Should Not Be Blank');"  />
        </label></td>
      </tr>
      <tr>
        <td height="32">Password</td>
        <td>&nbsp;</td>
        <td align="left"><label>
          <input type="password" id="a2" name="a2"  style="width:180px" maxlength="20" class="displayValue" 
onchange="return val_zero('a2','err_a2);" onblur="return val_password('a2','err_a2','Should Not Be Blank');" />
        </label></td>
      </tr>
      <tr>
        <td height="31">Retype Password </td>
        <td>&nbsp;</td>
        <td align="left"><label>
          <input type="password" id="a3" name="a3" style="width:180px" maxlength="20" class="displayValue" 
onChange="return val_zero('a3','err_a3');"
											onblur="return pwd_compare('a2','a3','err_a3);" />
        </label></td>
      </tr>
    
      <tr>
        <td height="32">Full Name</td>
        <td>&nbsp;</td>
        <td align="left"><label>
          <input type="text" id="a4" name="a4" style="width:180px" class="displayValue" onkeypress="return name_val(event);return nospecialcharacters();" onchange="return val_zero('a4','err_a4');" onblur="return txt_empty('a4','err_a4','Should Not Be Blank');"/>
        </label></td>
      </tr>
      <tr>
        <td height="43">Address</td>
        <td>&nbsp;</td>
        <td align="left"><label>
          <textarea id="a5" name="a5" style="width:180px" class="displayValue" onChange="return val_zero('a5','err_a5');" 
 onBlur="return txt_empty('a5','err_a5','Should Not Be Blank');"></textarea>
        </label></td>
      </tr>
      <tr>
        <td height="26">Contact No </td>
        <td>&nbsp;</td>
        <td align="left"><label>
          <input type="text" name="a6" id="a6" class="displayValue" maxlength="15"  style="width:180px" onchange="return val_zero('a6','err_a6');" onkeypress="return numbersonly();" onblur="return txt_empty('a6','err_a6','Age Should Not Be Blank');" />
              &nbsp;&nbsp;&nbsp;<span id="err_a6"></span>
        </label></td>
      </tr>
      <tr>
        <td height="32">Email-Id</td>
        <td>&nbsp;</td>
        <td align="left"><label>
          <input type="text" id="a7" name="a7" style="width:180px" class="displayValue" onChange="return val_zero('a7','err_a7');" onBlur="return txt_empty('a7','err_a7','Should Not Be Blank');"/>
        </label></td>
      </tr>
        <tr>
        <td height="36">Gender</td>
        <td>&nbsp;</td>
        <td align="left"><label>
        <select name="a8">
          <option value="Select"> Select Gender</option>
          <option value="Male">Male</option>
          <option value="Female">Female</option>
        </select>
        </label></td>
      </tr>
      <tr>
        <td height="32">Age</td>
        <td>&nbsp;</td>
        <td align="left"><label>
        <select name="a9">
          <option value="Select"> Select</option>
          <option value="20-30">20-30</option>
          <option value="30-40">30-40</option>
           <option value="40-50">40-50</option>
           <option value="50-60">50-60</option>
            <option value="60-70">60-70</option>
        </select>
        </label></td>
      </tr>
	 <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><label></label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td align="left"><label>
          <input name="s1" type="submit" class="style3" style="width:80px; height:30px; background:#006699" value="Sign in">&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="s2" value="Cancel" class="style3" style="width:80px; height:30px; background:#006699">
        </label></td>
      </tr>
   <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><%=msg%></td>
      </tr>
    </table></td>
  </tr>
</table>
  	  
</form></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

        
    
        <p>&nbsp;</p>
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