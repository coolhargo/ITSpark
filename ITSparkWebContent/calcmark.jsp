<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" session="true" %>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<!--session management frwrding -->

<!--%
System.out.println("\n\n\n LoggedStatus>> " +session.getAttribute("LoggedStatus"));

if(session.getAttribute("LoggedStatus")==null){
	
	System.out.println("\n\n Session has Expired ... need to relogin");
	
	
	RequestDispatcher view = request.getRequestDispatcher("re-login.jsp");
	view.forward(request, response);
}

%-->


<title>Untitled Document</title>
</head>


 <link rel='stylesheet' type='text/css' href='files/main_style_candidate.css?1319277332' title='wsite-theme-css' />
        

<body>

</br>
<form id="form1" name="form1" method="post" action="calcmark.jsp">
    <p>&nbsp;    </p>
    <p>&nbsp;</p>
    <p>
      <input name="OK" type="submit" id="OK" value="Submit" />
    </p>
</form>
</body>
</html>

<%
       
        Statement st;
        ResultSet rs;
        String sql;

        int mark = Integer.parseInt(session.getAttribute("mark").toString());
        String ch = request.getParameter("ch");
        String ans = request.getParameter("ans");
        int qno = Integer.parseInt(request.getParameter("qno"));
        if (ch != null) {
//out.println("Ch=" + ch + "<br> Ans=" + ans + "<br>Qno=" + qno + " Mark=" + mark);
            ch = ch.trim();
            ans = ans.trim();
            if (ch.equalsIgnoreCase(ans)) {
                mark++;
                session.setAttribute("mark", mark);

            }
        }
        if (qno < 10) {
            response.sendRedirect("dispqst.jsp?qno=" + (qno + 1));
        } else {
            try {
                String studentid = session.getAttribute("s1").toString();
                sql = "delete from Temp_Data where StudID='" + studentid + "'";

                String driver = config.getServletContext().getInitParameter("mysql_driver");
                String url = config.getServletContext().getInitParameter("mysql_url");
                String dbname = config.getServletContext().getInitParameter("mysql_db");
                String username = config.getServletContext().getInitParameter("mysql_username");
                String password = config.getServletContext().getInitParameter("mysql_password");

                Class.forName(driver).newInstance();

                Connection con = DriverManager.getConnection(url+dbname,username,password);

                
                
                st = con.createStatement();
                st.executeUpdate(sql);

                String examID = session.getAttribute("examid").toString();
                String jobID = session.getAttribute("jobid").toString();
                mark=Integer.parseInt(session.getAttribute("mark").toString());
                sql="Insert into Result values('" + studentid + "','" +  examID + "','" + jobID + "'," + mark + ")";
                st.executeUpdate(sql);
                response.sendRedirect("dispresult.jsp");
            } catch (Exception ex) {
                out.println(ex.toString());
            }

        }

%>