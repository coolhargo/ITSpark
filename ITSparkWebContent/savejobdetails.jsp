<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>IT Spark Corporation</title>
        <style type="text/css">
<!--
.style1 {
	font-size: 5px;
	font-weight: bold;
}
.style2 {
	font-size: 10pt
}
-->
        </style>
        
<link rel='stylesheet' type='text/css' href='files/main_style_company.css?1319277711' title='wsite-theme-css' />
        
        
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
          Statement st2=con.createStatement();
          
         // String stat="c";
         // st2.executeUpdate("insert into Login values('"+request.getParameter("comusername")+"','"+request.getParameter("compassword")+"','"+stat+"')");
          st.executeUpdate("insert into JobDetails values('"+request.getParameter("jobid")+"','"+request.getParameter("post")+"','"+request.getParameter("criteria")+"','"+request.getParameter("vacancies")+"','"+request.getParameter("salary")+"','"+request.getParameter("lastdate")+"')");
          st2.executeUpdate("insert into Exam values('"+request.getParameter("jobid")+"','"+request.getParameter("post")+"')");
          
           st.close();
           st2.close();
           
             }
       
        
           catch(Exception e)
                   {
                   }
        
           %>
           </p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         <p>&nbsp;</p>
         
         <font size = "5">
         <p align="center">   Data submitted successfully!!! </p> 
         </font>
    <p class="style1">&nbsp;</p>
    <p class="style1">&nbsp;</p>
    <p class="style1">&nbsp;</p>
    <p class="style1" align="center"><font color="red"><a href="company-console.jsp" class="style2">Go to Home</a></font> </p>
    <p class="style1">&nbsp;</p>
</body>
</html>
