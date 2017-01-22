<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<%
System.out.println("\n\n\n LoggedStatus>> " +session.getAttribute("LoggedStatus"));

if(session.getAttribute("LoggedStatus")==null){
	
	System.out.println("\n\n Session has Expired ... need to relogin");
	
	
	RequestDispatcher view = request.getRequestDispatcher("re-login.jsp");
	view.forward(request, response);
}



%>

<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<head>
<meta http-equiv='X-UA-Compatible' content='IE=EmulateIE7' />
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<title>Change Password - ADMINISTRATOR CONSOLE</title>

<!--[if IE 7]>
		<style>
			#navigation ul {
			padding-left:0;
			margin-left:-2px;	 
			}
		</style>
	<![endif]-->

<link rel='stylesheet' href='http://cdn1.editmysite.com/editor/images/common/common.css?14' type='text/css' />
<link rel='stylesheet' type='text/css' href='files/main_style_admin2.css?1319208271' title='wsite-theme-css' />
<style type='text/css'>
#wsite-content div.paragraph, #wsite-content p, #wsite-content .product-description, .blog-sidebar div.paragraph, .blog-sidebar p, .wsite-form-field label, .wsite-form-field label {}
#wsite-content h2, #wsite-content .product-title, .blog-sidebar h2{}
#wsite-title{}
</style>
<script type='text/javascript'><!--
var STATIC_BASE = 'http://cdn1.editmysite.com/';
var STYLE_PREFIX = 'wsite';
//-->
</script>
<script type='text/javascript' src='http://cdn1.editmysite.com/libraries/prototype/1.7-custom/prototype.min.js'></script>
<script type='text/javascript' src='http://cdn1.editmysite.com/libraries/scriptaculous/1.9.0-custom/effects.min.js'></script>
<script type='text/javascript' src='http://cdn1.editmysite.com/editor/images/common/utilities.js?3'></script>
<script type='text/javascript' src='http://cdn1.editmysite.com/editor/images/common/lightbox202.js?9'></script>
<script type='text/javascript' src='http://cdn1.editmysite.com/editor/libraries/flyout_menus.js?13'></script>
<script type='text/javascript'><!--
var IS_ARCHIVE=1;
function initFlyouts(){initPublishedFlyoutMenus([{"id":"405001969691813212","title":"Admin Home","url":"index.html"},{"id":"146674875957660501","title":"Candidate Details","url":"candidate-details.html"},{"id":"970458511180428576","title":"Company Details","url":"company-details.html"},{"id":"596971022672504363","title":"Change Password","url":"change-password.html"},{"id":"143461400384755254","title":"Logout","url":"logout.html"}],'596971022672504363',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'active',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>
</head>
<body class='wsite-page-change-password'>
<div id="wrapper">
		<div id="contents">
			<div id="navigation"><ul><li id='pg970458511180428576'><a href='admin-console.jsp'>Admin Home</a></li><li id='pg146674875957660501'><a href='candidate-details.jsp'>Candidate Details</a></li><li id='pg970458511180428576'><a href='company-details.jsp'>Company Details</a></li><li id='active'><a href='change-password.jsp'>Change Password</a></li><li id='pg143461400384755254'><a href='logout.jsp'>Logout</a></li></ul></div>
			<div id="header">
				<div id="sitename"><span class='wsite-logo'><table style='height:148px'><tr><td><a href='admin-console.jsp'><span id="wsite-title">ADMINISTRATOR CONSOLE</span></a></td></tr></table></span></div>
			</div>
			<div id="main"><div id='wsite-content' class='wsite-not-footer'>
<div class='wsite-not-footer'>
<h2 >Enter the required details<br /><span></span><br /><span><br /><span></span></h2>

<table  cellpadding="0" width="100%" height="522" border="0" align="center">
            
            <tr>
                
                <td valign="top"><p>&nbsp;</p>
                    <% try {

            //              HttpSession s = request.getSession();
            //  String c1 = request.getParameter("id");
            String c1 = (String) session.getAttribute("s1");
            String c2 = (String) session.getAttribute("s2");
            // session.getAttribute("c1", c1);
            
            
            
String driver = config.getServletContext().getInitParameter("mysql_driver");
String url = config.getServletContext().getInitParameter("mysql_url");
String dbname = config.getServletContext().getInitParameter("mysql_db");
String username = config.getServletContext().getInitParameter("mysql_username");
String password = config.getServletContext().getInitParameter("mysql_password");

Class.forName(driver).newInstance();

Connection con = DriverManager.getConnection(url+dbname,username,password);
           
            
            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from Login where Username='" + c1 + "' and Password ='" + c2 + "'");

            String s1 = null;
            String s2 = null;
                    %>
                    <font color="#FFFFFF" >
                        <%
     out.println(c1);
                        %>
                    </font>
                    <%
     while (rs.next()) {
         s1 = rs.getString(1);
         s2 = rs.getString(2);
     }
                    %>
                    <form name="form1" method="post" action="savepassword.jsp" onsubmit="return check()">
                        <table  cellpadding="0" width="617" height="150" border="0" align="center" cellpadding="0" >
                            <tr>
                                <td height="23" colspan="3" bordercolor="#CC6633" ><div align="center" class="style10 style1">
                                  <p><font size="4"><strong>Change Password </strong> </font></p>
                                  <p>&nbsp;</p>
                              </div></td>
                            </tr>
                            <tr>
                                <td width="218" height="26" bordercolor="#CC6633"  align="center"><span class="style15 style9"><strong> Username </strong></span></td>
                                <td width="202" bordercolor="#CC6633" align ="center"><p>
                                  <input name="user" type="text"  id="user" value="<%=s1%>" size="35">
                                </p></td>
                                <td width="175" rowspan="5"  align="center">&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#CC6633"  align="center"><span class="style15 style9"><strong>Old Password </strong></span></td>
                                <td bordercolor="#CC6633" ><p>
                                  <input name="pass" type="password"  id="pass"  size="35">
                                </p></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#CC6633" align="center"><span class="style15 style9"><strong>New Password </strong></span></td>
                                <td bordercolor="#CC6633" ><p>
                                  <input name="newpass2" type="password" id="newpass2" size="35">
                                </p></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#CC6633"  align="center"><span class="style15 style9"><strong>Retype New Password</strong></span></td>
                                <td bordercolor="#CC6633" ><input name="newpass" type="password" id="newpass" size="35"></td>
                            </tr>
                            <tr>
                                <td height="28" colspan="2" bordercolor="#CC6633" ><div align="center">
                                        <input name="Submit" type="submit" class="style9" value="Submit">
                                </div></td>
                            </tr>
                        </table>
                    </form>
                    <%
        }//try
        catch (Exception e) {
            out.println(e);
        }

                    %>

                </td>
            </tr>
        </table>


<br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><br /><span></span><br /><span></span></span>

<div ><div style="height: 20px; overflow: hidden; width: 100%;"></div>
<hr class="styled-hr" style="width:100%;"></hr>
<div style="height: 20px; overflow: hidden; width: 100%;"></div></div>

<div  class="paragraph editable-text" style=" text-align: center; ">&nbsp;Copyright &copy; 2010-2011 IT Spark Corporation&nbsp; - All rights reserved </div>

</div>
</div>
</div>
			
			</div>
		</div>
	</div>

</body>
</html>