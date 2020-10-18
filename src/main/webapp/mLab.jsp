<%-- 
    Document   : mLab
    Created on : Sep 28, 2020, 2:07:01 AM
    Author     : diamo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css">
        <title>mLab Login</title>
    </head>
    <%
        String status = request.getParameter("status");
        %>
    <body>
        <div>
            <form class="form" action="ConnServlet" method="post">
                <h2>mLab Admin Login: </h2>
                <% if (status != null) { %>
                <div> status = <%=status%> </div>    
                <% } else { %>
                <div> status = "Not connect" </div> 
                <div>   
                <input placeholder ="Admin ID" name="adminemail" required="true">
                </div>
                <div>
                    <input type="password" name="adminpassword" placeholder="Password" required="true">
                </div>
                <div>
                    <input type="submit" value="Connect" class="button">
                </div>
                 <% } %>
               
            </form>
        </div>
    </body>
</html>
