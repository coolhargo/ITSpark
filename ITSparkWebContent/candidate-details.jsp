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

<title>Candidate Details - ADMINISTRATOR CONSOLE</title>

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
function initFlyouts(){initPublishedFlyoutMenus([{"id":"405001969691813212","title":"Admin Home","url":"index.html"},{"id":"146674875957660501","title":"Candidate Details","url":"candidate-details.html"},{"id":"970458511180428576","title":"Company Details","url":"company-details.html"},{"id":"596971022672504363","title":"Change Password","url":"change-password.html"},{"id":"143461400384755254","title":"Logout","url":"logout.html"}],'146674875957660501',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'active',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>
</head>
<body class='wsite-page-candidate-details'>
<div id="wrapper">
		<div id="contents">
			<div id="navigation"><ul><li id='pg970458511180428576'><a href='admin-console.jsp'>Admin Home</a></li><li id='active'><a href='candidate-details.jsp'>Candidate Details</a></li><li id='pg970458511180428576'><a href='company-details.jsp'>Company Details</a></li><li id='pg596971022672504363'><a href='change-password.jsp'>Change Password</a></li><li id='pg143461400384755254'><a href='logout.jsp'>Logout</a></li></ul></div>
			<div id="header">
				<div id="sitename"><span class='wsite-logo'>
                
                
                <table style='height:148px'><tr><td><a href='admin-console.jsp'><span id="wsite-title">ADMINISTRATOR CONSOLE</span></a></td></tr></table></span></div>
			</div>
			<div id="main"><div id='wsite-content' class='wsite-not-footer'>
<div class='wsite-not-footer'>
<h2  style=" text-align: left; ">Candidates Registered so far&nbsp;..</h2>
<div  class="paragraph editable-text" style=" text-align: left; display: block; ">
  <p>As per the data in your database .. <br />
    <span></span><br />
    <span></span></p>
  <p>
  
  
  
  <table  cellpadding="0" width="100%" height="472" border="0" align="left">
    <tr>
      
      <td  valign="top"><table  cellpadding="0" width="830" height="109" border="0" align="left">
        <tr>
          <td height="31" colspan="16"   ><div align="center" class="style8 style63 style5">
           <font size ="4"> <p ><strong>Candidate Details </strong></p> </font>
            <p>&nbsp;</p>
          </div></td>
          </tr>
        <tr>
          <td width="89" height="33" bordercolor="#663300"  ><div align="center"><span class="style11"><strong>Username</strong></span></div></td>
          <td width="112" bordercolor="#663300" ><div align="center" class="style64 style7"><strong> Name</strong></div></td>
          <td width="104" bordercolor="#663300"  ><div align="center" class="style64 style7"><strong>Address</strong></div></td>
          <td width="106" bordercolor="#663300"  ><div align="center" class="style64 style7"><strong>Phone</strong></div></td>
          <td width="124" bordercolor="#663300"  ><div align="center" class="style64 style7"><strong>Email_id</strong></div></td>
          <td width="109" bordercolor="#663300"  ><div align="center" class="style64 style7"><strong>Category</strong></div></td>
          <td width="86" bordercolor="#663300"  ><div align="center" class="style64 style7"><strong>Delete</strong></div></td>
          <td width="71" bordercolor="#663300"  ><div align="center" class="style64 style7"><strong>Resume</strong></div></td>
          </tr>
        <%


        String driver = config.getServletContext().getInitParameter("mysql_driver");
        String url = config.getServletContext().getInitParameter("mysql_url");
        String dbname = config.getServletContext().getInitParameter("mysql_db");
        String username = config.getServletContext().getInitParameter("mysql_username");
        String password = config.getServletContext().getInitParameter("mysql_password");

        Class.forName(driver).newInstance();

        Connection con = DriverManager.getConnection(url+dbname,username,password);

        
      
      try
              {
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select Username,Name,Address,Telephone,Email_id,Category from Details");
	  String  uid="",name="",address="",phone="",email="",cat="";
        while(rs.next())
            {
			uid=rs.getString("Username");
			name=rs.getString("Name");
			address=rs.getString("Address");
			phone=rs.getString("Telephone");
			email=rs.getString("Email_id");
			cat=rs.getString("Category");




      %>
        <tr>
          <td height="35" bordercolor="#663300"  ><div align="center"><%=uid%></div></td>
          <td bordercolor="#663300"  ><div align="center"><%=name%></div></td>
          <td bordercolor="#663300"  ><div align="center"><%=address%></div></td>
          <td bordercolor="#663300"  ><div align="center"><%=phone%></div></td>
          <td bordercolor="#663300"  ><div align="center"><%=email%></div></td>
          <td bordercolor="#663300" ><div align="center"><%=cat%></div></td>
          <td bordercolor="#663300" ><div align="center"><a href="Delete.jsp?uid=<%=uid%>" class="style12">Delete</a></div></td>
          <td bordercolor="#663300" ><div align="center"><a href="resume.jsp?uid=<%=uid%>"><strong>View</strong></a></div></td>
          </tr>
        <%
      }
      }
      catch(Exception e)
              {
          out.println(e);
              }
            %>
        </table>
        </td>
    </tr>
      </table>
      
      
  <br />
    <span></span><br />
    <span></span><br />
    <span></span><br />
    <span></span><br />
    <span></span><br />
    <span></span><br />
    <span></span><br />
    <span></span><br />
    <span></span><br />
    <span></span><br />
</div>

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