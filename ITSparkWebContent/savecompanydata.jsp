

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>IT Spark World Corporation</title>
    </head>
    
    <link rel='stylesheet' type='text/css' href='files/main_style.css?1319278360' title='wsite-theme-css' />
    
    <body >
        <p>
          <% try
          {
         
          	String driver = config.getServletContext().getInitParameter("mysql_driver");
          	String url = config.getServletContext().getInitParameter("mysql_url");
          	String dbname = config.getServletContext().getInitParameter("mysql_db");
          	String username = config.getServletContext().getInitParameter("mysql_username");
          	String password = config.getServletContext().getInitParameter("mysql_password");

          	Class.forName(driver).newInstance();

          	Connection con = DriverManager.getConnection(url+dbname,username,password);

         

            Statement st=con.createStatement();
          Statement st2=con.createStatement();
          
          String stat="c";
          st2.executeUpdate("insert into Login values('"+request.getParameter("comusername")+"','"+request.getParameter("compassword")+"','"+stat+"')");
          st.executeUpdate("insert into Com(CName,CAddress,CPost,CCriteria,CUsername,CEmail,CContact,CCutoff) values('"+request.getParameter("comname")+"','"+request.getParameter("comaddress")+"','"+request.getParameter("compost")+"','"+request.getParameter("comcriteria")+"','"+request.getParameter("comusername")+"','"+request.getParameter("comemail")+"','"+request.getParameter("comcontact")+"','"+request.getParameter("comcutoff")+"')");
          st.close();
          st2.close();
          
             }
       
        
           catch(Exception e)
                   {
               out.println(e);
                   }
        
           %>
        </p>
        <p>&nbsp;</p>
        <p align = "center">&nbsp;          </p>
        <p align = "center"><font color="grey" size="5"  ><br>
          Registration Successfull!!!
          <br>
          Your account's Activation is under process .. 
          <br>
          
          
        </font></p>
        <font color="grey" size="4">
        <p align = "center" ><a href="login.jsp">Go Forward</a></p>
        </font>
    </body>
</html>
