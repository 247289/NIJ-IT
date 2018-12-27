<%-- 
    Document   : them_vao_gio_hang
    Created on : Dec 23, 2018, 6:18:19 PM
    Author     : JERRIER
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="DAO.SanPhamDao"%>
<%@page import="java.util.Vector"%>
<%@page import="dto.SanPham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Vector<SanPham> pros1 = (Vector<SanPham>) request.getSession().getAttribute("giohang");
            String masp = request.getParameter("masp");
            int soluong=Integer.parseInt(request.getParameter("soluong"));
            int count = 0;
            for (SanPham s : pros1) {
                if (s.getId() == Integer.parseInt(masp)) {
                    count++;
                    s.setSoluongmua(s.getSoluongmua() + soluong);
                }
            }
            if (count == 0) {
                SanPham s = SanPhamDao.GetPhone(masp);
                s.setSoluongmua(soluong);
                pros1.add(s);
            }
            request.getSession().setAttribute("giohang", pros1);
        %>
        <%
            if (pros1 != null | pros1.size() != 0) {
                for (SanPham s : pros1) {
        %>
        <div class="single-cart-box">
            <div class="cart-img">
                <a href="GioHang.jsp"><img src="<%=s.getAlbumAnh().getAnh1()%>" alt="cart-image"></a>
                <span class="pro-quantity"><%=s.getSoluongmua()%>X</span>
            </div>
            <div class="cart-content">
                <h6><a href="GioHang.jsp"><%= s.getTen()%></a></h6>
                <span class="cart-price">Giá: <%= NumberFormat.getInstance().format(s.getGia())%> VND</span>

            </div>
            <a class="del-icone" href="#" ><i class="ion-close" onclick="<%=pros1.size() - 1%>"></i></a>
        </div>
        <%
                }
            }
        %>
    </body>
</html>
