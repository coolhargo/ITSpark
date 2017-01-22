
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.io.*,java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>IT Spark Corporation</title>
          
          <link rel='stylesheet' type='text/css' href='files/main_style.css?1319278360' title='wsite-theme-css' />
    </head>
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
           Statement st3=con.createStatement();
           String status="s";
           st2.executeUpdate("insert into Login values('"+request.getParameter("username")+"','"+request.getParameter("password")+"','"+status+"')");
           st.executeUpdate("insert into Details values('"+request.getParameter("username")+"','"+request.getParameter("name")+"','"+request.getParameter("gender")+"','"+request.getParameter("dob")+"','"+request.getParameter("college")+"','"+request.getParameter("collegephone")+"','"+request.getParameter("collegeemail")+"','"+request.getParameter("branch")+"','"+request.getParameter("markDegree")+"','"+request.getParameter("degree")+"','"+request.getParameter("email")+"','"+request.getParameter("telephone")+"','"+request.getParameter("address")+"','"+request.getParameter("state")+"','"+request.getParameter("pin")+"','"+request.getParameter("sel_cat")+"')");
		   if(request.getParameter("sel_cat").equals("Experienced"))
		   {
           st3.executeUpdate("insert into Experienced values('"+request.getParameter("username")+"','"+request.getParameter("expyears")+"','"+request.getParameter("company")+"','"+request.getParameter("designation")+"','"+request.getParameter("salary")+"','"+request.getParameter("comAddress")+"')");
		   }
           st.close();
           st2.close();
           st3.close();
           }
        
           catch(Exception e)
                   {
               out.println(e);
                   }
        
%>
        </p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p align = "center">
        
        <font color="grey" size="5"  ><br>
         
                    You are registered successfully!!!
        </font>
        
       </font></p>
        <p>&nbsp;</p>
        <p><font color="Grey" size="5"><br>
        </p>
<p></p>
<font color="grey" size="4">
        <p align = "center" >
 <a href="login.jsp"> Move forward now >  Main Home </a> </p>  
</font>


</body>
</html>

