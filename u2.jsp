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
                <li><a href="u1.jsp" class="active">Home</a></li>
    			<li><a href="u2.jsp">Profile</a></li>
				<li><a href="u3.jsp">Product</a></li>
				<li><a href="u5.jsp">Purchased</a></li>
				<li><a href="u6.jsp">Feedback</a></li>
				<li class="last"><a href="i2.jsp">Logout</a></li>
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
              <p>Add another layer of protection to your new Satellite C/L/S series laptop at no extra cost. Choose between ?One year of accidental damage protection plan? and ?One year subscription of Norton anti-virus?. <a href="#"></a></p>
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
Xperia? smartphones, tablets and accessories are packed full of intelligent Sony technology to enhance your world and get the most out of every moment that life brings. <a href="#"></a></p>
				<p><a href="#">more information...</a></p>
            </div>
          </li>
          <li>
            <div>
              <p class="img"><img src="images/simple_text_img_3.jpg" alt="screen 3" width="539" height="292" /></p>
              <h2>Our company <br />
                can help your <br />
                busness grow.</h2>
              <p>Add another layer of protection to your new Satellite C/L/S series laptop at no extra cost. Choose between ?One year of accidental damage protection plan? and ?One year subscription of Norton anti-virus?. <a href="#"></a></p>
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
        <form action="update" method="post">
        	<%
   String ok=(String)request.getAttribute("ok");
   String msg="";
 
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");

     }
    %><table width="596" border="0" align="center" >
  <tr>
    <td width="590" height="38" align="center"><h1>Profile Updation </h1></td>
  </tr>
  <tr>
    <td height="257"><table width="459" border="0" align="center"> <% int index=0;
	try
	{
	   
            String a11=null;
             	   HttpSession so = request.getSession(true);
 System.out.println(a11);
java.util.Date st11 = new java.util.Date();
                // Formatting date into  yyyy-MM-dd HH:mm:ss e.g 2008-10-10 11:21:10

                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                String f = formatter.format(st11);
                System.out.println("Formatted date is ==>" + f);
		int flag=0;
		String url="jdbc:mysql://localhost:3306/online2";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                Statement st1=con.createStatement();
                Statement st2=con.createStatement();
                Statement st3=con.createStatement();
                
		ResultSet rs = st.executeQuery("Select * from register where username='"+so.getAttribute("un")+"'");

    if(rs.next())
		{	
       		
	 %>
    
      <tr>
        <td width="189" height="29"><strong>Full Name</strong></td>
        <td width="13">&nbsp;</td>
        <td width="243"><label>
          <input type="text" name="a1" value="<%=rs.getString(3)%>">
        </label></td>
      </tr>
      <tr>
        <td height="30"><strong>Address</strong></td>
        <td>&nbsp;</td>
        <td><label>
          <input type="text" name="a2" value="<%=rs.getString(4)%>">
        </label></td>
      </tr>
      <tr>
        <td height="30"><strong>Contact No </strong></td>
        <td>&nbsp;</td>
        <td><label>
          <input type="text" name="a3" value="<%=rs.getString(5)%>">
        </label></td>
      </tr>
      <tr>
        <td height="32"><strong>Email-Id</strong></td>
        <td>&nbsp;</td>
        <td><label>
          <input type="text" name="a4" value="<%=rs.getString(6)%>">
        </label></td>
      </tr>
        <tr>
        <td height="38"><strong>Gender</strong></td>
        <td>&nbsp;</td>
        <td><label>
                <input type="text" name="a5" value="<%=rs.getString(7)%>" readonly="true">
     
        </label></td>
      </tr>
      <tr>
        <td height="30"><strong>Age</strong></td>
        <td>&nbsp;</td>
        <td><label>
          <select name="a6" style="width:70%">
            <option value="<%=rs.getString(8)%>"><%=rs.getString(8)%></option>
            <option value="Select"> Select</option>
            <option value="20-30">20-30</option>
            <option value="30-40">30-40</option>
            <option value="40-50">40-50</option>
          </select>
        </label></td>
      </tr>   <tr>
        <td height="32"><strong>New Password </strong></td>
        <td>&nbsp;</td>
        <td><label>
          <input type="password" name="a7" >
        </label></td>
      </tr>
        <tr>
        <td height="38"><strong>Retype Password </strong></td>
        <td>&nbsp;</td>
        <td><label>
                <input type="password" name="a8" >
     
        </label></td>
      </tr>
	 <tr>
        <td height="29">&nbsp;</td>
        <td>&nbsp;</td>
        <td><label></label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><label>
          <input name="s1" type="submit" class="style3" style="width:80px; height:30px; background:#336633" value="Update">
          &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="s2" value="Cancel" class="style3" style="width:80px; height:30px; background:#336633">
        </label></td>
      </tr>
   <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><%=msg%></td>
      </tr><%
 
                                     } 								
													
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
    </table></td>
  </tr>
</table>
		  </form>

        
    
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="footer">
    <div class="resize">
      <div></div>
    </div>
    <p class="clr"></p>
  </div>
</div>
<div align=center></div>
</body>
</html>