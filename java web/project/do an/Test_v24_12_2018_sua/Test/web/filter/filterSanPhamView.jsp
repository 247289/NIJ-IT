<%-- 
    Document   : filter
    Created on : Dec 24, 2018, 3:17:58 PM
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
            //ao: 1 2 3 13 14 quan 15 17 16  18
            String loai = request.getParameter("loai");
            String mau = request.getParameter("mau");
            String kichco = request.getParameter("kichco");
            Vector<Product> getProducts = new Data().getProducts(0, "", kichco, mau, 0, Integer.parseInt(loai), 100);
            Vector<Product> listPro = new Vector<Product>();

            if (loai.equals("0")) {
                for (Product p : getProducts) {
                    if (p.getLoaiSP() == 1 | p.getLoaiSP() == 2 | p.getLoaiSP() == 3 | p.getLoaiSP() == 13 | p.getLoaiSP() == 14) {
                        listPro.add(p);
                    }
                }
                getProducts = listPro;
            }

            if (loai.equals("-1")) {
                for (Product p : getProducts) {
                    if (p.getLoaiSP() == 15 | p.getLoaiSP() == 16 | p.getLoaiSP() == 17 | p.getLoaiSP() == 18) {
                        listPro.add(p);
                    }
                }
                getProducts = listPro;
            }

            Product t = new Product();
            if (getProducts.size() == 0) {
                out.print("không có sản phẩm !");
            } else {
                for (int i = 0; i < getProducts.size(); i++) {
        %> 
        <div class="row">
            <% t = getProducts.get(i);%>
            <div class="col-md-4 col-xs-6">
                <div class="product">
                    <a class="img" href="chi_tiet_san_pham.jsp?masp=<%=t.getMaSP()%>" title="#"><img class="img-responsive" src="<%=t.getHinhAnh().split(";")[0]%>" alt="#"></a>
                    <figcaption><h2><a href="chi_tiet_san_pham.jsp?masp=<%=t.getMaSP()%>" title="#"><%=t.getTenSP()%></a></h2>
                        <div class="call"><%=t.getMaSP()%></div>
                        <div class="price"><%=t.getGia()%>VND</div>
                    </figcaption>
                    <div class="product-btn">
                        <a href="chi_tiet_san_pham.jsp?masp=<%=t.getMaSP()%>" title="Mua ngay" class="btn btn-default">Mua ngay</a>
                        <a title="Thêm vào gi? hàng" class="btn btn-default" onclick="addToCart(<%=t.getMaSP()%>)"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div><!--end col-md-4-->
            <% if (i == getProducts.size() - 1) {
            %>
            <div class="col-md-4 col-xs-6">

            </div>
            <%
            } else {
                t = getProducts.get(++i);
            %>
            <div class="col-md-4 col-xs-6">
                <div class="product">
                    <a class="img" href="chi_tiet_san_pham.jsp?masp=<%=t.getMaSP()%>" title="#"><img class="img-responsive" src="<%=t.getHinhAnh().split(";")[0]%>" alt="#"></a>
                    <figcaption><h2><a href="chi_tiet_san_pham.jsp?masp=<%=t.getMaSP()%>" title="#"><%=t.getTenSP()%></a></h2>
                        <div class="call"><%=t.getMaSP()%></div>
                        <div class="price"><%=t.getGia()%>VND</div>
                    </figcaption>
                    <div class="product-btn">
                        <a href="chi_tiet_san_pham.jsp?masp=<%=t.getMaSP()%>" title="Mua ngay" class="btn btn-default">Mua ngay</a>
                        <a title="Thêm vào gi? hàng" class="btn btn-default"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
            <% } %><!--end col-md-4-->
            <% if (i == getProducts.size() - 1) {
            %>
            <div class="col-md-4 col-xs-6">

            </div>
            <%
            } else {
                t = getProducts.get(++i);
            %>
            <div class="col-md-4 col-xs-6">
                <div class="product">
                    <a class="img" href="chi_tiet_san_pham.jsp?masp=<%=t.getMaSP()%>" title="#"><img class="img-responsive" src="<%=t.getHinhAnh().split(";")[0]%>" alt="#"></a>
                    <figcaption><h2><a href="chi_tiet_san_pham.jsp?masp=<%=t.getMaSP()%>" title="#"><%=t.getTenSP()%></a></h2>
                        <div class="call"><%=t.getMaSP()%></div>
                        <div class="price"><%=t.getGia()%>VND</div>
                    </figcaption>
                    <div class="product-btn">
                        <a href="chi_tiet_san_pham.jsp?masp=<%=t.getMaSP()%>" title="Mua ngay" class="btn btn-default">Mua ngay</a>
                        <a title="Thêm vào gi? hàng" class="btn btn-default" onclick="addToCart(<%=t.getMaSP()%>)"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
        <% }
            }%>
    </body>
</html>
