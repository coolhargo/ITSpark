<html>
<head>

<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<base target="_top">
<SCRIPT LANGUAGE="javascript">
history.go(1);
 <%    if(session!=null) {
	
	 //means when user has logged out
	 session.setAttribute("LoggedStatus", false);

	 System.out.println("\n\n\n finalLoggedStatus >> " +session.getAttribute("LoggedStatus"));

	 
	 //making session invalid
	 session.invalidate();

     System.out.println("\n Session is now invalid..coz logging out");


}    
 
 
 
 %>  
window.location="login3.jsp";
</script>
</head>

</html>

	

	

