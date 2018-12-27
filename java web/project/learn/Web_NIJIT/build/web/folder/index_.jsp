<%-- 
    Document   : index
    Created on : Oct 5, 2018, 8:23:49 PM
    Author     : VLIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Demo</title>
    </head>
    <body>
        <h1>Phương thức với JSP</h1>
        <!--scriptlets-->
        <%
            int b = 10;
            int a = 0;
            while(b>0)
            {
                a+=b;
                b--;
            }
            out.print("a: " + a);
        %>
        
    </body>
</html>
