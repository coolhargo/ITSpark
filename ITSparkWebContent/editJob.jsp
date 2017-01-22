<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>IT Spark  Corporation</title>
        


<link rel='stylesheet' type='text/css' href='files/main_style_company.css?1319277711' title='wsite-theme-css' />


        
</head>
<body style="margin:0px" >
        <table  cellpadding="0" width="100%" border="0" >
          <tr>
            <td height="107" colspan="2"><p>&nbsp;
              </p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>
                <!-- jsp:include page="CompanyHeader.jsp"/-->
            </p></td>
          </tr>
          <tr>
            <td width="1" height="512"><!-- jsp:include page="Companymenu.html"/--></td>
            <td width="961"  valign="top"><br><br>
                <% try {

                String jid =request.getParameter("jid");
                String jpost =request.getParameter("post");
                String jcriteria =request.getParameter("criteria");
                String jvac =request.getParameter("vacancies");
                String jsal =request.getParameter("salary");
                String jdate =request.getParameter("lastdate");



            	String driver = config.getServletContext().getInitParameter("mysql_driver");
            	String url = config.getServletContext().getInitParameter("mysql_url");
            	String dbname = config.getServletContext().getInitParameter("mysql_db");
            	String username = config.getServletContext().getInitParameter("mysql_username");
            	String password = config.getServletContext().getInitParameter("mysql_password");

            	Class.forName(driver).newInstance();

            	Connection con = DriverManager.getConnection(url+dbname,username,password);


                
                
                Statement st = con.createStatement();  
                ResultSet rs = st.executeQuery("select * from JobDetails where JobId='" + jid + "'");
                while (rs.next())
                    {  
                    jid=rs.getString("JobId");
                    jpost=rs.getString("Post");
                    jcriteria=rs.getString("Criteria");
                    jvac=rs.getString("NoOfVacancies");
                    jsal=rs.getString("Salary");
                    jdate=rs.getString("LastDate");
      
                    %>
                <form method="post" action="savejobedit.jsp">
                  <table  cellpadding="0" width="531" height="276" border="0" align="center" bordercolor="#999900" >
                
  <tr bordercolor="#999933" >
    <td height="27" colspan="2"><div align="center"><span class="style1">Job Details</span></div></td>
    </tr>
  <tr>
    <td width="207" height="35" bordercolor="#999933"><span class="style13">Job ID</span></td>
    <td width="314" bordercolor="#996600" ><input name="jobid" type="text" id="jobid" size="35" maxlength="25" value="<%=jid%>"></td>
  </tr>
  <tr>
    <td height="34" bordercolor="#999933" ><span class="style13">Post</span></td>
    <td bordercolor="#996600" ><input name="post" type="text" id="post"  value="<%=jpost%>" size="35"></td>
  </tr>
  <tr>
    <td height="34" bordercolor="#999933" ><span class="style13">Criteria</span></td>
    <td bordercolor="#996600" ><input name="criteria" type="text" id="criteria" value="<%=jcriteria%>" size="35" maxlength="25"></td>
  </tr>
  <tr>
    <td height="31" bordercolor="#999933" ><span class="style13">Vacancies</span></td>
    <td bordercolor="#996600" ><input name="vacancies" type="text" id="vacancies" size="35" maxlength="25" value="<%=jvac%>"></td>
  </tr>
  <tr>
    <td height="32" bordercolor="#999933" ><span class="style13">Salary/Annum</span></td>
    <td bordercolor="#996600" ><input name="salary" type="text" id="salary" value="<%=jsal%>" size="35" maxlength="25"></td>
  </tr>
  <tr>
    <td height="34" bordercolor="#999933" ><span class="style13">LastDate</span></td>
    <td bordercolor="#996600" ><input name="lastdate" type="text" id="lastdate" value="<%=jdate%>" size="35" maxlength="25"></td>
  </tr>
  <tr bordercolor="#999933" >
    <td height="31" colspan="2"><div align="center">
      <input type="submit" name="button" id="button" value="Edit Details">
    </div></td>
    </tr>
</table>
</form>	
<% }//while
     
}
      catch(Exception e)
      {
         out.println(e); 
      }
%>
            </td>
          </tr>
        </table>  
    </body>
</html>
