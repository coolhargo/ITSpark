<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<meta http-equiv='X-UA-Compatible' content='IE=EmulateIE7' />
<!--cache control statements-->

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




<title>Edit Profile - CANDIDATE CONSOLE</title>

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
function initFlyouts(){initPublishedFlyoutMenus([{"id":"217587437308530556","title":"Candidate Home","url":"index.html"},{"id":"843399331795564163","title":"Edit Profile","url":"edit-profile.html"},{"id":"837136730755946494","title":"Change Password","url":"change-password.html"},{"id":"637835727270969297","title":"View Company Details","url":"view-company-details.html"},{"id":"852155698204180283","title":"Examination","url":"examination.html"},{"id":"796793576388083129","title":"Logout","url":"logout.html"}],'843399331795564163',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'active',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>
</head>
<body class='wsite-page-edit-profile'>
<div id="wrapper">
      <div class="title"><span class="titletext"><span class='wsite-logo'><table style='height:35px'><tr><td><a href='candidate-console.jsp'><span id="wsite-title">CANDIDATE CONSOLE</span></a></td></tr></table></span></span></div>
            
            <div id="navigation">
                <ul><li id='pg217587437308530556'><a href='candidate-console.jsp'>Candidate Home</a></li><li id='active'><a href='edit-profile.jsp'>Edit Profile</a></li><li id='pg837136730755946494'><a href='change-candidate-password.jsp'>Change Password</a></li><li id='pg637835727270969297'><a href='view-company-details.jsp'>View Company Details</a></li><li id='pg852155698204180283'><a href='examination.jsp'>Examination</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-872014994888687758'><a href='take-exam.html'><span class='wsite-menu-title'>Take Exam</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-292754909471902168'><a href='exam-results.html'><span class='wsite-menu-title'>Exam Results</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='pg796793576388083129'><a href='logout-candidate.jsp'>Logout</a></li></ul>
            </div>
    
        <div id="header"><div class="wsite-header"></div></div>
            
            <div id="content">
                <div id='wsite-content' class='wsite-not-footer'>
<div class='wsite-not-footer'>
<h2  style=" text-align: center; ">Edit your Profile</h2>

<div  class="paragraph editable-text" style=" text-align: left; "><br /><br />
  <br />
  
 
  <% try {

                String c1 = (String)session.getAttribute("s1");
                String c2 = (String)session.getAttribute("s2");


            	String driver = config.getServletContext().getInitParameter("mysql_driver");
            	String url = config.getServletContext().getInitParameter("mysql_url");
            	String dbname = config.getServletContext().getInitParameter("mysql_db");
            	String username = config.getServletContext().getInitParameter("mysql_username");
            	String password = config.getServletContext().getInitParameter("mysql_password");

            	Class.forName(driver).newInstance();

            	Connection con = DriverManager.getConnection(url+dbname,username,password);

           
 
                
                Statement st = con.createStatement();

                ResultSet rs = st.executeQuery("select * from Details where Username='" + c1 + "'");
            
                String s1=null;
                String s2=null;
                String s3=null;
                String s4=null;
                String s5=null;
                String s6=null;
                String s7=null;
                String s8=null;
                String s9=null;
                String s10=null;
                String s11=null;
                
                while (rs.next())
                    {  
                    s1=rs.getString(2);//name
                    s2=rs.getString(5);//colg
                    s3=rs.getString(6);//colgph
                    s4=rs.getString(7);//colgemail
                    s5=rs.getString(9);//mark
                    s6=rs.getString(11);//email
                    s7=rs.getString(12);//tph
                    s8=rs.getString(13);//add
                    s9=rs.getString(14);//state
                    s10=rs.getString(15);//pin
                    s11=rs.getString(16);//category
                    
                    }
      %>
            <form method="post" action="savestudentedit.jsp" name="form1">
              <table  cellpadding="0" border=0 cellpadding=0 cellspacing=0 width =64% align=center>
              <p>&nbsp;</p>
              <tr wdth =100%>
                <td width="44%"><font SIZE="2" COLOR="black" face =arial >Name&nbsp;</font>                                     <font color="blue"> (as in academic records)</font>                </td>
	                             <td width="56%"><input TYPE="text" NAME="name" size=30 
                                       maxlength=30 value='<%=s1%>'>
                </td>
              </tr>
                           <tr >
	                             <td><font SIZE="2" COLOR="black" face =arial>College in which studying</font>                  </td>
	                             <td><input TYPE="text" NAME="college" size=30 maxlength=30 value='<%=s2%>'>                       </td>
                           </tr>
                           <tr >
	                             <td><font SIZE="2" COLOR="black" face =arial>College Phone</font>                                 </td>
	                             <td><input TYPE="text" NAME="collegephone" size=30 maxlength=30                                       value='<%=s3%>'><font SIZE="2" COLOR="#CC0000" face =arial (STD-No.)>
                                 </td>
                           </tr>
                           <tr >
	                             <td><font SIZE="2" COLOR="black" face =arial>College Email</font>                                 </td>
	                             <td><input TYPE="text" NAME="collegeemail" size=30 maxlength=50                                        value='<%=s4%>'>
                                 </td>
                           </tr>
              <tr >
                <td><font SIZE="2" COLOR="black" face =arial>% of Marks</font></td>
	                           <td>
                                 <table  cellpadding="0" border=0 cellpadding=0 cellspacing=0>
              <tr>
		                                     <td><font SIZE="1" COLOR="black" face =arial>BCA / B.Sc. %</font>                                </td>
              </tr>
		                               <tr>
                                              <td><input TYPE="text" NAME="markDegree" size=5 maxlength=5 value='<%=s5%>' onblur="checkDec('markBSC')">
                                              </td>
		                               </tr>
	                             </table>
	                           </td>
                           </tr>
              <tr  >
                <td><font SIZE="2" COLOR="black" face =arial>Email_id</font></td>
	                            <td><input TYPE="text" NAME="email" size=30 maxlength=30 value='<%=s6%>'></td>
              </tr>
                           <tr>
	                            <td><font SIZE="2" COLOR="black" face =arial>Telephone Number</font>                           </td>
	                            <td><input TYPE="text" NAME="telephone" size=4 maxlength=4 value='<%=s7%>'><input TYPE="text" NAME="phone1" value=""><font SIZE="2" COLOR="#CC0000" face =arial>(STD-No.)                       </td>
                          </tr>
                          <tr >
                             <td ><font face="Arial, helvetica" color=#000000 size=-1>Address</font>                        </td>
                             <td><input class=USS_TEXT maxLength=30 name="address" size=40 value='<%=s8%>'><b><font face="ARIAL, HELVETICA" color=red size=+2></font></b>
                             </td>
                         </tr>
                         <tr>
                             <td><font face="Arial, helvetica" color=#000000 size=-1>State</font>                             </td>
                             <td><select name=state> <option selected value='<%=s9%>'>Select State</option> 
        <option value=AP>Andhra Pradesh</option> <option value=AR>Arunachal 
        Pradesh</option> <option value=AS>Assam</option> <option 
        value=BR>Bihar</option> <option value=CH>Chandigarh</option> <option 
        value=CG>Chattisgarh</option> <option value=DL>Delhi</option> <option 
        value=GA>Goa</option> <option value=GJ>Gujarat</option> <option 
        value=HR>Haryana</option> <option value=HP>Himachal Pradesh</option> 
        <option value=JK>Jammu &amp; Kashmir</option> <option 
        value=JH>Jharkhand</option> <option value=KA>Karnataka</option> <option 
        value=KL>Kerala</option> <option value=MP>Madhya Pradesh</option> 
        <option value=MH>Maharashtra</option> <option value=MN>Manipur</option> 
        <option value=ML>Meghalaya</option> <option value=MZ>Mizoram</option> 
        <option value=NL>Nagaland</option> <option value=OR>Orissa</option> 
        <option value=PY>Pondicherry</option> <option value=PB>Punjab</option> 
        <option value=RJ>Rajasthan</option> <option value=SK>Sikkim</option> 
        <option value=TN>Tamilnadu</option> <option value=TR>Tripura</option> 
        <option value=UA>Uttaranchal</option> <option value=UP>Uttar 
        Pradesh</option> <option value=WB>West Bengal</option> <option
        value=XX>Others</option></select><br>
                           </td>
              </tr>
                       <tr>
                              <td><FONT face="Arial, helvetica" color=#000000 size=-1>Pincode</B></FONT>                       </td>
                              <td><INPUT class=USS_TEXT maxLength=6 name="pin" size=6 value='<%=s10%>'><B><FONT face="ARIAL, HELVETICA" color=red size=+2></FONT></B>
                              </td>
                       </tr>
        <%
        if(s11.equals("Fresher"))
            {
        %>
                        <tr>
                              <td><font SIZE="2" COLOR="black" face =arial>Category</font></td>
	                          <td align="left" ><input type="radio" name="cat"  value='Fresher' onclick="setVal(this);"/>Fresher
                                      <input type="radio" name="cat"  value='Experienced' onclick="setVal(this);" />Experienced
                          </td>
                        </tr>
  <%
                }
 %>
                        <tr>
	                           <td><font SIZE="2" COLOR="black" face =arial>Experienced Years</font></td>
	                           <td><input TYPE="text" NAME="expyears" size=30 maxlength=30></td>
                        </tr>
                        <tr >
	                            <td><font SIZE="2" COLOR="black" face =arial>Company</font></td>
	                            <td><input TYPE="text" NAME="company" size=30 maxlength=30></td>
                        </tr>
                        <tr >
	                         <td><font SIZE="2" COLOR="black" face =arial>Designation </font></td>
	                         <td><input TYPE="text" NAME="designation" size=30 maxlength=30></td>
                        </tr>
                        <tr >
	                         <td><font SIZE="2" COLOR="black" face =arial>Salary</font></td>
	                         <td><input TYPE="text" NAME="salary" size=30 maxlength=30></td>
                        </tr>
                       <tr >
	                      <td><font SIZE="2" COLOR="black" face =arial>Company Address</font></td>
	                      <td><input TYPE="text" NAME="comAddress" size=30 maxlength=30></td>
                      </tr>
                      <tr>
                         <td height="49" colspan=2 align="center" ><p>
                           <input TYPE="submit" value="submit">
                         </p></td>
                </tr>
</table>
</form>

 <%// }//while
  }//try 
    catch (Exception e)
            {
               out.println(e);
            }
    
    %> 

  
  
<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>

<div ><div style="height: 20px; overflow: hidden; width: 100%;"></div>
<hr class="styled-hr" style="width:100%;"></hr>
<div style="height: 10px; overflow: hidden; width: 100%;"></div></div>

<div  class="paragraph editable-text" style=" text-align: center; ">&nbsp;Copyright &copy; 2010-2011 i - World  Corporation - All rights reserved&nbsp;<br /></div>

</div>
</div>

            </div>
                <div id="footer">
                    
  </div>
    </div> 

</body>
</html>