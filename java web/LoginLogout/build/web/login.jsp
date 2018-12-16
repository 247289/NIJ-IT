<%-- 
    Document   : login
    Created on : Oct 18, 2018, 1:56:57 PM
    Author     : VLIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Login</h1>
        <form action="Login" method="post">
            Username: <input type="text" name="txtUser" /><br/>
            Password: <input type="password" name="txtPass" /><br/>
            <input type="submit" value="Login" />
        </form>
    </center>
    
    </body>
</html>
