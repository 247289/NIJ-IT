<%-- 
    Document   : deleteItem
    Created on : Dec 23, 2018, 8:04:08 PM
    Author     : Xuan Truong PC
--%>

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
            try {
                Vector<Product> pros = (Vector<Product>) request.getSession().getAttribute("giohang");
                String masp = request.getParameter("masp");
                out.print(masp+"<br>");
                if(pros==null|pros.size()==0){
                    out.print("fuck");
                }else{
                    out.print(pros.size()+"<br>");
                }
                for (int i=0;i<pros.size();i++) {
                    Product p=pros.get(i);
                    if(p.getMaSP()==Integer.parseInt(masp)){
                       p= pros.remove(i);
                       out.print(p.getTenSP()+"<br>");
                    }
                }
                request.getSession().setAttribute("giohang", pros);
                request.getServletContext().getRequestDispatcher("/gio_hang.jsp").forward(request, response);
            } catch (Exception e) {
                out.print(e.getMessage());
            }
        %>
    </body>
</html>
