<%-- 
    Document   : mua_ngay
    Created on : Dec 24, 2018, 12:22:41 AM
    Author     : Xuan Truong PC
--%>

<%@page import="java.util.Vector"%>
<%@page import="model.Product"%>
<%@page import="DAO.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String masp = request.getParameter("masp");
            Vector<Product> pros = (Vector<Product>) request.getSession().getAttribute("giohang");
            int count = 0;
            for (Product p : pros) {
                if (p.getMaSP() == Integer.parseInt(masp)) {
                    count++;
                    p.setSoluong(1 + p.getSoluong());
                }
            }
            if (count == 0) {
                Product p = new Data().getProduct(masp);
                p.setSoluong(1);
                pros.add(p);
            }
            request.getSession().setAttribute("giohang", pros);
            if (request.getSession().getAttribute("user") == null) {
                response.sendRedirect("form/form.jsp");
            } else {
                request.getServletContext().getRequestDispatcher("/thanh_toan.jsp").forward(request, response);
            }
        %>
    </body>
</html>
