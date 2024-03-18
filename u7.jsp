<%-- 
    Document   : u7
    Created on : Apr 26, 2022, 8:10:08 AM
    Author     : windows
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
.style2 {color: #006699}
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
       <form action="feedback" method="post">
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
    %><table width="771" border="0" align="center">
        <tr>
          <td width="765" height="35" align="center"><span class="style3">
            <h1>Product For Sales</h1></td>
        </tr>
        <tr>
          <td height="419" align="center"><table width="776" border="0">
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
                
		ResultSet rs = st.executeQuery("select * from product where  pid='"+ so.getAttribute("a2")+"'");

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
			         <td width="770" height="85" align="center"><table width="739" border="0">
                          <tr>
                            <td width="414" height="298" class="style5" ><table width="432" border="0" cellspacing="4px">
                                <tr>
                                  <td width="102" height="32">Product Id </td>
                                  <td width="12">&nbsp;</td>
                                  <td width="289"><label>
                                    <input type="text" name="a1" value="<%=b1%>" readonly="true" />
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="39">Product Name </td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <input type="text" name="a2" value="<%=b2%>" readonly="true" />
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="34">Price </td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <input type="text" name="a3" value="<%=b3%>" readonly="true" />
                                  </label></td>
                                </tr>
                                <tr>
                                  <td height="40">Rating</td>
                                  <td>&nbsp;</td>
                                  <td><span class="style50">
                                    <label>
                                    <input type="radio" name="a4" value="1" />
                                      1 </label>
                                    <label>
                                    <input type="radio" name="a4" value="2" />
                                      2 </label>
                                    <label>
                                    <input type="radio" name="a4" value="3" />
                                    </label>
                                    <label> 3
                                      <input type="radio" name="a4" value="4" />
                                      4 </label>
                                    <label>
                                    <input type="radio" name="a4" value="5" />
                                    </label>
                                    5</td>
                                </tr> <tr>
                                  <td height="68">Rating</td>
                                  <td>&nbsp;</td>
                                  <td><span class="style50">
                                    <label>
                                    <input type="radio" name="a6" value="Good" />
                                     Good </label>
                                    <label>
                                    <input type="radio" name="a6" value="Better" />
                                      Better </label>
                                    <label>
                                   <br /> <input type="radio" name="a6" value="Best" /> Best                                    </label>
                                     <label>
                                    <input type="radio" name="a6" value="Worst" /> Worst                                    </label>
                                  </td>
                                </tr>
                                  
                                <tr>
                                  <td height="44">Feedback</td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <textarea name="a5" rows="6" id="a5" >            </textarea>
                                  </label></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td>&nbsp;</td>
                                  <td><label>
                                    <input name="s1" type="submit"  value="Submit" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="reset" name="s2" value="Cancel" />
                                  </label></td>
                                </tr>
                                
                            </table></td>
                            <td width="315" class="style5"><table width="315" height="278" border="0">
                              <tr>
                                <td width="309" height="274"  align="center"><img src="product\\<%=rs.getString(1)%>.jpg" width="294" height="263" /></td>
                              </tr>
                            </table></td>
                          </tr><%
 
                               							
              		}										
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
                  </table><P><%=msg%></P></td>
              </tr><tr><td height="35" align="center"><span class="style2">FEEDBACK</span></td>
              </tr><TR><TD><table width="763" border="0">
		
		   <% int index=0;
	try
	{
	   
        
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
                
		ResultSet rs = st.executeQuery("select * from feedback where pid='"+b1+"'");

    while(rs.next())
		{	
       		
	 %>
           <tr>
			
               <td width="757"> Customer Name : <%=rs.getString(7)%></td></tr>
		    <tr>
			
               <td width="757"> Rating : <%=rs.getString(5)%></td></tr>
           <tr>
		   <td width="757">Feedback: <%=rs.getString(8)%></td>
            </tr>
			  <tr>
		   <td width="757">Description: <%=rs.getString(6)%></td>
            </tr>  <tr>
		   <td width="757">Status: <%=rs.getString(10)%></td>
            </tr>  <%
 
                                     } 								
													
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
          </table></TD></TR>
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
