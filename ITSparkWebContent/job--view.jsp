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

<title>Company Console - COMPANY CONSOLE</title>

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
function initFlyouts(){initPublishedFlyoutMenus([{"id":"549894428711648239","title":"Company Home","url":"index.html"},{"id":"960034452225949986","title":"Edit Profile","url":"edit-profile.html"},{"id":"753199871191594904","title":"Change Password","url":"change-password.html"},{"id":"974292240811730544","title":"Job Preview","url":"job-preview.html"},{"id":"450380173468797919","title":"Examination","url":"examination.html"},{"id":"923082235836435029","title":"Questions","url":"questions.html"},{"id":"495220106213690733","title":"Logout","url":"logout.html"}],'902053309496605136',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>
</head>
<body class='wsite-page-job-view'>
<div id="wrapper">
            <div class="title"><span class='wsite-logo'><table style='height:78px'><tr><td><a href='company-console.jsp'><span id="wsite-title">COMPANY CONSOLE</span></a></td></tr></table></span></div>
            
                
    <div id="navigation">
                <ul><li id='pg549894428711648239'><a href='company-console.jsp'>Company Home</a></li><li id='pg960034452225949986'><a href='edit-company-profile.jsp'>Edit Profile</a></li><li id='pg753199871191594904'><a href='change-company-password.jsp'>Change Password</a></li><li id='pg974292240811730544'><a href='job-preview.jsp'>Job Preview</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-902053309496605136'><a href='job--view.jsp'><span class='wsite-menu-title'>Job : View</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-413847689802118061'><a href='job--add.jsp'><span class='wsite-menu-title'>Job : Add</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='pg450380173468797919'><a href='exam.jsp'>Examination</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-959524220811888102'><a href='exam--creation.jsp'><span class='wsite-menu-title'>Exam : Creation</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-342968665281886077' class='wsite-nav-current'><a href='exam--view.jsp'><span class='wsite-menu-title'>Exam : View</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='pg923082235836435029'><a href='questions.jsp'>Questions</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-506943639718858186'><a href='question--add.jsp'><span class='wsite-menu-title'>Question : Add</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-943111746234810061'><a href='question--view.jsp'><span class='wsite-menu-title'>Question : View</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='pg495220106213690733'><a href='logout-company.jsp'>Logout</a></li></ul>
            </div>
    
    
        <div id="header" class="wsite-header">
        </div>
            
            <div id="content">
                <div id='wsite-content' class='wsite-not-footer'>
<div class='wsite-not-footer'>
<h2  style=" text-align: center; ">Job details</h2>
<p  style=" text-align: center; ">&nbsp;</p>
<div  class="paragraph editable-text" style=" text-align: left; ">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table  cellpadding="0" width="100%" border="0" >
                    <tr>
            
            <td height="23"><td width="961" bordercolor="#663366" valign="top"><table  cellpadding="0" width="826" height="87" border="0" align="center"  >
          <tr>
            <td height="31" colspan="8" bordercolor="#516415" ><div align="center"><span class="style1"> </span></div></td>
          </tr>
          <tr>
             <td width="72" height="23" bordercolor="#516415" >
               <div align="center" class="style9"><strong>Job ID </strong></div></td>
            <td width="131" bordercolor="#516415" ><div align="center" class="style9"><strong>Post</strong></div></td>
            <td width="112" bordercolor="#516415" ><div align="center" class="style9"><strong>Criteria</strong></div></td>
            <td width="90" bordercolor="#516415" ><div align="center" class="style9"><strong>Vacancies</strong></div></td>
            <td width="101" bordercolor="#516415" ><div align="center" class="style9"><strong>Salary/Annum</strong></div></td>
            <td width="103" bordercolor="#516415" ><div align="center" class="style9"><strong>LastDate</strong></div></td>
            <td width="86" bordercolor="#516415" ><div align="center" class="style9"><strong>Edit</strong></div></td>
            <td width="79" bordercolor="#516415" ><div align="center" class="style9"><strong>Delete</strong></div>
            </td>
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
      ResultSet rs=st.executeQuery("select * from JobDetails");
            String  jid="",jpost="",jcriteria="",jvac="",jsal="",jdate="";
        while(rs.next())
            {
			jid=rs.getString("JobId");
                        jpost=rs.getString("Post");
                        jcriteria=rs.getString("Criteria");
                        jvac=rs.getString("NoOfVacancies");
                        jsal=rs.getString("Salary");
                        jdate=rs.getString("LastDate");

      %>
      <tr>
        <td height="23" bordercolor="#516415"  align="center"><span class="style6">
          <%=jid%>
        </span></td>
        <td bordercolor="#516415"  align="center"><span class="style6">
          <%=jpost%>
        </span></td>
        <td bordercolor="#516415"  align="center"><span class="style6">
          <%=jcriteria%>
        </span></td>
        <td bordercolor="#516415" align="center"><span class="style6">
          <%=jvac%>
        </span></td>
        <td bordercolor="#516415" align="center"><span class="style6">
          <%=jsal%>
        </span></td>
        <td bordercolor="#516415" align="center"><span class="style6">
          <%=jdate%>
        </span></td>
        <td bordercolor="#516415" align="center"><div align="center"><a href="editJob.jsp?jid=<%=jid%>"><strong>Edit</strong></a></div></td>
        <td bordercolor="#516415" align="center"><div align="center"><a href="deleteJob.jsp?jid=<%=jid%>"><strong>Delete</strong></a></div></td>
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

<div  class="paragraph editable-text" style=" text-align: center; ">Copyright &copy;&nbsp; 2010-2011 IT Spark  Corporation&nbsp; - All rights reserved </div>

</div>
</div>

            </div>
                
    </div> 

</body>
</html>