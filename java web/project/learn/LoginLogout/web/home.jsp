<%-- 
    Document   : home
    Created on : Oct 18, 2018, 1:57:09 PM
    Author     : VLIT
--%>

<%@page import="model.Users"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý tin tức</title>
    </head>
    <body>
        <% 
            //lay ve danh sach sinh vien
            ArrayList<Users> list = (ArrayList<Users>)request.getAttribute("listUsers");
        %>
        <table border="1">
            <tr>
                <th>id</th>
                <th>name</th>
                <th>pass</th>
            </tr>
            <%
            for(int i = 0; i < list.size(); i++) {    
                Users sv = list.get(i);
            %>
            <tr>
                <td><% out.print(sv.getId()); %></td>
                <td><%= sv.getName() %></td>
                <td><%= sv.getPass() %></td>
            </tr>
            <% } %>
        </table>
        
        <h1><a href="Logout">Logout</a></h1>
    </body>
</html>
