<%@ page contentType="text/html; charset=utf-8" language="java"  import="java.sql.*" errorPage="" %>

<%@page import="java.io.*,java.sql.*;" session="true" %>

<%-- for choosing appropriate question for exam --%>

<%

        String examID = request.getParameter("examid");
        String jobID = session.getAttribute("jobid").toString();

        String studentid=session.getAttribute("s1").toString();
        
        Statement st = null;
        ResultSet rs = null;
        String sql = null;
        
        // show 10 questn. in exam
        int[] ar = new int[10];  
        
        int i = 0;
        if (request.getParameter("examid") != "") {
            while (i < 10) {
                double x = Math.random();
                String t = String.valueOf(x * 25);
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
            try {

                for (int n = 0; n < ar.length; n++) {


                	String driver = config.getServletContext().getInitParameter("mysql_driver");
                	String url = config.getServletContext().getInitParameter("mysql_url");
                	String dbname = config.getServletContext().getInitParameter("mysql_db");
                	String username = config.getServletContext().getInitParameter("mysql_username");
                	String password = config.getServletContext().getInitParameter("mysql_password");

                	Class.forName(driver).newInstance();

                	Connection con = DriverManager.getConnection(url+dbname,username,password);

                	
                	
         

                	
                	st = con.createStatement();
                    rs = st.executeQuery("select * from Question Where JobID='" + jobID + "' and ExamID='" +
                            examID + "' and QuestionNo=" + ar[n]);
                    if (rs.next()) {
        
                        sql="insert into Temp_Data values('" + studentid + "'," + (n +1) + ",'" + rs.getString(4) +
                                "','" + rs.getString(5) +"','" +rs.getString(6) +"','" + rs.getString(7) + "','" +
                                rs.getString(8) + "','" + rs.getString(9) + "')";
                        //out.println(sql + "<br>");

                        st.executeUpdate(sql);
                    }
                }
                session.setAttribute("mark","0");
                session.setAttribute("examid", examID);
                response.sendRedirect("dispqst.jsp?qno=1");
            } catch (Exception ex) {
                out.println("Error: Cannot go forward<br>" + ex.toString() );
            }

        }
%>



