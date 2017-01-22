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


<title>Question : View - COMPANY CONSOLE</title>

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
function initFlyouts(){initPublishedFlyoutMenus([{"id":"549894428711648239","title":"Company Home","url":"index.html"},{"id":"960034452225949986","title":"Edit Profile","url":"edit-profile.html"},{"id":"753199871191594904","title":"Change Password","url":"change-password.html"},{"id":"974292240811730544","title":"Job Preview","url":"job-preview.html"},{"id":"450380173468797919","title":"Examination","url":"examination.html"},{"id":"923082235836435029","title":"Questions","url":"questions.html"},{"id":"495220106213690733","title":"Logout","url":"logout.html"}],'943111746234810061',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>
</head>
<body class='wsite-page-question-view'>
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
<h2  style=" text-align: center; ">View Exam</h2>

<div  class="paragraph editable-text" style=" text-align: left; ">
  <p><br />
    <span></span></p>
  <table  cellpadding="0" width="100%" border="0" >
            
            <tr>
              

                    <form name="form1" action="question--view.jsp">

                        <table   cellpadding="0" width="35%" height="97" border="0" align="center">
                            <tr>
                                <td height="28" colspan="2" ><div align="center" class="style1">
                                        <p class="style6 style7">View Questions</p>
                                </div></td>
                            </tr>
                            <tr>
                                <%
        String jid = request.getParameter("jobid");
        String eid = request.getParameter("examid");
        //out.print(jid);
        try {
            if (eid == null) {

            	String driver = config.getServletContext().getInitParameter("mysql_driver");
            	String url = config.getServletContext().getInitParameter("mysql_url");
            	String dbname = config.getServletContext().getInitParameter("mysql_db");
            	String username = config.getServletContext().getInitParameter("mysql_username");
            	String password = config.getServletContext().getInitParameter("mysql_password");

            	Class.forName(driver).newInstance();

            	Connection con = DriverManager.getConnection(url+dbname,username,password);

          

            	
            	Statement st = con.createStatement();
                Statement st2 = con.createStatement();
                                %>
                          <tr>
                                    <td width="129" height="32"><span class="style15">Select an JobID </span></td>
                                    <td width="118"><label>
                                            <select name="jobid">
                                                <%      ResultSet rs2 = st2.executeQuery("select * from JobDetails");
                                        String s2 = null;
                                        // String s2=null;
                                        while (rs2.next()) {
                                            s2 = rs2.getString("jobid");
                                            //    s2=rs.getString("Post");
%>
                                                <option value="<%=s2%>"><%=s2%></option>
                                                <%}%>
                                            </select>
                                        </label>

                                </td></tr>

                             <!-->   <td width="129" height="32"><span class="style15">Select an ExamID </span></td>
                                <td width="118"><label>
                                        <select name="examid">
                                            <%      ResultSet rs = st.executeQuery("select * from Exam ");
                                        String s1 = null;
                                        // String s2=null;
                                        while (rs.next()) {
                                            s1 = rs.getString("examid");
                                            //    s2=rs.getString("Post");
%>
                                            <option value="<%=s1%>"><%=s1%></option>
                                            <%}%>
                                        </select>
                                    </label>

                            </td>
                            
                            <!-->
                            </tr>

                            <tr>
                                <td><div align="center">
                                        <input type="submit" value="Show Details">
                                </div></td>
                            </tr>
                        </table>
                    </form>

                    <p>
                        <%
                                    } else {
                        %>
                    </p>
                    <table  cellpadding="0" width="99%" height="54" border="0.5" align="center">

                        <tr>
                            <td width="149" bordercolor="#666699" ><div align="center"><span class="style10">Question No: </span></div></td>
                            <td width="149" height="23" bordercolor="#666699" ><div align="center" class="style10"><span class="style11">Question</span></div></td>
                            <td width="74" bordercolor="#666699" ><div align="center" class="style10"><span class="style11">Option 1</span></div></td>
                            <td width="85" bordercolor="#666699" ><div align="center" class="style10"><span class="style11">Option 2</span></div></td>
                            <td width="75" bordercolor="#666699" ><div align="center" class="style10"><span class="style11">Option 3</span></div></td>
                            <td width="78" bordercolor="#666699" ><div align="center" class="style10"><span class="style11">Option 4</span></div></td>
                            <td width="80" bordercolor="#666699" ><div align="center" class="style10"><span class="style11">Answer</span></div></td>
                            <td width="77" bordercolor="#666699" ><div align="center" class="style10"><span class="style11">Delete</span></div></td>
                        </tr>
                        <%


                    	String driver = config.getServletContext().getInitParameter("mysql_driver");
                    	String url = config.getServletContext().getInitParameter("mysql_url");
                    	String dbname = config.getServletContext().getInitParameter("mysql_db");
                    	String username = config.getServletContext().getInitParameter("mysql_username");
                    	String password = config.getServletContext().getInitParameter("mysql_password");

                    	Class.forName(driver).newInstance();

                    	Connection con = DriverManager.getConnection(url+dbname,username,password);

      
				
				
				
                                        Statement st3 = con.createStatement();
                                        // Statement st2=con.createStatement();

                                        ResultSet rs3 = st3.executeQuery("select QuestionNo,Question,Option1,Option2,Option3,Option4,Answer from Question where ExamID='" +
                                                eid + "' and JobID='" + jid + "'");
                                        //  String s2=null;
                                        while (rs3.next()) {
                                            String qno = rs3.getString("QuestionNo");
                                            String ques = rs3.getString("Question");
                                            String op1 = rs3.getString("Option1");
                                            String op2 = rs3.getString("Option2");
                                            String op3 = rs3.getString("Option3");
                                            String op4 = rs3.getString("Option4");
                                            String ans = rs3.getString("Answer");



                        %>
                        <tr>
                          <td bordercolor="#666699" ><%=qno%></td>
                          <td height="23" bordercolor="#666699" ><div align="center">
                                    <%=ques%>
                            </div></td>
                          <td height="23" bordercolor="#666699" ><div align="center">
                                    <%=op1%>
                            </div></td>
                          <td height="23" bordercolor="#666699" ><div align="center">
                                    <%=op2%>
                            </div></td>
                          <td height="23" bordercolor="#666699" ><div align="center">
                                    <%=op3%>
                            </div></td>
                          <td height="23" bordercolor="#666699" ><div align="center">
                                    <%=op4%>
                            </div></td>
                          <td height="23" bordercolor="#666699" ><div align="center">
                                    <%=ans%>
                            </div></td>
                          <td height="23" bordercolor="#666699" ><div align="center"><a href="DeleteQues.jsp?qno=<%=qno%>&jid=<%=jid%>&eid=<%=eid%>" >Delete</a></div></td>
                        </tr>

                        <%
                }
                con.close();
            }

        } catch (Exception e) {
            out.println(e);
        }
                        %>
                    </table>
                </td>
            </tr>
        </table>
   
        

  
          <p><br />
            <span></span><br />
                
            <span></span><br />
            <span></span><br />
            <span></span><br />
            <span></span><br />
            <span></span><br />
            <span></span><br />
            <span></span>
            </p>
          </p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
</div>

<div ><div style="height: 20px; overflow: hidden; width: 100%;"></div>
<hr class="styled-hr" style="width:100%;"></hr>
<div style="height: 20px; overflow: hidden; width: 100%;"></div></div>

<div  class="paragraph editable-text" style=" text-align: center; ">&nbsp;Copyright &copy; 2010-2011 IT Spark Corporation - All rights reserved&nbsp;</div>

</div>
</div>

            </div>
               
    </div> 

</body>
</html>