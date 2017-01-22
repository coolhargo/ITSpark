<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<%@page import="java.io.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>

<link rel='stylesheet' type='text/css' href='files/main_style_company.css?1319277711' title='wsite-theme-css' />

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IT Spark corporation</title>
    </head>
    <body background="wpa552ad7e[1].png">
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
       //   Statement st2=con.createStatement();
          
         // String stat="c";
         // st2.executeUpdate("insert into Login values('"+request.getParameter("comusername")+"','"+request.getParameter("compassword")+"','"+stat+"')");
          st.executeUpdate("insert into Question values('"+request.getParameter("jobid")+"','"+request.getParameter("examid")+"','"+request.getParameter("Qno")+"','"+request.getParameter("question")+"','"+request.getParameter("option1")+"','"+request.getParameter("option2")+"','"+request.getParameter("option3")+"','"+request.getParameter("option4")+"','"+request.getParameter("answer")+"')");
          
          
           st.close();
          // st2.close();
           
             }
       
        
           catch(Exception e)
                   {
                   }
        
           %>
           <p>
           <p>
           <p>                                 
           <p align="center" > <font  size="4">
              Questions are added!!!
    </font></p><br>
         <p>&nbsp;</p>
        <p align="center"><a href="question--add.jsp"><strong>Go Back</strong></a> </p>
    </body>
</html>
