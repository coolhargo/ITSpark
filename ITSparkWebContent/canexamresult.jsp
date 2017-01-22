
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
    
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        
        <title>i - World Corporation</title>
        <link rel='stylesheet' type='text/css' href='files/main_style_candidate.css?1319277332' title='wsite-theme-css' />

                
    </head>
    <body>
        <table  cellpadding="0" width="104%" height="628" border="0">
          
            <tr>
                <td width="1"  height="597"><!-- jsp:include page="Candidatemenu.jsp"/--> </td>
                <td width="738" valign="top">

                    <p>
                      <%
        String uname = session.getAttribute("s1").toString();
        String sql = "";
        
        Statement st;
        ResultSet rs = null;
        // out.println(uname);
        try {
            sql = "select * from Result where studentID='" + uname + "'";

            String driver = config.getServletContext().getInitParameter("mysql_driver");
            String url = config.getServletContext().getInitParameter("mysql_url");
            String dbname = config.getServletContext().getInitParameter("mysql_db");
            String username = config.getServletContext().getInitParameter("mysql_username");
            String password = config.getServletContext().getInitParameter("mysql_password");

            Class.forName(driver).newInstance();

            Connection con = DriverManager.getConnection(url+dbname,username,password);


            
            
            st = con.createStatement();
            rs = st.executeQuery(sql);
                    %>
                    </p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                  <p>&nbsp; </p>
                    <table  cellpadding="0" width="546"  align="center">
                        <tr >
                            <td ><div align="center"><strong>Exam ID</strong></div></td>
                            <td ><div align="center"><strong>Job ID</strong></div></td>
                            <td ><div align="center"><strong>Mark</strong></div></td>
                        </tr>
                        <%
                        while (rs.next()) {
                            out.println("<tr>");
                            out.println("<td>" + rs.getString(2) + "</td>");
                            out.println("<td>" + rs.getString(3) + "</td>");
                            out.println("<td>" + rs.getString(4) + "</td>");

                            out.println("</tr>");
                        }%>
                    </table>
                    <p>
                      <%

        } catch (Exception ex) {
            out.println(ex.toString());
        }
                    %>
                </p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p></td>
                
                
              
            </tr>
        </table>
    </body>
</html>
