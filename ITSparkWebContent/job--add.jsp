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

<title>Job : Add - COMPANY CONSOLE</title>

 <script language="javascript">
            function check()
            {
				var a= document.form1.jobid.value;
				var b= document.form1.vacancies.value;
				var c= document.form1.salary.value;
				
                if(document.form1.jobid.value=="")
                {
                    alert("Enter Job Id");
                    document.form1.jobid.focus();
                    return false;
                }
				else if(!parseInt(a))
            	{
                alert("Enter integer");
                document.form1.jobid.focus();
                return false;
            	}
				
                if(document.form1.post.value=="")
                {
                    alert("Enter Post");
                    document.form1.post.focus();
                    return false;
                }
                if(document.form1.criteria.value=="")
                {
                    alert("Enter Criteria");
                    document.form1.criteria.focus();
                    return false;
                }
                if(document.form1.vacancies.value=="")
                {
                    alert("Enter no: of Vacancies available");
                    document.form1.vacancies.focus();
                    return false;
                }
				else if(!parseInt(b))
            	{
                alert("Enter integer");
                document.form1.vacancies.focus();
                return false;
            	}
                if(document.form1.salary.value=="")
                {
                    alert("Enter Salary");
                    document.form1.salary.focus();
                    return false;
                }
				else if(!parseInt(c))
            	{
                alert("Enter integer");
                document.form1.salary.focus();
                return false;
            	}
                if(document.form1.lastdate.value=="")
                {
                    alert("Enter Last Date");
                    document.form1.lastdate.focus();
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
function initFlyouts(){initPublishedFlyoutMenus([{"id":"549894428711648239","title":"Company Home","url":"index.html"},{"id":"960034452225949986","title":"Edit Profile","url":"edit-profile.html"},{"id":"753199871191594904","title":"Change Password","url":"change-password.html"},{"id":"974292240811730544","title":"Job Preview","url":"job-preview.html"},{"id":"450380173468797919","title":"Examination","url":"examination.html"},{"id":"923082235836435029","title":"Questions","url":"questions.html"},{"id":"495220106213690733","title":"Logout","url":"logout.html"}],'413847689802118061',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>
</head>
<body class='wsite-page-job-add'>
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
<h2  style=" text-align: center; ">Add Job Openings ..</h2>

<div  class="paragraph editable-text"><br /><span></span>

<table  cellpadding="0" width="100%"  >
            
            <tr>
                    <td width="961" >
                    <form name="form1" method="post" action="savejobdetails.jsp">
                        <table  cellpadding="0" width="517" height="334" border="0" align="center">
                            <tr >
                                <td height="30" colspan="2" ><div align="center" class="style1">Job Description </div></td>
                            </tr>
                            <tr>
                                <td width="160" height="26" bordercolor="#0099FF" ><div align="left" class="style2">JobID</div></td>
                                <td width="213" bordercolor="#0099FF" >
                                    <label>
                                        <input name="jobid" id="jobid"type="text" size="30">
                                </label>            </td>
                            </tr>
                            <tr>
                                <td height="26"  ><div align="left" class="style2"> Name of Post </div></td>
                                <td bordercolor="#0099FF"><input name="post" name="post" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#0099FF" ><div align="left" class="style2">Criteria</div></td>
                                <td bordercolor="#0099FF" ><input name="criteria" name="criteria" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#0099FF" ><div align="left" class="style2">No: of Vacancies </div></td>
                                <td bordercolor="#0099FF" ><input name="vacancies" name="vacancies" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#0099FF" ><div align="left" class="style2">Salary/Annum</div></td>
                                <td bordercolor="#0099FF" ><input name="salary" name="salary" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#0099FF" ><div align="left" class="style2">Last Date<font color="red">&nbsp;&nbsp;(dd/mm/yy) </font></div></td>
                                <td bordercolor="#0099FF"><input name="lastdate" name="lastdate" type="text" size="30"></td>
                            </tr>
                            <tr bordercolor="#0099FF">
                                <td height="28" colspan="2" >
                                    <div align="center">
                                        <input type="submit" name="Submit" value="Submit" onClick="return check()">
                                </div>           </td>
                            </tr>
                        </table>
                    </form>
                    <h2>&nbsp;</h2>
                </td>
            </tr>
        </table>



<br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><br /><span></span><br /><span></span><br /><span></span></div>

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