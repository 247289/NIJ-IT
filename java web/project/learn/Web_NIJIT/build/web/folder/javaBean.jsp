<%-- 
    Document   : javaBean
    Created on : Oct 19, 2018, 8:07:54 PM
    Author     : VLIT
--%>

<%@page import="homework.servlet.jsp.JavaBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:useBean id="demo" type="" scope="request" class="homework.servlet.jsp.JavaBean">
            <jsp:setProperty name="demo" property="address" value="Khâm Thiêm "/>
            <%
            homework.servlet.jsp.JavaBean bean = new JavaBean();
            bean.setAddress("Hà Nội");
            out.print("Address: " + bean.getAddress());
         %>
            <jsp:getProperty name="demo" property="address"/> 
        </jsp:useBean>
        
    </body>
</html>
