
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   
<%@page  import="java.sql.*" %>
<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table  cellpadding="0" >
    
<% try      
      {

      String uid=request.getParameter("uid");
      out.println(uid);

      String driver = config.getServletContext().getInitParameter("mysql_driver");
      String url = config.getServletContext().getInitParameter("mysql_url");
      String dbname = config.getServletContext().getInitParameter("mysql_db");
      String username = config.getServletContext().getInitParameter("mysql_username");
      String password = config.getServletContext().getInitParameter("mysql_password");

      Class.forName(driver).newInstance();

      Connection con = DriverManager.getConnection(url+dbname,username,password);
       

      

      Statement st=con.createStatement();
           Statement st2=con.createStatement(); 
           Statement st3=con.createStatement();
          
       st.executeUpdate("Delete from Details where Username='"+uid+"'");
       st2.executeUpdate("Delete from Login where Username='"+uid+"'");
       st3.executeUpdate("Delete from Experienced where Username='"+uid+"'");
       response.sendRedirect("candidate-details.jsp");
   }//try
      
    catch(Exception e)
     {
        out.println(e);        
     }
%>
    </table>
    </body>
</html>
