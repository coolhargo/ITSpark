<%@ page  import="java.sql.*" %>


<%
        String uname = request.getParameter("id");
        try {


        	String driver = config.getServletContext().getInitParameter("mysql_driver");
        	String url = config.getServletContext().getInitParameter("mysql_url");
        	String dbname = config.getServletContext().getInitParameter("mysql_db");
        	String username = config.getServletContext().getInitParameter("mysql_username");
        	String password = config.getServletContext().getInitParameter("mysql_password");

        	Class.forName(driver).newInstance();

        	Connection con = DriverManager.getConnection(url+dbname,username,password);


        	
        	Statement st = con.createStatement();
            String sql = "delete from Com where CUsername='" + uname + "'";
            int x = st.executeUpdate(sql);
            if (x > 0) {
                response.sendRedirect("company-details.jsp");
            } else {
                out.println("Error: cannot delete record");

            }
            con.close();
        } catch (Exception ex) {
            out.println(ex.getMessage());
        }
%>