<%-- 
    Document   : dãnguat
    Created on : Dec 23, 2018, 11:40:48 AM
    Author     : Xuan Truong PC
--%>

<%@page import="model.Comsumer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Comsumer com=(Comsumer)request.getSession().getAttribute("user");
            if(com==null){
                response.sendRedirect("form/form.jsp");
            }else{
                String page1=(String) request.getSession().getAttribute("prePage");
                request.getSession().setAttribute("user", null);
                response.sendRedirect(page1);
            }
            %>
    </body>
</html>
