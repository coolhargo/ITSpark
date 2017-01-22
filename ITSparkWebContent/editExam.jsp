<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"  %>
<%

        String jid = request.getParameter("jid");
        String eid = request.getParameter("eid");
        String msg = "";
        if (request.getParameter("update") != null) {
            String examid = request.getParameter("examid");
            String jobid = request.getParameter("jobid");
            String postname = request.getParameter("postname");
            String examname = request.getParameter("exname");
            String cutoff = request.getParameter("cutoff");
            String sql = "Update Exam Set Post='" + postname + "', ExamName='" + examname + "', Cutoff='" +
                    cutoff + "' where JobID='" + jobid + "' and ExamID='" + examid + "'";


        	String driver = config.getServletContext().getInitParameter("mysql_driver");
        	String url = config.getServletContext().getInitParameter("mysql_url");
        	String dbname = config.getServletContext().getInitParameter("mysql_db");
        	String username = config.getServletContext().getInitParameter("mysql_username");
        	String password = config.getServletContext().getInitParameter("mysql_password");

        	Class.forName(driver).newInstance();

        	Connection con = DriverManager.getConnection(url+dbname,username,password);


            
            Statement st = con.createStatement();
            int x = st.executeUpdate(sql);

            if (x > 0) {
                msg = "success";
                response.sendRedirect("ExamView.jsp?jobid=" + jobid);

            } else {
                msg = "Updation failed";
            }
        }
%>


<link rel='stylesheet' type='text/css' href='files/main_style_company.css?1319277711' title='wsite-theme-css' />


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>i - World  Corporation</title>
        <script language="javascript">
            function check()
		{
			var a= document.frm.exname.value;
			var b= document.frm.cutoff.value;
			if(document.frm.postname.value=="")
            {
                alert("Enter Post Name");
                document.frm.postname.focus();
                return false;
            }
            
			if(document.frm.exname.value=="")
            {
                alert("Enter Exam Name");
                document.frm.exname.focus();
                return false;
            }
			
			if(document.frm.cutoff.value=="")
            {
                alert("Enter Cutoff mark");
                document.frm.cutoff.focus();
                return false;
            }
            else if(!parseInt(b))
            {
                alert("Enter Integer");
                document.frm.cutoff.focus();
                return false;
            }
			else if(parseInt(b)<0||parseInt(b)>100)
            {
                alert("Enter cutoff in %");
                document.frm.cutoff.focus();
                return false;
            }

			return true;
		}
		</script>
       
    </head>
    <body style="margin:0px" >
        <table  cellpadding="0" width="100%" border="0"  >
            
            <tr>
                
                <td width="961"  valign="top">
                    <p>
                      <%


                  	String driver = config.getServletContext().getInitParameter("mysql_driver");
                  	String url = config.getServletContext().getInitParameter("mysql_url");
                  	String dbname = config.getServletContext().getInitParameter("mysql_db");
                  	String username = config.getServletContext().getInitParameter("mysql_username");
                  	String password = config.getServletContext().getInitParameter("mysql_password");

                  	Class.forName(driver).newInstance();

                  	Connection con = DriverManager.getConnection(url+dbname,username,password);

    
                      
                      
        Statement st = con.createStatement();
        Statement st3 = con.createStatement();
        ResultSet rs = st.executeQuery("select * from Exam where JobID='" + jid + "' and ExamID='" + eid + "'");
        String post = "", exname = "", cutoff = "";
        if (rs.next()) {
            post = rs.getString("Post");
            exname = rs.getString("ExamName");
            cutoff = rs.getString("Cutoff");
        }
                    %>
                    </p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>
                    <p>&nbsp; </p>
                    <form name="frm" action="editExam.jsp" method="post" onsubmit="return check()">
                        <table  cellpadding="0" width="449" border="0" align="center">
                            <tr>
                                <td colspan="2"><div align="center">
                                  <p><strong>Edit Exam Details</strong></p>
</div></td>
                            </tr>
                            <tr>
                                <td>Post</td>
                                <td><p>
                                  <input type="text" name="postname" id="postname" value="<%=post%>">
                                </p></td>
                            </tr>
                            <tr>
                                <td>Exam Name</td>
                                <td><p>
                                  <input type="text" name="exname" id="exname" value="<%=exname%>">
                                </p></td>
                            </tr>
                            <tr>
                                <td>Cutoff</td>
                                <td><p>
                                  <input type="text" name="cutoff" id="cutoff" value="<%=cutoff%>">
                                </p></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <input name="jobid" type="hidden" id="jobid" value="<%=jid%>">
                                    <input name="examid" type="hidden" id="examid" value="<%=eid%>">
                                <input type="submit" name="update" id="update" value="Update" ></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><%=msg%></td>
                            </tr>
                        </table>
                    </form>
                <p>&nbsp;</p></td>
            </tr>
        </table>
    </body>
</html> 