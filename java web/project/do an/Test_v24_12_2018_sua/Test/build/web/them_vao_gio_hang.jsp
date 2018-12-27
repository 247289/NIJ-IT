<%-- 
    Document   : them_vao_gio_hang
    Created on : Dec 23, 2018, 1:33:21 PM
    Author     : Xuan Truong PC
--%>

<%@page import="DAO.Data"%>
<%@page import="java.util.Vector"%>
<%@page import="model.Product"%>
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
            String soluong="1";
            try{
                soluong=request.getParameter("soluong");
                if(soluong==null){
                    soluong="1";
                }
            }catch(Exception e){
                soluong="1";
            }
            Vector<Product> pros=(Vector<Product>)request.getSession().getAttribute("giohang");
            int count=0;
            for(Product p:pros){
                if(p.getMaSP()==Integer.parseInt(masp)){
                    count++;
                    p.setSoluong(Integer.parseInt(soluong)+p.getSoluong());
                }
            }
            if(count==0){
                Product p=new Data().getProduct(masp);
                p.setSoluong(Integer.parseInt(soluong));
                pros.add(p);
            }
            request.getSession().setAttribute("giohang", pros);
        %>
    </body>
</html>
