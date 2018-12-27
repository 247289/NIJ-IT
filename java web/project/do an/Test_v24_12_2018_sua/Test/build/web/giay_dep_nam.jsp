<%@page import="DAO.Data"%>
<%@page import="model.Product"%>
<%@page import="java.util.Vector"%>
<%
    String repage=(String)request.getSession().getAttribute("page");
    request.getSession().setAttribute("prePage", repage);
    request.getSession().setAttribute("page", "giay_dep_nam.jsp");
%>
<!DOCTYPE html>
<html lang="vn">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Phái Mạnh Shop</title>
        <link href="default.html" rel="canonical" />
        <link rel="icon" href="public/default/images/logo_ao.png" type="image/gif">
        <link rel="stylesheet" href="public/default/css/bootstrap.css">
        <link rel="stylesheet" href="public/default/css/font-awesome.css">
        <link href="public/default/css/main.css" rel="stylesheet" type="text/css">
        <link href="public/default/css/main_menu.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="public/default/slide-product/owl.carousel.css">
        <script type="text/javascript" src="public/default/js/jquery-1.9.1.min.js"></script> 
        <link href="public/default/css/main_v1.css" rel="stylesheet" type="text/css">
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <link href="public/default/css/main_v1.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="content">
            <header class="navbar-fixedtop">
                <div class="content">     
                    <%@include file="header.jsp" %>
                    <section class="slide-home">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 col-xs-12">
                                    <a title="Banner danh m?c"><img class="img-responsive" src="uploads/banner/Banner_web_danh_muc_quan1.jpg" alt="Banner danh m?c" ></a>
                                </div>
                            </div>
                        </div>
                    </section><!--end menu-->
                    <section class="wapper">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-9 col-xs-12 right-item pull-right">
                                    <div class="col-md-12 col-xs-12">
                                        <div class="box-tt">
                                            <h2 class="title_h1">Giay Dép Nam</h2>
                                        </div>
                                        <input type="hidden" id="loai" value="19">
                                        <div class="product-item" id="danhsachsanpham">
                                            <%
                                                Vector<Product> getProducts = new Data().getProducts(0, "", "", "", 0, 19, 18);
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
                                                            <a title="Thêm vào gi? hàng" class="btn btn-default" onclick="addToCart(<%=t.getMaSP()%>)"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
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

                                        </div>

                                        <div class="col-md-12 col-xs-12 pagin">

                                            <ul class="pagination"><li><a><span >&#171;</span></a></li><li class='active'><a href='default'><span >1</span></a></li><li><a><span>2</span></a></li><li><a><span>3</span></a></li><li><a href='default.jsp'><span >...</span></a></li><li><a><span>9</span></a></li><li><a><span>&#187;</span></a></li></ul>   

                                        </div>  
                                    </div>
                                </div>
                                <div class="col-md-3 col-xs-12 left-item pull-left hidden-xs">
                                    <%@include file="menu_left.jsp" %>               
                                </div>
                            </div>
                        </div>
                    </section><!--end menu-->

                    <%@include file="footer.jsp" %>    
                    <script src="public/default/js/bootstrap.min.js"></script>
                    <script type="text/javascript" src="public/default/js/jquery.smartmenus.js"></script>
                    <script type="text/javascript" src="public/default/js/addons/bootstrap/jquery.smartmenus.bootstrap.js"></script>
                    <script src="public/default/js/main_v1.js"></script>
                    <div></div></div></header></div>
    </body></html>
<script src="js/addToCart.js" type="text/javascript"></script>