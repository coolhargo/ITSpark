<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<meta http-equiv='X-UA-Compatible' content='IE=EmulateIE7' />
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<!--session management frwrding -->

<%--
System.out.println("\n\n\n LoggedStatus>> " +session.getAttribute("LoggedStatus"));

if(session.getAttribute("LoggedStatus")==null){
	
	System.out.println("\n\n Session has Expired ... need to relogin");
	
	
	RequestDispatcher view = request.getRequestDispatcher("re-login.jsp");
	view.forward(request, response);
}

--%>

<title>Candidate Registration - IT Spark CORPORATION</title>

<!--[if IE 7]>
      <style>
      p {
        line-height:1.5;
        padding-bottom:12px;
      }
      h1 {
        font-size:20px;
        font-weight:bold;
        color:#333;
        padding-bottom:0;
      }
      h2 {
        font-size:14px;
        font-weight:bold;
        color:#333;
        padding-bottom:0
      }
    </style>
  <![endif]-->

<link rel='stylesheet' href='http://cdn1.editmysite.com/editor/images/common/common.css?15' type='text/css' />
<link rel='stylesheet' type='text/css' href='files/main_style.css?1319278360' title='wsite-theme-css' />
<style type='text/css'>
#wsite-content div.paragraph, #wsite-content p, #wsite-content .product-description, .blog-sidebar div.paragraph, .blog-sidebar p, .wsite-form-field label, .wsite-form-field label {}
#wsite-content h2, #wsite-content .product-title, .blog-sidebar h2{}
#wsite-title{font-family:Georgia !important;font-size:28px !important;}
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
function initFlyouts(){initPublishedFlyoutMenus([{"id":"127291795384081010","title":"Home","url":"index.html"},{"id":"916005226383428698","title":"Login","url":"login.html"},{"id":"218932767564197161","title":"Candidate Registration","url":"candidate-registration.html"},{"id":"963802718424838957","title":"Company Registration","url":"company-registration.html"},{"id":"436242411310823612","title":"Contact Us","url":"contact-us.html"},{"id":"642540944578226134","title":"Discussion Forum","url":"discussion-forum.html"}],'218932767564197161',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'active',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>



    <script language="javascript">
            function setVal(sval)
            {

                if(sval=="Fresher")
                {
                    document.getElementById("expyears").disabled=true;
                    document.getElementById("company").disabled=true;
                    document.getElementById("designation").disabled=true;
                    document.getElementById("salary").disabled=true;
                    document.getElementById("comAddress").disabled=true;
                }
                else{
                    document.getElementById("expyears").disabled=false;
                    document.getElementById("company").disabled=false;
                    document.getElementById("designation").disabled=false;
                    document.getElementById("salary").disabled=false;
                    document.getElementById("comAddress").disabled=false;
                }
            }

            function check()
            {
                var a=document.form1.collegephone.value;
                var b=document.form1.mark10.value;
                var c=document.form1.mark12.value;
                var d=document.form1.markDegree.value;
                var e=document.form1.telephone.value;
                var f=document.form1.pin.value;
                var x=document.form1.name.value;
                var y=document.form1.college.value;
                var z=document.form1.password.value;

                if(document.form1.name.value=="")
                {
                    alert("Enter Your Name");
                    document.form1.name.focus();
                    return false;
                }
                else if(parseInt(x))
                {
                    alert("Enter name Correctly");
                    document.form1.name.focus();
                    return false;

                }
                if(document.form1.gender.value=="")
                {
                    alert("Enter your gender");
                    document.form1.gender.focus();
                    return false;
                }
                if(document.form1.dob.value=="")
                {
                    alert("Enter Date of Birth");
                    document.form1.dob.focus();
                    return false;
                }
                if(document.form1.college.value=="")
                {
                    alert("Enter College Name ");
                    document.form1.college.focus();
                    return false;
                }
                else if(parseInt(y))
                {
                    alert("Enter College Name correctly");
                    document.form1.college.focus();
                    return false;
                }
                if(document.form1.collegephone.value=="")
                {
                    alert("Enter collegephone number ");
                    document.form1.collegephone.focus();
                    return false;
                }
                else if(!parseInt(a))
                {
                    alert("Enter CollegePhone Integer");
                    document.form1.collegephone.focus();

                    return false;
                }
                else if(((document.form1.collegephone.value.length)<6) || ((document.form1.collegephone.value.length)>11))
                {
                    alert("Phone no: should contain atleast 6 integers ");
                    document.form1.collegephone.focus();
                    return false;
                }
                if(document.form1.collegeemail.value=="")
                {
                    alert("Enter College email ");
                    document.form1.collegeemail.focus();
                    return false;
                }
                else if(document.form1.collegeemail.value.indexOf('@')==-1)
                {
                    alert("Use @ email correctly");
                    document.form1.collegeemail.focus();
                    return false;
                }
                else if(document.form1.collegeemail.value.indexOf('.')==-1)
                {
                    alert("Use . email correctly");
                    document.form1.collegeemail.focus();
                    return false;
                }
                if(document.form1.branch.value=="")
                {
                    alert("Specify Branch");
                    document.form1.branch.focus();
                    return false;
                }
                if(document.form1.mark10.value=="")
                {
                    alert("Enter your 10th %mark")
                    document.form1.mark10.focus();
                    return false;
                }
                else if(!parseInt(b))
                {
                    alert("Not Integers used");
                    document.form1.mark10.focus();
                    return false;
                }
                else if(parseInt(b)<0||parseInt(b)>100)
                {
                    alert("Enter 10th % mark correctly  ");
                    document.form1.mark10.focus();
                    return false();
                }

                if(document.form1.mark12.value=="")
                {
                    alert("Enter 12th mark")
                    document.form1.mark12.focus();
                    return false;
                }
                else if(!parseInt(c))
                {
                    alert("Not Integers used");
                    document.form1.mark12.focus();
                    return false;
                }
                else if(parseInt(c)<0||parseInt(c)>100)
                {
                    alert("Enter 12th %mark correctly  ");
                    document.form1.mark12.focus();
                    return false();
                }

                if(document.form1.markDegree.value=="")
                {
                    alert("Enter Degree mark");
                    document.form1.markDegree.focus();
                    return false;
                }
                else if(!parseInt(d))
                {
                    alert("Enter Integer");
                    document.form1.markDegree.focus();
                    return false;
                }
                else if(parseInt(d).length<0||parseInt(d).length>100)
                {
                    alert("Enter Degree % mark correctly  ");
                    document.form1.markDegree.focus();
                    return false;
                }
                if(document.form1.degree.value=="")
                {
                    alert("Enter Degree");
                    document.form1.degree.focus();
                    return false;
                }
                if(document.form1.username.value=="")
                {
                    alert("Enter  Username");
                    document.form1.username.focus();
                    return false;
                }

                if(document.form1.password.value=="")
                {
                    alert("Enter Password");
                    document.form1.password.focus();
                    return false;
                }
                if(z.length<8)
                {
                    alert("Password should be minimum 8 characters");
                    document.form1.password.focus();
                    return false;
                }
                if(document.form1.email.value=="")
                {
                    alert("Enter email ");
                    document.form1.email.focus();
                    return false;
                }
                else if(document.form1.email.value.indexOf('@')==-1)
                {
                    alert("Use @ email correctly");
                    document.form1.email.focus();
                    return false;
                }
                else if(document.form1.email.value.indexOf('.')==-1)
                {
                    alert("Use . email correctly");
                    document.form1.email.focus();
                    return false;
                }
                if(document.form1.telephone.value=="")
                {
                    alert("Enter phone number ");
                    document.form1.telephone.focus();
                    return false;
                }
                else if(!parseInt(e))
                {
                    alert("Enter Ph Integer");
                    return false;
                }
               
                if(document.form1.address.value=="")
                {
                    alert("Enter Address");
                    document.form1.address.focus();
                    return false;
                }
                if(document.form1.state.value=="")
                {
                    alert("Specify State");
                    document.form1.address.focus();
                    return false;
                }
                if(document.form1.pin.value=="")
                {
                    alert("Enter pin number ");
                    document.form1.pin.focus();
                    return false;
                }
                else if(!parseInt(f))
                {
                    alert("Enter Integer");
                    document.form1.pin.focus();
                    return false;
                }
                else if((document.form1.pin.value.length)<6)
                {
                    alert("Pin no: should contain 6 integers ");
                    document.form1.pin.focus();
                    return false;
                }
                if(document.form1.sel_cat.value=="")
                {
                    alert("Specify Category");
                    document.form1.sel_cat.focus();
                    return false;
                }

                return true;
            }


        </script>



</head>
<body class='wsite-page-candidate-registration'>
<div id="wrapper">
    <div id="header">
        <div id="sitename"><span class='wsite-logo'><table style='height:70px'><tr><td><a href='index.jsp'><span id="wsite-title">IT Spark Corporation<br /></span></a></td></tr></table></span></div>
    </div>
    <div id="content-wrapper">
      <div id="contents-body">
        <div id="navigation">
          <div id="nav-top"></div>
          <div id="navigation-links"><ul><li id='pg127291795384081010'><a href='index.jsp'>Home</a></li><li id='pg916005226383428698'><a href='login.jsp'>Login</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-624430280190446915'><a href='admin-home.html'><span class='wsite-menu-title'>Admin Home</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-290723617235183832'><a href='company-home.html'><span class='wsite-menu-title'>Company Home</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-552960577565783351'><a href='candidate-home.html'><span class='wsite-menu-title'>Candidate Home</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='active'><a href='candidate-registration.jsp'>Candidate Registration</a></li><li id='pg963802718424838957'><a href='company-registration.jsp'>Company Registration</a></li><li id='pg436242411310823612'><a href='contact-us.jsp'>Contact Us</a></li><li id='pg642540944578226134'><a href='discussion-forum.jsp'>Discussion Forum</a></li></ul></div>
          <div id="nav-bottom"></div>
        </div>
        <div class="wsite-header"></div>
        <div id="contents"><div id='wsite-content' class='wsite-not-footer'>
<div class='wsite-not-footer'>
<div  class="paragraph editable-text" style=" text-align: left; "></div>

<div >



</div>
<h2  style=" text-align: center; ">Please Enter the following details to register</h2>
<p  style=" text-align: left; ">&nbsp;</p>
<div  class="paragraph editable-text" style=" text-align: left; ">
  <form action="savestudentdata.jsp" method="post" name="form1" id="form1" onsubmit="return check()">
                        <table  cellpadding="0" width ="115%" border="0" cellpadding="3" cellspacing="0"  align="left">
                <tr  wdth ="100%">
                                <td height="27" colspan="4" ><div align="center" class="style4">                
                                  <p>Registration Form</p>
                                  <p>&nbsp;</p>
                              </div></td>
                            </tr>
                <tr  width ="100%">
                                <td width="6%" ><span class="style5"></span></td>
                                <td width="32%"><font size="2" color="black" face ="arial" >Name&nbsp;<font color="blue"> (as in academic                                              records) </font></font></td>
                                <td width="52%"><p>
                                  <input type="text" name="name" size="30" maxlength="30" value='' />
                                </p></td>
                                <td width="10%" >&nbsp;</td>
                            </tr>
                            <tr>
                              <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Gender</font></td>
                                <td><p>
                                  <select name="gender" >
                                    <option  value="Male">Male </option>
                                    <option value="Female">Female</option>
                                  </select>
                                </p></td>
                              <td >&nbsp;</td>
                            </tr>
                <tr >
                                <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial" >Date of Birth&nbsp;</font><font color="blue">(dd/mm/yy)</font></td>
                                <td><p>
                                  <input type="text" name="dob" size="30" maxlength="30" />
                                </p></td>
                                <td >&nbsp;</td>
                            </tr>
                <tr >
                                <td ><span class="style5"></span></td>
                                <td height="29"><font size="2" color="black" face ="arial">College in which studying</font></td>
                                <td><p>
                                  <input type="text" name="college" size="30" maxlength="30" />
                                </p></td>
                                <td >&nbsp;</td>
                            </tr>
                <tr >
                                <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">College Phone</font></td>
                                <td><p>
                                  <input type="text" name="collegephone" size="30" maxlength="30" />
                                <font size="2" color="#CC0000" face ="arial">(STD-No.)</font></p></td>
                                <td>&nbsp;</td>
                            </tr>
                <tr >
                                <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">College Email</font></td>
                                <td><p>
                                  <input type="text" name="collegeemail" size="30" maxlength="50" />
                                </p></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr>
                              <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Branch of study</font></td>
                                <td><p>
                                  <select name="branch" >
                                    <option  value="">------Select--------- </option>
                                    <option  value="Applied Electro            ">Applied Electronics </option>
                                    <option  value="Applied Physics            ">Applied Physics </option>
                                    <option  value="B C A                      ">B C A </option>
                                    <option  value="Bioinformatics              ">Bioinformatics </option>
                                    <option  value="Biotechnology              ">Biotechnology </option>
                                    <option  value="Chemistry                  ">Chemistry </option>
                                    <option  value="Comp and Networking        ">Computer and Networking </option>
                                    <option  value="Comp Application           ">Computer Application </option>
                                    <option  value="Comp Application &amp; IT      ">Computer Application &amp; IT </option>
                                    <option  value="Comp Hardware Maintenance  ">Computer Hardware Maintenance </option>
                                    <option  value="Comp Information Systems   ">Computer Information Systems </option>
                                    <option  value="Comp Maintenance           ">Computer Maintenance </option>
                                    <option  value="Comp Maintenance &amp; Electro ">Computer Maintenance &amp; Electronics </option>
                                    <option  value="Comp Science               ">Computer Science </option>
                                    <option  value="Comp Science &amp; Information ">Computer Science &amp; Information </option>
                                    <option  value="Comp Technology            ">Computer Technology </option>
                                    <option  value="Electro                    ">Electronics </option>
                                    <option  value="Electro &amp; Communication    ">Electronics &amp; Communication </option>
                                    <option  value="Electro &amp; Comp Hardware    ">Electronics &amp; Computer Hardware </option>
                                    <option  value="Electro &amp; Comp Maintenance ">Electronics &amp; Computer Maintenance </option>
                                    <option  value="Industrial Chemistry       ">Industrial Chemistry </option>
                                    <option  value="Information Technology     ">Information Technology </option>
                                    <option  value="Instrumentation            ">Instrumentation </option>
                                    <option  value="Mathematics                ">Mathematics </option>
                                    <option  value="Optical Instrumentation    ">Optical Instrumentation </option>
                                    <option  value="Physics                    ">Physics </option>
                                    <option  value="Physics &amp; Electro          ">Physics &amp; Electronics </option>
                                    <option  value="Physics Instrumentation    ">Physics Instrumentation </option>
                                    <option  value="Physics with Comp App      ">Physics with Comp Applications </option>
                                    <option  value="Software Systems           ">Software Systems </option>
                                    <option  value="Software Technology        ">Software Technology </option>
                                    <option  value="Statistics                 ">Statistics </option>
                                  </select>
                                </p></td>
                              <td >&nbsp;</td>
                            </tr>
                <tr >
                                <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">% of Marks</font></td>
                                <td><table  cellpadding="0" width="220" border="0" cellpadding="0" cellspacing="0">
                <tr>
                                            <td width="72"><div align="center"><font size="1" color="black" face ="arial">X % </font></div></td>
                                            <td width="73"><div align="center"><font size="1" color="black" face ="arial">XII %</font> </div></td>
                                            <td width="75"><div align="right"><font size="1" color="black" face ="arial">B.Tech / other degree %</font></div></td>
                </tr>
                                        <tr>
                                            <td><div align="center"><font size="1" color="black" face ="arial">
                                                        <input type="text" name="mark10" size="5" maxlength="5" value='' onblur="checkDec('mark10')" />
                                            </font></div></td>
                                            <td><div align="right">
                                                    <input type="text" name="mark12" size="5" maxlength="5" value='' onblur="checkDec('mark12')" />
                                            </div></td>
                                            <td>

                                                <div align="right">
                                                    <input type="text" name="markDegree" size="5" maxlength="5" value='' onblur="checkDec('markBSC')" />
                                        </div></td></tr>
                                </table></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr>
                                <td ><p class="style5">&nbsp;</p>
                                <p class="style5">&nbsp;</p></td>
                                <td><font size="2" color="black" face ="arial"> Degree</font></td>
                                <td><p>
                                  <select name="degree">
                                    <option value ="BTech">B. Tech</option>
                                    <option value ="MTech">M. Tech</option>
                                    <option value ="MCA">MCA</option>
                                    <option value ="BCA">BCA</option>
                                    <option value ="BSc">B Sc.</option>
                                    <option value ="MSc">M Sc.</option>
                                  </select>
                                </p></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr  wdth ="100%">
                                <td><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Username</font></td>
                                <td><p>
                                  <input type="text" name="username" size="30" maxlength="30" value='' />
                                </p></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr  wdth ="100%">
                                <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Password</font></td>
                                <td><p>
                                  <input type="password" name="password" size="30" maxlength="30" value='' />
                                </p></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr  >
                                <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Email_id</font></td>
                                <td><p>
                                  <input type="text" name="email" size="30" maxlength="30" value='' />
                                </p></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr >
                                <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Telephone Number</font></td>
                                <td><p>
                                  <input type="text" name="telephone" value="" />
                                <font size="2" color="#CC0000" face ="arial">(STD-No.)</font></p></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr  >
                                <td ><span class="style5"></span></td>
                                <td><font face="Arial, helvetica" color="#000000" size="-1">Address</font></td>
                                <td><p>
                                  <input class="USS_TEXT" maxlength="30" name="address" size="40" value='' />
                                </p></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr >
                                <td><span class="style5"></span></td>
                                <td><font face="Arial, helvetica" color="#000000" size="-1">State</font></td>
                                <td><p>
                                  <select name="state">
                                    <option selected="selected" value="">Select State</option>
                                    <option value="AP">Andhra Pradesh</option>
                                    <option value="AR">ArunachalPradesh</option>
                                    <option value="AS">Assam</option>
                                    <option value="BR">Bihar</option>
                                    <option value="CH">Chandigarh</option>
                                    <option value="CG">Chattisgarh</option>
                                    <option value="DL">Delhi</option>
                                    <option value="GA">Goa</option>
                                    <option value="GJ">Gujarat</option>
                                    <option value="HR">Haryana</option>
                                    <option value="HP">Himachal Pradesh</option>
                                    <option value="JK">Jammu &amp; Kashmir</option>
                                    <option value="JH">Jharkhand</option>
                                    <option value="KA">Karnataka</option>
                                    <option value="KL">Kerala</option>
                                    <option value="MP">Madhya Pradesh</option>
                                    <option value="MH">Maharashtra</option>
                                    <option value="MN">Manipur</option>
                                    <option value="ML">Meghalaya</option>
                                    <option value="MZ">Mizoram</option>
                                    <option value="NL">Nagaland</option>
                                    <option value="OR">Orissa</option>
                                    <option value="PY">Pondicherry</option>
                                    <option value="PB">Punjab</option>
                                    <option value="RJ">Rajasthan</option>
                                    <option value="SK">Sikkim</option>
                                    <option value="TN">Tamilnadu</option>
                                    <option value="TR">Tripura</option>
                                    <option value="UA">Uttaranchal</option>
                                    <option value="UP">Uttar Pradesh</option>
                                    <option value="WB">West Bengal</option>
                                    <option value="XX">Others</option>
                                  </select>
                                </p></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr>
                                <td ><span class="style5"></span></td>
                                <td><font face="Arial, helvetica" color="#000000" size="-1">Pincode</font></td>
                                <td><p>
                                  <input class="USS_TEXT" maxlength="6" name="pin" size="6" value='' />
                                </p></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr >
                                <td> <span class="style5"></span></td>
                                <td><p><font face="Arial, helvetica" color="#000000" size="-1" >Category</font></p></td>
                                <td><p>
                                  <select name="sel_cat" id="sel_cat" onchange="setVal(this.value)">
                                    <option value="category">select a category</option>
                                    <option value="Fresher">Fresher</option>
                                    <option value="Experienced">Experienced</option>
                                  </select>
                                </p></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr >
                                <td><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Experienced Years</font></td>
                                <td><p>
                                  <input type="text" name="expyears" id="expyears" size="30" maxlength="30" />
                                </p></td>
                                <td >&nbsp;</td>
                            </tr>
                            <tr >
                                <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Company</font></td>
                                <td><p>
                                  <input type="text" name="company" id="company" size="30" maxlength="30" />
                                </p></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr >
                                <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Designation </font></td>
                                <td><p>
                                  <input type="text" name="designation" id="designation" size="30" maxlength="30" />
                                </p></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr >
                                <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Salary</font></td>
                                <td><p>
                                  <input type="text" name="salary" id="salary" size="30" maxlength="30" />
                                </p></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr >
                                <td ><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Company Address</font></td>
                                <td><input type="text" name="comAddress" id="comAddress"  size="30" maxlength="30" /></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="4" align="center" ><p>&nbsp;</p>
                                  <p><br/>
                                    <input type="reset" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="submit" value="submit" />
                                  </p>
                                  <p><br />
                                    <br />
                                </p></td>
                            </tr>
                        </table>
                </form>






  <p><br />
    </p>
  <p>&nbsp;</p>
  <p><br />
  </p>
</div>

<div ><div style="height: 20px; overflow: hidden; width: 100%;"></div>
<hr class="styled-hr" style="width:100%;"></hr>
<div style="height: 20px; overflow: hidden; width: 100%;"></div></div>

<div  class="paragraph editable-text" style=" text-align: center; ">Copyright&nbsp;&copy;&nbsp;2010-2011 IT Spark Corporation &nbsp;- All rights reserved &nbsp;<br /></div>

</div>
</div>
</div>
      </div>
      <div id="contents-bottom"></div>
    </div>
  </div>

</body>
</html>