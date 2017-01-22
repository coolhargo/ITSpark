
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<%@page import="java.io.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>IT Spark Corporation</title>
    </head>
    
    <link rel='stylesheet' type='text/css' href='files/main_style.css?1319278360' title='wsite-theme-css' />
    
    <body>
        <% try {
			
System.out.println("\n\n\n all going right till now....");

			
 session = request.getSession(false);

if(session ==null){
	System.out.println("No session was available...\n making one...");
	session = request.getSession();
	
}else{
	System.out.println("\n there was a session ..!!");
	
	}



			
			
			
            String s1 = request.getParameter("username");
            String s2 = request.getParameter("password");
  			
  			
  			
            session.setAttribute("s1", s1);
            session.setAttribute("s2", s2);
            
            //means a user is going to be logged in
            session.setAttribute("LoggedStatus", true);
            
            System.out.println("\n\n\n LoggedStatus>> " +session.getAttribute("LoggedStatus"));
            
            
			// main DB code
			
					
			
			
//step 1: load  & register the driver class 
//Class.forName("oracle.jdbc.driver.OracleDriver");

String driver = config.getServletContext().getInitParameter("mysql_driver");
String url = config.getServletContext().getInitParameter("mysql_url");
String dbname = config.getServletContext().getInitParameter("mysql_db");
String username = config.getServletContext().getInitParameter("mysql_username");
String password = config.getServletContext().getInitParameter("mysql_password");

           
            
Class.forName(driver).newInstance();



//step 2: Provide the connection string
Connection conn = DriverManager.getConnection(url+dbname,username,password);


//System.out.println(" current Parameters... "+driver+"  "+url+"  "+dbname+"  "+username+"  "+password);            




//step 3: Get the statement
//Statement stmt = conn.createStatement();

//step 4: perform d curd operations
			

			// type1		
           // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           // Connection conn = DriverManager.getConnection("jdbc:odbc:OnlineExam");
			
			
            Statement st = conn.createStatement();
            Statement st2 = conn.createStatement();
            String stat = "";
		 ResultSet rs;	
		  
/*
System.out.println("============ TESTING if got connected to 10g DB==========");
rs = stmt.executeQuery("select * from emp");
while(rs.next()){
System.out.println(rs.getString(1)+"     "+rs.getInt(2));
}
			*/
			
			System.out.println("");
			
           
			
            rs = st.executeQuery("select * from Login where Username='" + s1 + "' and Password='" + s2 + "'");
			
			
        %>
        <!-- <input type= "hidden" name="id" value ="<%=s1%>">
           <input type= "hidden" name="pass" value ="<%=s2%>">-->
           <%
            while (rs.next()) {
                stat = rs.getString("status");
            } //while
            if (stat.equals("s")) {
                response.sendRedirect("candidate-console.jsp");
            } else if (stat.equals("c")) {
                response.sendRedirect("company-console.jsp");
            } else if (stat.equals("a")) {
                response.sendRedirect("admin-console.jsp");
            } else {
                response.sendRedirect("login2.jsp");

            }
        }//try
        catch (Exception e) {
            out.println(e);
        }
        %>
        <!-- <input type="hidden" name = "hid" value="<%request.getParameter("username");%>" -->
    </body>
</html>
