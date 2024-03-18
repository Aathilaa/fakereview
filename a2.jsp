
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
.style1 {
	font-size: 12px;
	font-weight: bold;
}
.style2 {font-size: 12px}
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
            <li><a href="a1.jsp" >Home</a></li>
          <li><a href="a2.jsp" class="active">Product</a></li>
          <li><a href="a4.jsp">Customer</a></li>
          <li><a href="a5.jsp">Transaction</a></li>
          <li><a href="a6.jsp">Feedback </a></li>
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
      <div class="Welcome" style="width: 920px; font-weight: normal;">
        <h2>Welcome to our website</h2>
        <p>&nbsp;</p>
        <table width="914" border="0" align="center">

  <tr>
    <td><form action="aproduct" method="post">
<%
   String ok=(String)request.getAttribute("ok");
   String msg="",a1="",a2="",a3="",a4="",a5="",a6="",a7="",a8="",a9="",a10="";
  int v,v1,v2=0;
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");

     }
     String ok1=(String)request.getAttribute("ok1");
     if(ok1!=null)
   {
   a10=(String)request.getAttribute("a1");
   v2=Integer.parseInt(a10);
    a2=(String)request.getAttribute("a2");
     a3=(String)request.getAttribute("a3");
      a4=(String)request.getAttribute("a4");
       a5=(String)request.getAttribute("a5");
        a6=(String)request.getAttribute("a6");
         a7=(String)request.getAttribute("a7");
          msg=(String)request.getAttribute("msg");
     
     }
    %>
            <table width="891" height="518" border="0">
              <tr>
                <td width="885" height="514" align="center"><table width="599" border="1" align="center" bordercolor="#003399">
            
        <tr>
          <td width="593" height="41" align="center">ADD PRODUCT</td>
        </tr>
        <tr>
          <td height="475" align="center"><table width="550" border="0">
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
                
		ResultSet rs = st.executeQuery("select max(pid) from product");

    if(rs.next())
		{	
       		v1=Integer.parseInt(rs.getString(1));	
                            
                v2=v1+1;
                	}	
	 %><tr>
              <td width="216" height="31">Product Id </td>
              <td width="9">&nbsp;</td>
      <td width="311" align="left"><label>
                      <input type="text" name="a1" value="<%=v2%>" >
              </label><input name="s4" type="submit"  value="Search"/></td>
            </tr>
              <%
 
                           								
													
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
            <tr>
              <td height="39">Product Name </td>
              <td>&nbsp;</td>
              <td align="left"><label>
                <input type="text" name="a2" value="<%=a2%>">
              </label></td>
            </tr>
			<tr>
              <td height="38">Type</td>
              <td>&nbsp;</td>
              <td align="left"><label>
                <input type="text" name="a8" value="<%=a2%>">
              </label></td>
            </tr>
            <tr>
              <td height="34">Product image </td>
              <td>&nbsp;</td>
              <td align="left"><label>
                <input type="file" name="a3" style="width:80%" value="<%=a3%>">
              </label></td>
            </tr>
            <tr>
              <td height="98">Details</td>
              <td>&nbsp;</td>
              <td align="left"><label>
              <textarea name="a4" cols="25" rows="5"><%=a4%></textarea>
              </label></td>
            </tr>
            <tr>
              <td height="38">Price</td>
              <td>&nbsp;</td>
              <td align="left"><label>
                <input type="text" name="a5" value="<%=a5%>">
              </label></td>
            </tr>
            <tr>
              <td height="34">Discount</td>
              <td>&nbsp;</td>
              <td align="left"><label>
                <input type="text" name="a6" value="<%=a6%>">
              </label></td>
            </tr>
              <tr>
              <td height="34">No of Stock</td>
              <td>&nbsp;</td>
              <td align="left"><label>
                <input type="text" name="a7" value="<%=a7%>">
              </label></td>
            </tr>
            <tr>
              <td height="30">&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td><label>
          <input name="s1" type="submit"  value="Added">
          &nbsp;&nbsp;&nbsp;&nbsp;<input name="s3" type="submit"  value="Updated">
          &nbsp;&nbsp;&nbsp;&nbsp;<input name="s5" type="submit"  value="Deleted">
          &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="s2" value="Cancel" >
        </label></td>
            </tr>
          </table>
          <%=msg%></td>
        </tr>
      </table>
                <table width="878" border="1" align="center" bordercolor="#006699">
        <tr>
          <td width="868" height="35" align="center"><strong>PRODUCT DETAILS <span class="style2"></span></strong></td>
        </tr>
        <tr>
          <td height="84" align="center"><table width="881" height="36" border="1" bordercolor="#006699">
  <tr>
			   
              <td width="69" height="30" align="center">PID</td>
              <td width="136" align="center">PRODUCT</td>
              <td width="248" align="center">DETAILS</td>
		      <td width="73" align="center">PRICE</td>
              <td width="80" align="center">DISCOUNT</td>
			  <td width="61" height="30" align="center">STOCK</td>
              <td width="64" align="center">TYPE</td>
              <td width="85" align="center">STATUS</td>
            </tr>

		
		   <% 
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
                
		ResultSet rs = st.executeQuery("select * from product ");

    while(rs.next())
		{	
       		
	 %>
            <tr>
			    <td width="69" height="36" align="center"><div align="center"><%=rs.getString(1)%></div></td>
              <td width="136"><div align="center"><%=rs.getString(2)%></div></td>
          <td width="248"><div align="center"><%=rs.getString(4)%></div></td>
              <td width="73" align="center"><div align="center"><%=rs.getString(5)%></div></td>
              <td width="80"><div align="center"><%=rs.getString(6)%></div></td>
           
		       <td width="61" height="36" align="center"><div align="center"><%=rs.getString(7)%></div></td>
              <td width="64"><div align="center"><%=rs.getString(8)%></div></td>
          <td width="85" align="center"><div align="center"><%=rs.getString(10)%></div></td> </tr><%
 
                                     } 								
													
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
          </table></td>
        </tr>
      </table></td>
              </tr>
            </table>
          </FORM></td>
  </tr>
  <tr>
    <td height="21">&nbsp;</td>
  </tr>
</table>

        
    
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  </div>
  <div align=center></div>
</body>
</html>