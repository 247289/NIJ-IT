<%-- 
    Document   : home
    Created on : Nov 2, 2018, 7:15:03 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <% ArrayList<model.Users> list = (ArrayList<model.Users>) request.getAttribute("listUsers");
//            out.print(list.size());
        %>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>User</th>
                <th>Pass</th>
                <th></th>
                <th></th>
            </tr>
            <%
                for (int i = 0; i < list.size(); i++) {
                    model.Users u = list.get(i);
//                    out.print(u.getId());
            %>
            <tr>
                <td><%= u.getId() %></td>
                <td><%= u.getUser()%></td>
                <td><%= u.getPass()%></td>
                <td><a href="#"/>edit</td>
                <td><a href="#"/>delete</td>
            </tr>
            <%}%>
        </table>
        <br/>
        <input type="text" name="insertU" value="InsertUser" onclick="showDiv()"/><br/>
        <a href="Logout"/>Logout
    </body>
</html>
