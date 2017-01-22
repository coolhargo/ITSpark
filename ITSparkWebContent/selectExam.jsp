<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.io.*,java.sql.*;"session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
 <link rel='stylesheet' type='text/css' href='files/main_style_candidate.css?1319277332' title='wsite-theme-css' />

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IT Spark Corporation</title>
    </head>
    <body>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table  cellpadding="0" width="100%" height="369" align="center" border="0">
<tr>
            
      </tr>
          
            <td width="99%" align="center">
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
           
      
%>

<table cellpadding="0" >
<form name="examSelection" action ="examSel.jsp">
jobid<select name="selJobID">
<%ResultSet rs=st.executeQuery("select * from JobDetails");
String s1=new String();
             while(rs.next())
{s1=rs.getString("Post");
%>

<option value=<%=s1%>> <%=s1%></option>
<%
}//while 1
%>


</select><br><br>
Examid<select name="selExam">
<%
ResultSet rs1=st.executeQuery("select * from Exam where Post='"+s1+"'");
while(rs1.next())
{
%>

<option value=<%=rs1.getString("ExamID")%>> <%=rs1.getString("ExamName")%> </option>
<%
}//while 2

             } //try    
           catch(Exception e)
                   {
               out.println(e);
                   }
           %>
</select>
<input type="submit" value="OK">
</form>
</table>
</td>
  </tr>
        </table>
</body>
</html>
