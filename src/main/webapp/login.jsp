<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css">
        <title>Login Page</title>
    </head>
    <body>


        <%
            String existErr = (String) session.getAttribute("existErr");
            String emailErr = (String) session.getAttribute("emailErr");
            String passErr = (String) session.getAttribute("passErr");
        %>

        <h1>Sign In <span class="message"> <%=(existErr != null ? existErr : "")%></span></h1>

        <form action="LoginServlet" method="post">
            <table>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" placeholder="<%=(emailErr != null ? emailErr : "Enter email")%>" name="email" required></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" placeholder="<%=(passErr != null ? passErr : "Enter password")%>" name="password" required></td>
                </tr> 
                <tr>
                    <td></td>
                    <td><a class="button" href="index.jsp">Cancel</a>
                        <input class="button" type="submit" value="Sign In">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
