
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page  import="java.sql.*" %>
<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>i - World  Corporation</title>
    </head>
    
    <link rel='stylesheet' type='text/css' href='files/main_style_company.css?1319277711' title='wsite-theme-css' />
    <body>
        <table>
    
<% try      
      {

      String jid=request.getParameter("jid");
      out.println(jid);


      String driver = config.getServletContext().getInitParameter("mysql_driver");
      String url = config.getServletContext().getInitParameter("mysql_url");
      String dbname = config.getServletContext().getInitParameter("mysql_db");
      String username = config.getServletContext().getInitParameter("mysql_username");
      String password = config.getServletContext().getInitParameter("mysql_password");

      Class.forName(driver).newInstance();

      Connection con = DriverManager.getConnection(url+dbname,username,password);
          

      
      Statement st=con.createStatement();
     st.executeUpdate("Delete from JobDetails where JobId='"+jid+"'");
       response.sendRedirect("job--view.jsp");
   }//try
      
    catch(Exception e)
     {
        out.println(e);        
     }
%>
    </table>
    </body>
</html>
