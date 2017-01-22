<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >

<%@page import="java.io.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        
        <!--cache control statements-->

<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<!--session management frwrding -->

<%
System.out.println("\n\n\n LoggedStatus>> " +session.getAttribute("LoggedStatus"));

if(session.getAttribute("LoggedStatus")==null){
	
	System.out.println("\n\n Session has Expired ... need to relogin");
	
	
	RequestDispatcher view = request.getRequestDispatcher("re-login.jsp");
	
	view.forward(request, response);
}

%>
        
        
          <title>IT Spark Corporation</title>
        
       
<link rel='stylesheet' type='text/css' href='files/main_style_admin2.css?1319208271' title='wsite-theme-css' />
        
    </head>
    <body>
        <p>
          <%


      	String driver = config.getServletContext().getInitParameter("mysql_driver");
      	String url = config.getServletContext().getInitParameter("mysql_url");
      	String dbname = config.getServletContext().getInitParameter("mysql_db");
      	String username = config.getServletContext().getInitParameter("mysql_username");
      	String password = config.getServletContext().getInitParameter("mysql_password");

      	Class.forName(driver).newInstance();

      	Connection con = DriverManager.getConnection(url+dbname,username,password);



        try {
            String uid = request.getParameter("uid");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select Name,Gender,DateOfBirth,CollegeName,CollegePhone,CollegeEmail,Mark,Degree,Email_id,Telephone,Address,State,Pincode,Category from Details where Username='" + uid + "'");
            String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8 = "", s9 = "", s10 = "", s11 = "", s12 = "", s13 = "", s14 = "";
            while (rs.next()) {
                s1 = rs.getString("Name");
                s2 = rs.getString("Gender");
                s3 = rs.getString("DateOfBirth");
                s4 = rs.getString("CollegeName");
                s5 = rs.getString("CollegePhone");
                s6 = rs.getString("CollegeEmail");
                s7 = rs.getString("Degree");
                s8 = rs.getString("Mark");
                s9 = rs.getString("Email_id");
                s10 = rs.getString("Telephone");
                s11 = rs.getString("Address");
                s12 = rs.getString("State");
                s13 = rs.getString("Pincode");
                s14 = rs.getString("Category");


        %>
        </p>
        <p>&nbsp;</p>
        </br></br></br></br></br>
        <p>&nbsp;</p>
        <table  cellpadding="0" width="952" height="649" border="0" align="center">
            <tr>
                <td colspan="4" align="center"><div align="center" class="style1" ><strong ><font size="4">Resume</font></strong></div></td>
          </tr>
            <tr>
              <td width="228">&nbsp;</td>
                <td width="201" height="37" align="center"><div align="center" class="style4"><span class="style2">Name</span></div></td>
              <td width="86">&nbsp;</td>
              <td width="419"><span class="style10">
              <label>
              </span>
                <div align="center" class="style10"><%=s1%></div>
                  <span class="style10">
                  </label>              
                  </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="38"><div align="center" class="style4"><span class="style2">Gender</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s2%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="36"><div align="center" class="style4"><span class="style2">Date of Birth</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s3%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="36"><div align="center" class="style4"><span class="style2">College Name</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s4%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="38"><div align="center" class="style4"><span class="style2">College Phone</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s5%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="42"><div align="center" class="style4"><span class="style2">College Email</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s6%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="40"><div align="center" class="style4"><span class="style2">Degree</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s7%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="38"><div align="center" class="style4"><span class="style2">Mark</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s8%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="37"><div align="center" class="style4"><span class="style2">Email</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s9%></div>
                    <span class="style10">
                    </label>               
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="45"><div align="center" class="style4"><span class="style2">Telephone</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s10%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="39"><div align="center" class="style4"><span class="style2">Address&nbsp; </span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s11%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="37"><div align="center" class="style4"><span class="style2">State</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s12%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="44"><div align="center" class="style4"><span class="style2">Pincode</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s13%></div>
                    <span class="style10">
                    </label>                
                    </span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
                <td height="41"><div align="center" class="style4"><span class="style2">Category</span></div></td>
              <td>&nbsp;</td>
                <td><span class="style10">
                <label>
                </span>
                  <div align="center" class="style10"><%=s14%></div>
                  <span class="style10">
                  </label>
                </span></td>
            </tr>
            <%
            }//while
        }//try
        catch (Exception e) {
            out.println(e);
        }
            %>
    </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p><p align="center"> <a href="admin-console.jsp"> Back to admin home</a></p>
</body>
</html>




