
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
.style1 {color: #FFFFFF}
.style2 {
	color: #000000;
	font-weight: bold;
}
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
            <li><a href="a1.jsp">Home</a></li>
          <li><a href="a2.jsp">Product</a></li>
          <li><a href="a4.jsp">Customer</a></li>
          <li><a href="a5.jsp">Transaction</a></li>
          <li><a href="a6.jsp"  class="active">Feedback </a></li>
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
      <div class="clr"></div>
    </div>
    <div class="body_resize">
      <div class="Welcome" style="width:920px;">
        <h2>&nbsp;</h2>
        <p>&nbsp;</p>
        <FORM action="" method="post">
     <table width="888" border="1" align="center" bordercolor="#0099CC">
        <tr>
          <td width="882" height="35" align="center"><span class="style2">PURCHASE DETAILS</span></td>
        </tr>
        <tr>
          <td align="center"><table width="886" height="36" border="1" bordercolor="#006699">
  <tr>
			    <td width="112" height="30" align="center"><div align="center" class="style1" ><strong>Order Id</strong></div></td>
              <td width="155" height="30" align="center"><div align="center" class="style1" ><strong>Product Name</strong></div></td>
              <td width="103"><div align="center" class="style1" ><strong>Price</strong></div></td>
          <td width="89"><div align="center" class="style1" ><strong>Discount</strong></div></td>
		    <td width="83" align="center"><div align="center" class="style1" ><strong>Amount</strong></div></td>
              <td width="97"><div align="center" class="style1" ><strong>No of Product</strong></div></td>
			     <td width="114"><div align="center" class="style1" ><strong>Total Amount</strong></div></td>
          <td width="99"><div align="center" class="style1" ><strong>Date</strong></div></td>
            </tr>

		
		   <% int index=0;
	try
	{
	   
            String a11=null;
             	   HttpSession so = request.getSession(true);
 System.out.println(a11);

		int flag=0;
		String url="jdbc:mysql://localhost:3306/online2";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                Statement st1=con.createStatement();
                Statement st2=con.createStatement();
                Statement st3=con.createStatement();
                
		ResultSet rs = st.executeQuery("select * from purchase ");

    while(rs.next())
		{	
       		
	 %>
            <tr><td width="112" height="36" align="center"><div align="center"><%=rs.getString(1)%></div></td>
			    <td width="155" height="36" align="center"><div align="center"><%=rs.getString(5)%></div></td>
              <td width="103"><div align="center"><%=rs.getString(6)%></div></td>
          <td width="89"><div align="center"><%=rs.getString(7)%></div></td>
              <td width="83" align="center"><div align="center"><%=rs.getString(8)%></div></td>
              <td width="97"><div align="center"><%=rs.getString(9)%></div></td>
          <td width="114"><div align="center"><%=rs.getString(10)%></div></td>
		   <td width="99"><div align="center"><%=rs.getString(11)%></div></td>
            </tr><%
 
                                     } 								
													
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
          </table></td>
        </tr>
      </table></FORM>

        
    
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  </div>
  </body>
</html>