<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
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


<title>Change Password - COMPANY CONSOLE</title>
 <script language="javascript">
            function check()
            {
                var a= document.form1.newpass2.value;
                var b= document.form1.newpass.value;
                    if(document.form1.pass.value  =="")
                    {
                        alert("Enter the old password");
                        document.form1.pass.focus();
                        return false;
                    }
                   if(document.form1.newpass2.value =="")
                    {
                        alert("Enter the new password");
                        document.form1.newpass2.focus();
                        return false;
                    }
                    else if(a.length<8)
                        {
                         alert("password should be minimum 8 characters");
                        document.form1.newpass2.focus();
                        return false;
                        }
                    if(document.form1.newpass.value=="")
                    {
                        alert("ReEnter the password");
                        document.form1.newpass.focus();
                        return false;
                    }
                    else if(a!=b)
                        {
                            alert("Wrong password match");
                            document.form1.newpass.focus();
                            return false;
                        }
                    
                    return true;
            }
        </script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--[if lt IE 7]>
<style>
#content
{
    height:400px !important;
}
</style>
<![endif]-->

<link rel='stylesheet' href='http://cdn1.editmysite.com/editor/images/common/common.css?15' type='text/css' />
<link rel='stylesheet' type='text/css' href='files/main_style_company.css?1319277711' title='wsite-theme-css' />
<style type='text/css'>
#wsite-content div.paragraph, #wsite-content p, #wsite-content .product-description, .blog-sidebar div.paragraph, .blog-sidebar p, .wsite-form-field label, .wsite-form-field label {}
#wsite-content h2, #wsite-content .product-title, .blog-sidebar h2{font-family:Georgia !important;}
#wsite-title{font-family:Georgia !important;}
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
function initFlyouts(){initPublishedFlyoutMenus([{"id":"549894428711648239","title":"Company Home","url":"index.html"},{"id":"960034452225949986","title":"Edit Profile","url":"edit-profile.html"},{"id":"753199871191594904","title":"Change Password","url":"change-password.html"},{"id":"974292240811730544","title":"Job Preview","url":"job-preview.html"},{"id":"450380173468797919","title":"Exam","url":"examination.html"},{"id":"923082235836435029","title":"Questions","url":"questions.html"},{"id":"495220106213690733","title":"Logout","url":"logout.html"}],'753199871191594904',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'active',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>
</head>
<body class='wsite-page-change-password'>
<div id="wrapper">
            <div class="title"><span class='wsite-logo'><table style='height:78px'><tr><td><a href='company-console.jsp'><span id="wsite-title">COMPANY CONSOLE</span></a></td></tr></table></span></div>
            
            <div id="navigation">
                <ul><li id='pg549894428711648239'><a href='company-console.jsp'>Company Home</a></li><li id='pg960034452225949986'><a href='edit-company-profile.jsp'>Edit Profile</a></li><li id='active'><a href='change-company-password.jsp'>Change Password</a></li><li id='pg974292240811730544'><a href='job-preview.jsp'>Job Preview</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-902053309496605136'><a href='job--view.jsp'><span class='wsite-menu-title'>Job : View</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-413847689802118061'><a href='job--add.jsp'><span class='wsite-menu-title'>Job : Add</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='pg450380173468797919'><a href='exam.jsp'>Examination</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-959524220811888102'><a href='exam--creation.jsp'><span class='wsite-menu-title'>Exam : Creation</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-342968665281886077'><a href='exam--view.jsp'><span class='wsite-menu-title'>Exam : View</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='pg923082235836435029'><a href='questions.jsp'>Questions</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-506943639718858186'><a href='question--add.jsp'><span class='wsite-menu-title'>Question : Add</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-943111746234810061'><a href='question--view.jsp'><span class='wsite-menu-title'>Question : View</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='pg495220106213690733'><a href='logout-company.jsp'>Logout</a></li></ul>
            </div>
    
        <div id="header" class="wsite-header">
        </div>
            
            <div id="content">
                <div id='wsite-content' class='wsite-not-footer'>
<div class='wsite-not-footer'>
<h2  style=" text-align: center; ">Enter the details for changing password</h2>

<div  class="paragraph editable-text" style=" text-align: left; ">
  <p><br />
    
    <table  cellpadding="0" width="100%" height="522" border="0">
            
            <tr>
               
                <td  valign="top"><% try {

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
                    <form name="form1" method="post" action="savepassword2.jsp" onsubmit="return check()">
                        <table  cellpadding="0" width="617" height="150" border="0" align="center" cellpadding="0" >
                            <tr>
                                <td height="23" colspan="3" ><div align="center" class="style10 style1"><strong> </strong></div></td>
                            </tr>
                            <tr>
                                <td width="218" height="26" bordercolor="#CC6633" ><span class="style15 style9"><strong> Username </strong></span></td>
                                <td width="202"  ><input name="user" type="text"  id="user" value="<%=s1%>" size="35"></td>
                                
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#CC6633" ><span class="style15 style9"><strong>Old Password </strong></span></td>
                                <td bordercolor="#CC6633"><input name="pass" type="password"  id="pass"  size="35"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#CC6633" ><span class="style15 style9"><strong>New Password </strong></span></td>
                                <td bordercolor="#CC6633" ><input name="newpass2" type="password" id="newpass2" size="35"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#CC6633" ><span class="style15 style9"><strong>Retype New Password</strong></span></td>
                                <td bordercolor="#CC6633"><input name="newpass" type="password" id="newpass" size="35"></td>
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
    <span></span></p>
</div>

<div ><div style="height: 20px; overflow: hidden; width: 100%;"></div>
<hr class="styled-hr" style="width:100%;"></hr>
<div style="height: 20px; overflow: hidden; width: 100%;"></div></div>

<div  class="paragraph editable-text" style=" text-align: center; ">Copyright &copy;&nbsp; 2010-2011 IT Spark Corporation&nbsp; - All rights reserved </div>

</div>
</div>

            </div>
    </div> 

</body>
</html>