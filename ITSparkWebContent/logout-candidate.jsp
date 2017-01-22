<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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


<title>Logout - CANDIDATE CONSOLE</title>

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
function initFlyouts(){initPublishedFlyoutMenus([{"id":"217587437308530556","title":"Candidate Home","url":"index.html"},{"id":"843399331795564163","title":"Edit Profile","url":"edit-profile.html"},{"id":"837136730755946494","title":"Change Password","url":"change-password.html"},{"id":"637835727270969297","title":"View Company Details","url":"view-company-details.html"},{"id":"852155698204180283","title":"Examination","url":"examination.html"},{"id":"796793576388083129","title":"Logout","url":"logout.html"}],'796793576388083129',"<li class='wsite-nav-more'><a href='#'>more...<\/a><\/li>",'active',false)}
if (Prototype.Browser.IE) window.onload=initFlyouts; else document.observe('dom:loaded', initFlyouts);
//-->
</script>
</head>
<body class='wsite-page-logout'>
<div id="wrapper">
      <div class="title"><span class="titletext"><span class='wsite-logo'><table style='height:35px'><tr><td><a href='candidate-console.jsp'><span id="wsite-title">CANDIDATE CONSOLE</span></a></td></tr></table></span></span></div>
            
            <div id="navigation">
                <ul><li id='pg217587437308530556'><a href='candidate-console.jsp'>Candidate Home</a></li><li id='pg843399331795564163'><a href='edit-profile.jsp'>Edit Profile</a></li><li id='pg837136730755946494'><a href='change-candidate-password.jsp'>Change Password</a></li><li id='pg637835727270969297'><a href='view-company-details.jsp'>View Company Details</a></li><li id='pg852155698204180283'><a href='examination.jsp'>Examination</a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'><li id='wsite-nav-872014994888687758'><a href='take-exam.html'><span class='wsite-menu-title'>Take Exam</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li><li id='wsite-nav-292754909471902168'><a href='exam-results.html'><span class='wsite-menu-title'>Exam Results</span></a><div class='wsite-menu-wrap' style='display:none'><ul class='wsite-menu'></ul></div></li></ul></div></li><li id='active'><a href='logout-candidate.jsp'>Logout</a></li></ul>
            </div>
    
        <div id="header"><div class="wsite-header"></div></div>
            
            <div id="content">
                <div id='wsite-content' class='wsite-not-footer'>
<div class='wsite-not-footer'>
<div  class="paragraph editable-text" style=" text-align: left; "><br />Log out to Main Home from here .. <br /><br /><br /><br /><br /></div>

<div ><div class="wsite-image-border-none " style="padding-top:10px;padding-bottom:10px;margin-left:0;margin-right:0;text-align:center">
<a href='sign_out.jsp'>
<img src="uploads/9/3/8/0/9380668/8895823.png?185" alt="Picture" style="width:auto;max-width:100%" />
</a>
<div style="display:block;font-size:90%">
  <p>Back to Main Home</p>
  <p>&nbsp;</p>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div></div>

<div  class="paragraph editable-text" style=" text-align: left; ">&nbsp;<br /><br /><br /></div>

<div ><div style="height: 20px; overflow: hidden; width: 100%;"></div>
<hr class="styled-hr" style="width:100%;"></hr>
<div style="height: 20px; overflow: hidden; width: 100%;"></div></div>

<div  class="paragraph editable-text" style=" text-align: center; ">&nbsp;Copyright &copy; 2010-2011 i - World  Corporation - All rights reserved&nbsp;<br /></div>

</div>
</div>

            </div>
                <div id="footer">
                   
                </div>
    </div> 

</body>
</html>