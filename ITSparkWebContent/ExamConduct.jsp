<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.io.*,java.sql.*;"session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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




    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Exam</title>
        
        <link rel='stylesheet' type='text/css' href='files/main_style_candidate.css?1319277332' title='wsite-theme-css' />
        
    </head>
    <body style="margin:0px" >
    </br>
        <p>&nbsp;</p>
        <div align="center"></div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <table  cellpadding="0" width="101%" border="0" >
            
            <tr>
                
                <td width="616"  valign="top">
                    <table  cellpadding="0" width="304" height="243" border="0" align="center">
                        <tr>
                            <td colspan="2"><div align="center" class="style1">
                                    <p>Select Exam for you desired company<br />
                                    </p>
                                    <p>&nbsp;</p>
                            </div></td>
                        </tr>
                        <tr>


                        <%
        String jid = request.getParameter("jobid");
        try {
            if (jid == null) {
                        %>
                        <form name="exam1" action ="ExamConduct.jsp">
                            <td width="167" height="42"><span class="style7">Select a JobID </span></td>
                            <td width="112">

                                <select name="jobid">
                                    <%
                                rs = st.executeQuery("select * from JobDetails");
                                String s1 = null;
                                // String s2=null;
                                while (rs.next()) {
                                    s1 = rs.getString("JobId");
                                    //    s2=rs.getString("Post");
                                    out.println("<option value='" + s1 + "'>" + s1 + "</option>");
                                }//while

                                    %>
                                </select>
                            </td>
                            <tr><td> <div align="center">
                                        <input type="submit" value="OK ">
                            </div></td></tr>
                        </form>
                        <%
                            }//if
                            else {
                                jid = request.getParameter("jobid");
                                sql = "select Post from Exam where JobID='" + jid + "'";
                                rs = st.executeQuery(sql);
                                String post = null;
                                if (rs.next()) {
                                    post = rs.getString("Post");
                                }
                                rs.close();


                        %> <form name="examSelection" action ="11.jsp">
                            <tr>
                                <td><span class="style7">Post Name/opening :</span></td>
                                <td><%=post%></td>
                                <td width="11">&nbsp;</td>
                            </tr>

                            <tr>
                                <td height="30" class="style7">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="30" class="style7">Select an Exam</td>
                                <td><select name="examid">

                                        <%
                                sql = "select ExamID,ExamName from Exam where JobID='" + jid + "'";
                                rs = st.executeQuery(sql);
                                String exname = null;
                                String exid = null;
                                while (rs.next()) {
                                    exid = rs.getString("ExamID");
                                    exname = rs.getString("ExamName");
                                    out.println("<option value='" + exid + "'>" + exname + "</option>");
                                }
                                        %>
                                    </select>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style7"><div align="center">
                                        <input type="submit" value="OK ">
                                </div></td>
                            </tr>
                        </form>
                    </table>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p align="center">NOTE : A JobID coressponds to various openings within a company... underlying which you are offered to decide the exam for a specific post.<br />
                      <br />
                      On clearing your exam, your marks will be delivered, and candidates with highest score will be contacted by company HRs (in person).
                    </p>
                    <p align="center">&nbsp;</p>
<p align="center"><img src="await.gif" alt="" width="319" height="305" /></p>
                    <p align="center">&nbsp;</p>
                    <p>&nbsp;</p>

                    <%

                session.setAttribute("jobid", request.getParameter("jobid"));
                session.setAttribute("post", post);
            }//else
        }//try
        catch (Exception e) {
            out.println(e);
        }
                    %>

                </td>

            </tr>
        </table>
    </body>
</html>
