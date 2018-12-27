<%-- 
    Document   : giam_vao_san_pham
    Created on : Dec 23, 2018, 6:51:53 PM
    Author     : Xuan Truong PC
--%>

<%@page import="DAO.Data"%>
<%@page import="model.Product"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String masp=request.getParameter("masp");
            Vector<Product> pros=(Vector<Product>)request.getSession().getAttribute("giohang");
            int count=0;
            for(Product p:pros){
                if(p.getMaSP()==Integer.parseInt(masp)){
                    count++;
                    p.setSoluong(p.getSoluong()-1);
                }
            }
            
            request.getSession().setAttribute("giohang", pros);
        %>
    </body>
</html>
