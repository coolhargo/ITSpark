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


<title>Edit Profile - COMPANY CONSOLE</title>

 <script language="javascript">
		function check()
			{
				var a=document.form1.comname.value;
           		var c=document.form1.comemail.value;
            	var d=document.form1.comcontact.value;
            	var e=document.form1.comcutoff.value;
				if(document.form1.comname.value == "")
				{
					alert("Enter Company Name");
                	document.form1.comname.focus();
                	return false;
				}
				else if(parseInt(a))
           		 {
                alert("Company Name cannot be integer");
                document.form1.comname.focus();
                return false;
           		 }
				if(document.form1.comaddress.value == "")
				{
					alert("Enter Company Address");
                	document.form1.comaddress.focus();
                	return false;
				}
				if(document.form1.compost.value == "")
				{
					alert("Enter Post");
                	document.form1.compost.focus();
                	return false;
				}
				if(document.form1.comcriteria.value == "")
				{
					alert("Enter Criteria of the Company");
                	document.form1.comcriteria.focus();
                	return false;
				}
				if(document.form1.comemail.value == "")
				{
					alert("Enter Company Email");
                	document.form1.comemail.focus();
                	return false;
				}
				else if(c.indexOf('@')==-1)
         	   {
                alert("Enter Email Correctly");
                document.form1.comemail.focus();
                return false;
          		}
           		 else if(c.indexOf('.')==-1)
           		 {
                alert("Enter Email Correctly");
                document.form1.comemail.focus();
                return false;
          		  }
				if(document.form1.comcontact.value == "")
				{
					alert("Enter Company Contact no:");
                	document.form1.comcontact.focus();
                	return false;
				}
				else if(!parseInt(d))
            	{
                alert("Enter integer");
                document.form1.comcontact.focus();
                return false;
            	}
            	else if(((document.form1.comcontact.value.length)<6) || ((document.form1.comcontact.value.length)>11))
            	{
                alert("Phone no should contain atleast 6 integers ");
                document.form1.comcontact.focus();
                return false;
            	}
				if(document.form1.comcutoff.value == "")
				{
					alert("Enter Company Cutoff mark");
                	document.form1.comcutoff.focus();
                	return false;
				}
				 else if(!parseInt(e))
            	{
                alert("Enter integer");
                document.form1.comcutoff.focus();
                return false;
            	}
           	 	else if(parseInt(e)<0||parseInt(e)>100)
            	{
                alert("Enter cutoff in %");
                document.form1.comcutoff.focus();
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
function initFlyouts(){initPublishedFlyoutMenus([{"id":"549894428711648239","title":"Company Home","url":"index.html"},{"id":"960034452225949986","title":"Edit Profile","url":"edit-profile.html"},{"id":"753199871191594904","title":"Change Password","url":"change-password.html"},{"id":"974292240811730544","title":"Job Preview","url":"job-preview.html"},{"id":"450380173468797919","title":"Examination","url":"examination.html"},{"id":"923082235836435029","title":"Questions","url":"questions.html"},{"id":"495220106213690733","title":"Logout","url":"logout.html"}],'960034452225949986',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'active',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>
</head>
<body class='wsite-page-edit-profile'>
<div id="wrapper">
            <div class="title"><span class='wsite-logo'><table style='height:78px'><tr><td><a href='company-console.jsp'><span id="wsite-title">COMPANY CONSOLE</span></a></td></tr></table></span></div>
            
          <div id="navigation">
                <ul><li id='pg549894428711648239'><a href='company-console.jsp'>Company Home</a></li><li id='active'><a href='edit-company-profile.jsp'>Edit Profile</a></li><li id='pg753199871191594904'><a href='change-company-password.jsp'>Change Password</a></li><li id='pg974292240811730544'><a href='job-preview.jsp'>Job Preview</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-902053309496605136'><a href='job--view.jsp'><span class='wsite-menu-title'>Job : View</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-413847689802118061'><a href='job--add.jsp'><span class='wsite-menu-title'>Job : Add</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='pg450380173468797919'><a href='exam.jsp'>Examination</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-959524220811888102'><a href='exam--creation.jsp'><span class='wsite-menu-title'>Exam : Creation</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-342968665281886077' class='wsite-nav-current'><a href='exam--view.jsp'><span class='wsite-menu-title'>Exam : View</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='pg923082235836435029'><a href='questions.jsp'>Questions</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-506943639718858186'><a href='question--add.jsp'><span class='wsite-menu-title'>Question : Add</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-943111746234810061'><a href='question--view.jsp'><span class='wsite-menu-title'>Question : View</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='pg495220106213690733'><a href='logout-company.jsp'>Logout</a></li></ul>
            </div>
    
        <div id="header" class="wsite-header">
        </div>
            
            <div id="content">
                <div id='wsite-content' class='wsite-not-footer'>
<div class='wsite-not-footer'>
<h2  style=" text-align: center; ">Edit Company Profile</h2>

<div  class="paragraph editable-text" style=" text-align: left; "><br /><span></span><br />


<table  cellpadding="0" width="100%" border="0" >
           
            <tr>
                
                <td width="961"  valign="top">
                    <span class="style2">
                        <%
        //out.println(c1);
        try {

            //

            String c1 = (String) session.getAttribute("s1");


        	String driver = config.getServletContext().getInitParameter("mysql_driver");
        	String url = config.getServletContext().getInitParameter("mysql_url");
        	String dbname = config.getServletContext().getInitParameter("mysql_db");
        	String username = config.getServletContext().getInitParameter("mysql_username");
        	String password = config.getServletContext().getInitParameter("mysql_password");

        	Class.forName(driver).newInstance();

        	Connection con = DriverManager.getConnection(url+dbname,username,password);

    

            
            
            Statement st = con.createStatement();


            ResultSet rs = st.executeQuery("select CName,CAddress,CPost,CCriteria,CEmail,CContact,CCutoff from Com where CUsername='" + c1 + "'");
            String a = null;
            String b = null;
            String c = null;
            String d = null;
            String e = null;
            String f = null;
            String g = null;
            while (rs.next())
            {
                a = rs.getString("CName");
                b = rs.getString("CAddress");
                c = rs.getString("CPost");
                d = rs.getString("CCriteria");
                e = rs.getString("CEmail");
                f = rs.getString("CContact");
                g = rs.getString("CCutoff");

                        %>
                    </span>
                    <div class="Reg" align="center">
                        <form method="post" action="savecompanyedit.jsp" name="form1" onSubmit="return check()">
                            <table  cellpadding="0" width =66% border=0 cellpadding=0 cellspacing=0 bordercolor="#FFFFFF" >
                                <tr  width=100%>
                                    <td colspan="2" >
                                    <div align="center" class="style5 style1"> </div>                </td>
                                </tr>
                                <tr bgcolor="" width=100%>
                                    <td width="46%" >
                                    <div align="center"><font SIZE="2" COLOR="black" face =arial >Name</font></div></td>
                                    <td width="54%" >
                                        <div align="left">
                                            <input TYPE="text" NAME="comname" id="comname" size=30 maxlength=30 value="<%=a%>">
                                    </div>	</td>
                                </tr>
                                <tr >
                                    <td >
                                    <div align="center">
                                      <p><font SIZE="2" COLOR="black" face =arial>Address</font></p>
</div></td>
                                    <td ">
                                        <div align="left">
                                            <input NAME="comaddress" TYPE="text" id="comaddress" size=30 maxlength=50 value="<%=b%>">
                                    </div>	 </td>
                                </tr>
                                <tr >
                                    <td >
                                    <div align="center">
                                      <p><font SIZE="2" COLOR="black" face =arial>Post</font></p>
</div></td>
                                    <td >
                                        <div align="left">
                                            <input NAME="compost" TYPE="text" id="compost" size=30  maxlength=50 value="<%=c%>">
                                    </div>	 </td>
                                </tr>
                                <tr >
                                    <td >
                                    <div align="center">
                                      <p><font SIZE="2" COLOR="black" face =arial>Criteria</font></p>
</div></td>
                                    <td >
                                        <div align="left">
                                            <input NAME="comcriteria" TYPE="text" id="comcriteria" size=30  maxlength=50 value="<%=d%>">
                                    </div>	</td>
                                </tr>
                                <tr  >
                                    <td >
                                    <div align="center">
                                      <p><font SIZE="2" COLOR="black" face =arial>Email_id</font></p>
</div></td>
                                    <td >
                                        <div align="left">
                                            <input TYPE="text" NAME="comemail" id="comemail" size=30 maxlength=30 value="<%=e%>">
                                    </div>	   </td>
                                </tr>
                                <tr>
                                    <td >
                                    <div align="center">
                                      <p><font SIZE="2" COLOR="black" face =arial>Contact No:</font></p>
</div></td>
                                    <td >
                                        <div align="left">
                                            <input TYPE="text" NAME="comcontact" id="comcontact"size=20 maxlength=30 value="<%=f%>">
                                    &nbsp;                 <font SIZE="2" COLOR="#CC0000" face =arial>(STD-No.)</font>		   </div>	   </td>
                                </tr>
                                <tr  >
                                    <td >
                                    <div align="center">
                                      <p><font SIZE="2" COLOR="black" face =arial>CutOff %</font></p>
</div></td>
                                    <td >
                                        <div align="left">
                                            <input TYPE="text" NAME="comcutoff" id="comcutoff" size=30 maxlength=30 value="<%=g%>">
                                    </div>	   </td>
                                </tr>
                                <tr>
                                    <td height="49" colspan=2  >
                                        <div align="center"><br>
                                            <input type="reset" />
                                            &nbsp;&nbsp;<input TYPE="submit" value="Edit" >
                                    </div>	    </td>
                                </tr>
                            </table>
                        </form>
        </div>

                    <% }//while

        } catch (Exception e) {
            out.println(e.toString());
        }
                    %>
                </td>
            </tr>
        </table>


<span></span><br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><span></span><br /><span></span></div>

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