<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;" session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% try
          {
           String c=(String)session.getAttribute("CUsername");



           String driver = config.getServletContext().getInitParameter("mysql_driver");
           String url = config.getServletContext().getInitParameter("mysql_url");
           String dbname = config.getServletContext().getInitParameter("mysql_db");
           String username = config.getServletContext().getInitParameter("mysql_username");
           String password = config.getServletContext().getInitParameter("mysql_password");

           Class.forName(driver).newInstance();

           Connection con = DriverManager.getConnection(url+dbname,username,password);
         

           
           
           Statement st=con.createStatement();
          // Statement st2=con.createStatement();                    
           st.executeQuery("Delete from Com where CUsername='"+c+"'");
          // st2.executeQuery("Delete from Login");
           }
        
           catch(Exception e)
                   {
                   }
        
        %>
    </body>
</html>
