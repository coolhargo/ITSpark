
<%@page import="java.io.*,java.sql.*;"session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
        String examID = request.getParameter("examid");
        String jobID = session.getAttribute("jobid").toString();

   
        Statement st = null;
        ResultSet rs = null;
        String sql = null;
        int[] ar = new int[5];
        int i = 0;
        if (request.getParameter("examid") != "") {
            while (i < 5) {
                double x = Math.random();
                String t = String.valueOf(x * 10);
                t = t.substring(0, t.indexOf("."));
                int b = Integer.parseInt(t);
                //out.println(b + "<br>");
                boolean flag = false;
                for (int n = 0; n < ar.length; n++) {

                    if (b <= 0 || ar[n] == b) {
                        flag = true;
                    }

                }
                if (flag == false) {
                    ar[i] = b;
                    i++;
                }
            }//while
        }
		%>

		<%
		
        try {


        	String driver = config.getServletContext().getInitParameter("mysql_driver");
        	String url = config.getServletContext().getInitParameter("mysql_url");
        	String dbname = config.getServletContext().getInitParameter("mysql_db");
        	String username = config.getServletContext().getInitParameter("mysql_username");
        	String password = config.getServletContext().getInitParameter("mysql_password");

        	Class.forName(driver).newInstance();

        	Connection con = DriverManager.getConnection(url+dbname,username,password);

          

        	
        	
        	st = con.createStatement();
            out.println("<table border='1'>");
            String Qst = null, Opt1 = null, Opt2 = null, Opt3 = null, Opt4 = null;
            for (int n = 0; n < ar.length; n++) {
                out.println("<tr>");
                sql = "select * from Question Where JobID='" + jobID + "' and ExamID='" +
                        examID + "' and QuestionNo='" + ar[n] + "'";
                rs = st.executeQuery(sql);
                if (rs.next()) {
                    Qst = rs.getString("Question");
                    Opt1 = rs.getString("Option1");
                    Opt2 = rs.getString("Option2");
                    Opt3 = rs.getString("Option3");
                    Opt4 = rs.getString("Option4");
                    out.println(Qst);
                    out.println("<br>");
%>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>
          <input type="radio" name="ans" id="op1" value="<%=Opt1%>" />
          <%=Opt1%><br>
  <input type="radio" name="ans" id="op2" value="<%=Opt2%>" /><%=Opt2%><br>
  <input type="radio" name="ans" id="op3" value="<%=Opt3%>" /><%=Opt3%><br>
  <input type="radio" name="ans" id="op4" value="<%=Opt4%>" /><%=Opt4%><br>
  <%
                }
                out.println("</tr>");
               

            }
            out.println("</table>");
        } catch (Exception ex) {
            out.println("Error: " + ex.toString());
        }


%>
        </p>
		