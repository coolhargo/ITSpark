<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<%@page  import="java.sql.*" %>
<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
       <title>IT Spark Corporation</title>
       
       <link rel='stylesheet' type='text/css' href='files/main_style_company.css?1319277711' title='wsite-theme-css' />
       </head>
    <body>
        <table cellpadding="0" >
            <% try {
            String jid = request.getParameter("jobid");


        	String driver = config.getServletContext().getInitParameter("mysql_driver");
        	String url = config.getServletContext().getInitParameter("mysql_url");
        	String dbname = config.getServletContext().getInitParameter("mysql_db");
        	String username = config.getServletContext().getInitParameter("mysql_username");
        	String password = config.getServletContext().getInitParameter("mysql_password");

        	Class.forName(driver).newInstance();

        	Connection con = DriverManager.getConnection(url+dbname,username,password);


            //step 3: Get the statement 
          
            
            Statement st = con.createStatement();
            st.executeUpdate("Update JobDetails set Post='" + request.getParameter("post") + "',Criteria='" + request.getParameter("criteria") + "',NoOfVacancies='" + request.getParameter("vacancies") + "',Salary='" + request.getParameter("salary") + "',LastDate='" + request.getParameter("lastdate") + "' where JobId='" + jid + "'");
            %>
            
          <%   } catch (Exception e) {
            out.println(e);
        }

            %>
        </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p> 
        <p align="center"><font  size="5"> You have Successfully Edited!!</font></p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
<p align="center"><a href="company-console.jsp"><strong>Go to Home</strong></a> </p>
    </body>
</html>
