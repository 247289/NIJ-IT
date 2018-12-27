<%-- 
    Document   : login
    Created on : Nov 2, 2018, 7:01:17 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <h1>Login</h1>
            <form action="Users" method="post">
                Username: <input type="text" name="txtUser" /><br/>
                Password: <input type="password" name="txtPass" /><br/>
                <input type="submit" value="Login" />
            </form>
        </center>
    </body>
</html>
