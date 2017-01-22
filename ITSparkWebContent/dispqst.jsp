<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" session="true" %>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IT Spark  corporation</title>
        
        <link rel='stylesheet' type='text/css' href='files/main_style_candidate.css?1319277332' title='wsite-theme-css' />
        
        <!-- CSS Code  -->
<style>
#txt {
  border:none;
  font-family:Digital-7;
  font-size:24pt;
  
  border-right-color:#FFFFFF
}

.timerhead {
	font-family: Digital-7;
	font-size:24pt;
}
</style>
        
     
   <script type="text/javascript" src="countDown.js"></script>  
        
        
    </head>
    <body>
    </br>
    <form name="cd">
  <div  align="center"><span class="timerhead"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  TIME REMAINING </span>
    <input id="txt" readonly="true" type="text" value="10:00" border="0" name="disp">
  </div>
</form>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp; </p>
        <p>
          <%
       
        Statement st;
        ResultSet rs;
        String sql;
        int qno = Integer.parseInt(request.getParameter("qno"));
        String studentid = session.getAttribute("s1").toString();
        String qstn = "", ch1 = "", ch2 = "", ch3 = "", ch4 = "", ans = "";
        try {
            sql = "select * from Temp_Data where StudID='" + studentid + "' and QstNo=" + qno;



            String driver = config.getServletContext().getInitParameter("mysql_driver");
            String url = config.getServletContext().getInitParameter("mysql_url");
            String dbname = config.getServletContext().getInitParameter("mysql_db");
            String username = config.getServletContext().getInitParameter("mysql_username");
            String password = config.getServletContext().getInitParameter("mysql_password");

            Class.forName(driver).newInstance();

            Connection con = DriverManager.getConnection(url+dbname,username,password);
             

            
            st = con.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                qstn = rs.getString(3);
                ch1 = rs.getString(4);
                ch2 = rs.getString(5);
                ch3 = rs.getString(6);
                ch4 = rs.getString(7);
                ans = rs.getString(8);
        %>
          
          </br>
          
        </p>
        <form action="calcmark.jsp" method="post">

            <table  cellpadding="0" width="829" height="244" border="0" align="center" >
                <tr>
                    <td width="148"><strong>Question <%=qno%>
                      of 10
                      </strong>
                      <input type="hidden" name="qno" value="<%=qno%>">                  </td>
                    <td><strong><%=qstn%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>1</strong></div></td>
                    <td width="460">
                      <strong>
                      <input name="ch" type="radio" value="<%=ch1%>">
                      <%=ch1%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>2</strong></div></td>
                    <td>
                      <strong>
                      <input name="ch" type="radio" value="<%=ch2%>">
                      <%=ch2%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>3</strong></div></td>
                    <td>
                      <strong>
                      <input name="ch" type="radio" value="<%=ch3%>">
                      <%=ch3%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>4</strong></div></td>
                    <td>
                      <strong>
                      <input name="ch" type="radio" value="<%=ch4%>">
                      <%=ch4%></strong></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="ans" value="<%=ans%>"></td>
                    <%
                if (qno <= 9) {
                    %>
                    <td><input type="submit" name="next" value="Next Question"></td>
                    <%} else {
                    %>
                    <td width="199"><input type="submit" name="Finish" value="Finish"></td>
                    <%                }
                    %>
                </tr>
            </table>
        </form>
        <%            }
        } catch (Exception ex) {
            out.println(ex.toString());
        }
    //out.println(session.getAttribute("mark"));
%>
        <h1>&nbsp;</h1>
    </body>
</html>
