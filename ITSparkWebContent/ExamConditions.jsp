<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.io.*,java.sql.*;"session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




<html>

 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Online Exam</title>

<%
        
        Statement st = null, st2 = null;
        ResultSet rs = null;
        String sql = null;
        try {

        	String driver = config.getServletContext().getInitParameter("mysql_driver");
        	String url = config.getServletContext().getInitParameter("mysql_url");
        	String dbname = config.getServletContext().getInitParameter("mysql_db");
        	String username = config.getServletContext().getInitParameter("mysql_username");
        	String password = config.getServletContext().getInitParameter("mysql_password");

        	Class.forName(driver).newInstance();

        	Connection con = DriverManager.getConnection(url+dbname,username,password);


        	
        	
        	st = con.createStatement();
        } catch (Exception ex) {
            out.println("Error: " + ex.toString());
        }
%>
<link rel='stylesheet' type='text/css' href='files/main_style_candidate.css?1319277332' title='wsite-theme-css' />

</head>
    <body style="margin:0px" bgcolor="#FFFFFF">
    </br>
    
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <table  cellpadding="0" width="100%" border="0" align ="center">
           
            <tr>
               
                <td width="961"  valign="top"><table  cellpadding="0" width="967" height="788" border="0" align="center">
                  <tr>
                    <td width="957" height="34"><div align="center">
                      <p class="style15"  size="3" ><strong>Online Exam </strong></p>
<p class="style15">&nbsp;</p>
                    </div></td>
                  </tr>
                  <tr>
                    <td height="703" valign="top"><table  cellpadding="0" width="565" border="0" align="center">
                      <tr>
                        <td width="573" height="123" valign="top" ><div align="justify" class="style17"><span class="style18"> The duration of the exam is 10 minutes. There is no order to answer a question.You may use Next as well as Previous button to get a question to answer. </span></div></td>
                      </tr>
                      <tr>
                        <td valign="top"><form name="form1" method="post" action="ExamConduct.jsp">
                          <label>
                            <div align="center">
                              <input name="Submit" type="submit" class="style18" value="Start Exam">
                          </div>
                          </label>
                        </form>
                        </td>
                      </tr>
                    </table>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p align="center">&nbsp;</p>
                    <p align="center"><img src="Java_Powered.gif" alt="" width="141" height="269" /></p></td>
                  </tr>
                  <tr>
                    <td height="41">&nbsp;</td>
                  </tr>
                </table></td>
            </tr>
        </table>
    </body>
</html>
