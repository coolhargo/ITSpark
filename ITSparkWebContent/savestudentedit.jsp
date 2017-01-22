<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page import="java.io.*" session="true"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>


 <link rel='stylesheet' type='text/css' href='files/main_style_candidate.css?1319277332' title='wsite-theme-css' />
 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IT Spark corporation</title>
    </head>
    <body>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>
          <%
        try {
            String c1 = (String) session.getAttribute("s1");
            String c2 = (String) session.getAttribute("s2");
            String old_cat = request.getParameter("category");
            String new_cat = request.getParameter("cat");



        	String driver = config.getServletContext().getInitParameter("mysql_driver");
        	String url = config.getServletContext().getInitParameter("mysql_url");
        	String dbname = config.getServletContext().getInitParameter("mysql_db");
        	String username = config.getServletContext().getInitParameter("mysql_username");
        	String password = config.getServletContext().getInitParameter("mysql_password");

        	Class.forName(driver).newInstance();

        	Connection con = DriverManager.getConnection(url+dbname,username,password);


            
            Statement st = con.createStatement();
            Statement st2 = con.createStatement();
            Statement st3 = con.createStatement();

            String name = request.getParameter("name");
            String college = request.getParameter("college");
            String coph = request.getParameter("collegephone");
            String cemail = request.getParameter("collegeemail");
            String degree = request.getParameter("markDegree");
            String email = request.getParameter("email");
            String ph = request.getParameter("telephone");
            String add = request.getParameter("address");
            String state = request.getParameter("state");
            String pin = request.getParameter("pin");
            String expyears = request.getParameter("expyears");
           
            ResultSet rs = null;
            if (old_cat.equalsIgnoreCase("Fresher") && new_cat == null) {
                new_cat = "Fresher";
            } else if (old_cat.equalsIgnoreCase("Experienced")) {
                new_cat = "Experienced";
            }
            String a = "Update Details set Name='" + name + "',CollegeName='" + college +
                    "',CollegePhone='" + coph + "',CollegeEmail='" + cemail +
                    "',Mark='" + degree + "',Email_id='" + email + "',Telephone='" +
                    ph + "',Address='" + add + "',State='" + state +
                    "',Pincode='" + pin + "',Category='" + new_cat + "' where Username='" + c1 + "'";
            st.executeUpdate(a);
            String q = null;
            if (old_cat.equalsIgnoreCase("Fresher") && new_cat.equalsIgnoreCase("Experienced")) {
                q = "insert into Experienced values('" + c1 + "','" + request.getParameter("expyears") +
                        "','" + request.getParameter("company") + "','" + request.getParameter("designation") +
                        "','" + request.getParameter("salary") + "','" + request.getParameter("comAddress") +
                        "')";
            } else if (old_cat.equalsIgnoreCase("Experienced")) {
                q = "Update Experienced set ExpYears='" + request.getParameter("expyears") + "',Company='" +
                        request.getParameter("company") + "',Designation='" + request.getParameter("designation") +
                        "',Salary='" + request.getParameter("salary") + "',ComAddress='" + request.getParameter("comAddress") +
                        "'where Username='" + c1 + "'";
            }
            if (q != null) {
                st2.executeUpdate(q);
            }


        %>
          <font color="red" size="5"> <%out.println("You have Successfully Edited!!!");%>
          </font>
          <%
        } //try
        catch (Exception e) {
            out.println(e);
        }
        %>
        </p>
        <p>&nbsp;</p>
        <p align="center"><a href="candidate-console.jsp"><strong>Go to Home</strong></a> </p>
    </body>
</html>
