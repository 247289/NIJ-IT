<%-- 
    Document   : index
    Created on : Oct 5, 2018, 7:36:02 PM
    Author     : VLIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Not Inter Comunication Servlet</title>
        <script type="text/javascript">
            function test(){
                document.forms['name'].action = "ServletOne";
                document.forms['name'].submit();
            }
        </script>
    </head>
    
    <body>
        <h1>Login</h1>
        <form action="ServletOne" name="name">
            User name: <input type="text" name="txtuser" placeholder="What u are user?"/><br/>
            PassWord: <input type="text" name="txtpass" placeholder="********"/><br/>
            <input type="button" onclick="test()" value="submit"/>
            <p>Để sử dụng ta dùng requestDispacher and request.get/request.setAtribute("")</p>
        </form>
    </body>
</html>
