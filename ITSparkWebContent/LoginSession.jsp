<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IT Spark Corporation</title>
    </head>
    <body>
         <% try
             {
                HttpSession s2=request.getSession();
                HttpSession s3=request.getSession();
                s2.setAttribute("username", request.getParameter("username")); 
                s3.setAttribute("password", request.getParameter("password")); 
                response.sendRedirect("Valid.jsp");  
             }  
           catch(Exception e) 
                   {
                     out.println(e);
                   }       
         %>
    </body>
</html>
