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
    <form action="purchase" method="post">
           	<%
   String ok=(String)request.getAttribute("ok");
   String msg="";
 String a11="";
 String a12="";
    if(ok!=null)
   {
   msg=(String)request.getAttribute("msg");
   a11=(String)request.getAttribute("a1");
   a12=(String)request.getAttribute("a2");
   
   

     }
    %><table width="683" border="0" align="center">
     
        <tr>
          <td height="715" align="center"><table width="674" border="0">
		   <%
                   int v,v1,v2=0,v3=0,v4=0,v5=0;
String b1=null,b2=null,b3=null,b4=null,b5=null,b6,b7;
String amt=null,dis=null;
	try
	{
	   
            
             	   HttpSession so = request.getSession(true);
                 
 System.out.println(  so.getAttribute("a1"));

		int flag=0;
		String url="jdbc:mysql://localhost:3306/online2";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
                Statement st1=con.createStatement();
                Statement st2=con.createStatement();
                Statement st3=con.createStatement();
                
		ResultSet rs = st.executeQuery("select * from product where  pid='"+ so.getAttribute("a1")+"'");

    if(rs.next())
		{	
       	b1=rs.getString(1);
        	b2=rs.getString(2);
                	b3=rs.getString(5);
                        	b4=rs.getString(7);
                                	
                                        
                                        
            v1=Integer.parseInt(rs.getString(5));
                v2=Integer.parseInt(rs.getString(6));
                v3=(v1*v2)/100;
                v4=v1-v3;
                dis=v3+"";
                amt=v4+"";
                            
	 %>
            <tr>
			         <td width="668" height="35" align="center"></td>
              
              </tr>
			    <tr>
			         <td width="668" height="716" align="center"><table width="649" height="29" border="0">
                       <tr>
                         <td width="386"><table width="386" border="0" cellspacing="10px">
                           <tr>
                             <td width="144">Product Id </td>
                             <td width="6">&nbsp;</td>
                        <td width="190"><label>
                                     <input type="text" name="a1" value="<%=b1%>">
                             </label></td>
                           </tr>
                           <tr>
                             <td>Product Name </td>
                             <td>&nbsp;</td>
                             <td><label>
                               <input type="text" name="a2" value="<%=b2%>">
                             </label></td>
                           </tr>
                           <tr>
                             <td>Price </td>
                             <td>&nbsp;</td>
                             <td><label>
                               <input type="text" name="a3" value="<%=b3%>">
                             </label></td>
                           </tr>
                           <tr>
                             <td>Discount</td>
                             <td>&nbsp;</td>
                             <td><label>
                               <input type="text" name="a4" value="<%=dis%>">
                             </label></td>
                           </tr>
						       <tr>
                             <td>Amount</td>
                             <td>&nbsp;</td>
                             <td><label>
                                     <input type="text" name="a5" value="<%=amt%>">
                             </label></td>
                           </tr>
                                <tr>
                             <td>Stock Available</td>
                             <td>&nbsp;</td>
                             <td><label>
                             <input type="text" name="a32" value="<%=b4%>" />
                             </label></td>
                           </tr>
                           <tr>
                             <td>No of Product </td>
                             <td>&nbsp;</td>
                             <td><label>
                               <input type="text" name="a6" value="<%=a11%>">
                             </label></td>
                           </tr>
						     
						       <tr>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                           </tr>  <tr>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td><label>
                                <input name="s1" type="submit" class="style3" style="width:80px; height:30px; background:#336633" value="Submit">
                                &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="s2" value="Cancel" class="style3" style="width:80px; height:30px; background:#336633">
                             </label></td>
                           </tr>  </table><%if(request.getParameter("s1")!=null){%><table align="center">
                           <tr>
                             <td width="133">Total Cost </td>
                             <td width="10">&nbsp;</td>
                             <td width="195"><label>
                                     <input type="text" name="a7" value="<%=a12%>">
                             </label></td>
                           </tr>
                         <tr>
                             <td>Credit Card </td>
                             <td>&nbsp;</td>
                             <td><label>
                               <input type="text" name="a8" value="" maxlength="16">
                             </label></td>
                           </tr>
						   <tr>
                             <td>CV </td>
                             <td>&nbsp;</td>
                             <td><label>
                               <input type="text" name="a9" value="" maxlength="3">
                             </label></td>
                           </tr>
						     <tr>
                             <td>PIN NO </td>
                             <td>&nbsp;</td>
                             <td><label>
                               <input type="text" name="a10" value="" maxlength="4">
                             </label></td>
                           </tr>
						   <tr>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td><label>
                                <input name="s3" type="submit" class="style3" style="width:80px; height:30px; background:#336633" value="Payment">
                                &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="s4" value="Cancel" class="style3" style="width:80px; height:30px; background:#336633">
                             </label></td>
                           </tr> 
                           <tr>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                           </tr>
                                     </table><%}%><p><%=msg%></p></td>
                         <td width="253"><table width="288" border="0">
  <tr>
    <td width="282"><img src="product//<%=b1%>.jpg" width="262" height="211" /></td>
  </tr>
  <tr>
    <td height="36" align="center"><img src="QRCode//<%=b1%>.png" width="204" height="186" /></td>
  </tr>
    <tr>
    <td height="36">&nbsp;</td>
  </tr>
    <tr>
    <td height="36">&nbsp;</td>
  </tr>
    <tr>
    <td height="219">&nbsp;</td>
  </tr>
</table>
</td>
                       </tr>
                     </table><table width="684" border="0">
  <tr>
    <td width="634" height="25" align="center"><strong>FEEDBACK</strong></td>
  </tr>
  <tr>
    <td><table width="763" border="0">
		
		   <% int index=0;
	try
	{
	   
        
             	  
 System.out.println(a11);

		
	
                
		ResultSet rs1 = st.executeQuery("select * from feedback where pid='"+b1+"'");

    while(rs1.next())
		{	
       		
	 %>
           <tr>
			
               <td width="757"> Customer Name : <%=rs1.getString(7)%></td></tr>
		    <tr>
			
               <td width="757"> Rating : <%=rs1.getString(5)%></td></tr>
           <tr>
		   <td width="757">Feedback: <%=rs1.getString(8)%></td>
            </tr>
			  <tr>
		   <td width="757">Description: <%=rs1.getString(6)%></td>
            </tr>  <tr>
		   <td width="757">Status: <%=rs1.getString(10)%></td>
            </tr>  <%
 
                                     } 								
													
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
          </table></td>
  </tr>
</table>
</td>
              
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