
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.io.*,java.sql.*;"session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>i - World Corporation</title>
    </head>
    
<link rel='stylesheet' type='text/css' href='files/main_style_company.css?1319277711' title='wsite-theme-css' />
    
    
    <body background="wpa552ad7e[1].png">
    <p>
      <% try
          {
        //  HttpSession s1=request.getSession();
            String a=(String)session.getAttribute("jobid");
            String b=(String)session.getAttribute("post");                    
           // response.sendRedirect("ExamCreation.jsp");
           


           
                    String driver = config.getServletContext().getInitParameter("mysql_driver");
                	String url = config.getServletContext().getInitParameter("mysql_url");
                	String dbname = config.getServletContext().getInitParameter("mysql_db");
                	String username = config.getServletContext().getInitParameter("mysql_username");
                	String password = config.getServletContext().getInitParameter("mysql_password");

                	Class.forName(driver).newInstance();

                	Connection con = DriverManager.getConnection(url+dbname,username,password);

  

           Statement st=con.createStatement();
           st.executeUpdate("insert into Exam values('"+a+"','"+b+"','"+request.getParameter("examid")+"','"+request.getParameter("examname")+"','"+request.getParameter("cutoff")+"')");
    //  out.println("insert into Exam values('"+a+"','"+b+"','"+request.getParameter("examid")+"','"+request.getParameter("examname")+"','"+request.getParameter("cutoff")+"')");
   //   out.println("test");
      //     st.close();
          // st2.close();
           
             }
       
        
           catch(Exception e)
                   {
               out.println(e);
                   }
        
           %>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp; </p>
           <p align="center"> <font  size="5"><br>
               Data submitted successfully!!
               <br>
    </font></p>
          <p>&nbsp;</p>
        <p align="center"><a href="company-console.jsp"><strong>Go to Home</strong></a> </p>
    </body>
</html>
