<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<meta http-equiv='X-UA-Compatible' content='IE=EmulateIE7' />
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<!--session management frwrding -->

<%
System.out.println("\n\n\n LoggedStatus>> " +session.getAttribute("LoggedStatus"));

if(session.getAttribute("LoggedStatus")==null){
	
	System.out.println("\n\n Session has Expired ... need to relogin");
	
	
	RequestDispatcher view = request.getRequestDispatcher("re-login.jsp");
	view.forward(request, response);
}

%>



<title>Change Password - CANDIDATE CONSOLE</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel='stylesheet' href='http://cdn1.editmysite.com/editor/images/common/common.css?15' type='text/css' />
<link rel='stylesheet' type='text/css' href='files/main_style_candidate.css?1319619124' title='wsite-theme-css' />
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
function initFlyouts(){initPublishedFlyoutMenus([{"id":"217587437308530556","title":"Candidate Home","url":"index.html"},{"id":"843399331795564163","title":"Edit Profile","url":"edit-profile.html"},{"id":"837136730755946494","title":"Change Password","url":"change-password.html"},{"id":"637835727270969297","title":"View Company Details","url":"view-company-details.html"},{"id":"852155698204180283","title":"Examination","url":"examination.html"},{"id":"796793576388083129","title":"Logout","url":"logout.html"}],'837136730755946494',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'active',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>
</head>
<body class='wsite-page-change-password'>
<div id="wrapper">
      <div class="title"><span class="titletext"><span class='wsite-logo'><table style='height:35px'><tr><td><a href='candidate-console.jsp'><span id="wsite-title">CANDIDATE CONSOLE</span></a></td></tr></table></span></span></div>
            
            <div id="navigation">
                <ul><li id='pg217587437308530556'><a href='candidate-console.jsp'>Candidate Home</a></li><li id='pg843399331795564163'><a href='edit-profile.jsp'>Edit Profile</a></li><li id='active'><a href='change-candidate-password.jsp'>Change Password</a></li><li id='pg637835727270969297'><a href='view-company-details.jsp'>View Company Details</a></li><li id='pg852155698204180283'><a href='examination.jsp'>Examination</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-872014994888687758'><a href='take-exam.html'><span class='wsite-menu-title'>Take Exam</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-292754909471902168'><a href='exam-results.html'><span class='wsite-menu-title'>Exam Results</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='pg796793576388083129'><a href='logout-candidate.jsp'>Logout</a></li></ul>
            </div>
    
        <div id="header"><div class="wsite-header"></div></div>
            
            <div id="content">
                <div id='wsite-content' class='wsite-not-footer'>
<div class='wsite-not-footer'>
<h2  style=" text-align: center; ">Change your login password</h2>

<div  class="paragraph editable-text" style=" text-align: left; ">
  <p><br />
    <br />
  </p>
  <p>
  
  
  
  <table  cellpadding="0" width="100%" height="482" border="0">
            
            <tr>
               
                <td width="99%" valign="top" ><p>&nbsp;</p>
                    <p class="style4">&nbsp;</p>
                    <span class="style4">
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

                        <%
   // out.println(c1);
   //  out.println(c2);
                        %>

                        <%
     while (rs.next()) {
         s1 = rs.getString(1); 
         s2 = rs.getString(2);
     }
                        %>
                    </span>
                    <form name="form1" method="post" action="savecanpass.jsp" onsubmit="return check()">
                        <table  cellpadding="0" width="617" height="150" border="0" align="right" cellpadding="1" >
                            <tr>
                                <td height="23" colspan="3" >&nbsp;</td>
                            </tr>
                            <tr>
                                <td width="218" height="26" bordercolor="#CC6633" ><span class="style15 style9"><strong> Username </strong></span></td>
                                <td width="202" bordercolor="#CC6633" ><input name="user" type="text"  id="user" value="<%=s1%>" size="35"></td>
                                <td width="175" rowspan="5" bordercolor="#CC6633" >&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#CC6633" ><span class="style15 style9"><strong>Old Password </strong></span></td>
                                <td bordercolor="#CC6633" ><input name="pass" type="password"  id="pass"  size="35"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#CC6633"><span class="style15 style9"><strong>New Password </strong></span></td>
                                <td bordercolor="#CC6633" ><input name="newpass2" type="password" id="newpass2" size="35"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#CC6633" ><span class="style15 style9"><strong>Retype New Password</strong></span></td>
                                <td bordercolor="#CC6633" ><input name="newpass" type="password" id="newpass" size="35"></td>
                            </tr>
                            <tr>
                                <td height="28" colspan="2" bordercolor="#CC6633"><div align="center">
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

                %>	</td>
            </tr>
        </table>
  
  
  
  <br />
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
  </p>
</div>

<div ><div style="height: 20px; overflow: hidden; width: 100%;"></div>
<hr class="styled-hr" style="width:100%;"></hr>
<div style="height: 10px; overflow: hidden; width: 100%;"></div></div>

<div  class="paragraph editable-text" style=" text-align: center; ">&nbsp;Copyright &copy; 2010-2011 i - World Corporation - All rights reserved&nbsp;<br /></div>

</div>
</div>

            </div>
                <div id="footer">
                    
                </div>
    </div> 

</body>
</html>