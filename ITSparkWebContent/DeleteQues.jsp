<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<%@page  import="java.sql.*" %>
<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IT Spark  Corporation</title>
    </head>
    <body>
        <table>
    
<% try      
      {

      String qno=request.getParameter("qno");
       String jid=request.getParameter("jid");
        String eid=request.getParameter("eid");
      out.println(qno);
           
      String driver = config.getServletContext().getInitParameter("mysql_driver");
      String url = config.getServletContext().getInitParameter("mysql_url");
      String dbname = config.getServletContext().getInitParameter("mysql_db");
      String username = config.getServletContext().getInitParameter("mysql_username");
      String password = config.getServletContext().getInitParameter("mysql_password");

      Class.forName(driver).newInstance();

      Connection con = DriverManager.getConnection(url+dbname,username,password);
          

      
      Statement st=con.createStatement();
     st.executeUpdate("Delete from Question where QuestionNo="+qno+" and ExamID='" + eid +
             "' and JobID='" + jid + "'");
       response.sendRedirect("ViewQues.jsp?jobid=" + jid + "&examid=" + eid);
   }//try
      
    catch(Exception e)
     {
        out.println(e);        
     }
%>
    </table>
    </body>
</html>
