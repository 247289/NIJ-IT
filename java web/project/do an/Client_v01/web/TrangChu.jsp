<%-- 
    Document   : index
    Created on : Nov 29, 2018, 11:33:10 PM
    Author     : Admin
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="DAO.SanPhamDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Trang Chủ </title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicons -->
        <link rel="shortcut icon" href="img/favicon.ico">
        <link crossorigin="anonymous" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" rel="stylesheet">
        <!-- Fontawesome css -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Ionicons css -->
        <link rel="stylesheet" href="css/ionicons.min.css">
        <!-- linearicons css -->
        <link rel="stylesheet" href="css/linearicons.css">
        <!-- Nice select css -->
        <link rel="stylesheet" href="css/nice-select.css">
        <!-- Jquery fancybox css -->
        <link rel="stylesheet" href="css/jquery.fancybox.css">
        <!-- Jquery ui price slider css -->
        <link rel="stylesheet" href="css/jquery-ui.min.css">
        <!-- Meanmenu css -->
        <link rel="stylesheet" href="css/meanmenu.min.css">
        <!-- Nivo slider css -->
        <link rel="stylesheet" href="css/nivo-slider.css">
        <!-- Owl carousel css -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <!-- Bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Custom css -->
        <link rel="stylesheet" href="css/default.css">
        <!-- Main css -->
        <link rel="stylesheet" href="style.css">
        <!-- Responsive css -->
        <link rel="stylesheet" href="css/responsive.css">

        <!-- Modernizer js -->
        <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    </head>

    <body>
         <!--Newsletter Popup Start -->
<div class="popup_wrapper new">
    <div class="test">
        <span class="popup_off" id="close"> x Đóng</span>
        <div class="subscribe_area text-center mt-60">
            <h2>Đăng Ký</h2>
            <p>Đăng ký ngay để nhận được thông báo các thông tin mới nhất và nhận được nhiều ưu đãi khuyến mại từ TrueMart.</p>
            <div class="subscribe-form-group">
                <form action="#">
                    <input autocomplete="off" type="text" name="message" id="message" placeholder="Nhập địa chỉ email của bạn...">
                    <button type="submit" ><a href="DangKy.jsp"></a>Đăng Ký</button>
                </form>
            </div>
            <div class="subscribe-bottom mt-15">
                <input type="checkbox" id="newsletter-permission">
                <label>
                    <input type="checkbox" class="check" ><span class="label-text">Không hiển thị cửa sổ này nữa!</span>
                </label>
            </div>
        </div>
    </div>
</div><!--
 Newsletter Popup End -->
        <div class="wrapper">
            <jsp:include page="Header.jsp" />
            <% TaiKhoan tk = (TaiKhoan)session.getAttribute("user"); 
                boolean tt =false;
                if (tk != null) {
                        tt = true;
                    }
            %>
            <!-- Hot Deal Products Start Here -->
            <div class="hot-deal-products off-white-bg pb-90 pb-sm-50">
                <div class="container">
                    <!-- Product Title Start -->
                    <div class="post-title pb-30">
                        <h2>Sản phẩm nổi bật</h2>
                    </div>
                    <!-- Product Title End -->
                    <!-- Hot Deal Product Activation Start -->
                    <div class="hot-deal-active owl-carousel" id="thu">
                        <%
                            ArrayList<SanPham> list = (ArrayList<SanPham>) request.getAttribute("sanpham");

                            for (int i = 0; i < list.size(); i++) {
                                SanPham a = list.get(i);

                        %>
                        <!-- Single Product Start -->

                        <div class="single-product">
                            <!-- Product Image Start -->
                            <div class="pro-img img">
                                <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>" class="thumb"> 
                                    <img class="primary-img img-fluid"  src="<%= a.getAlbumAnh().getAnh1()%>"  alt="single-product">  
                                    <img class="secondary-img"  src="<%= a.getAlbumAnh().getAnh2()%>" alt="single-product">
                                </a>
                                <!-- <div class="countdown" data-countdown="2018/11/27"></div> --> <!-- thời gian hiển thị đếm ngược -->
                                <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm"><i class="lnr lnr-magnifier"></i></a>
                            </div>
                            <!-- Product Image End -->
                            <!-- Product Content Start -->
                            <div class="pro-content">
                                <div class="pro-info">
                                    <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>" ><%= a.getTen()%></a></h4>
                                    <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$199,000</del></p>
                                    <div class="label-product l_sale">20<span class="symbol-percent">%</span></div>
                                </div>
                                <div class="pro-actions">
                                    <div class="actions-primary">
                                        <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                    </div>
                                    <div class="actions-secondary">
                                        <%if (tt == true) {
                                            %>
                                            <a  title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                            <%
                                            } else { %>
                                            <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                         <% } %> 
                                        <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span> Yêu Thích</span></a>
                                    </div>
                                </div>
                            </div>
                            <!-- Product Content End -->
                            <span class="sticker-new">HOT</span>
                        </div>
                        <!-- Single Product End -->
                        <%
                            }
                        %>
                    </div>
                    <!-- Hot Deal Product Active End -->

                </div>
                <!-- Container End -->
            </div>
            <!-- Hot Deal Products End Here -->
            <!-- Hot Deal Products End Here -->

            <!-- Big Banner Start Here -->
            <div class="big-banner mt-100 pb-85 mt-sm-60 pb-sm-45">
                <div class="container banner-2">
                    <div class="row">
                        <div class="banner-box col-lg-2">
                            <div class="col-img img-thumbnail">
                                <a href="#"><img class="img" src="img/banner/samsunga8.jpg" alt="banner 3"></a>
                            </div>
                            <div class="col-img img-thumbnail">
                                <a href="#"><img src="img/banner/a8.jpg" alt="banner 3"></a>
                            </div>
                        </div>
                        <div class="banner-box img-thumbnail col-lg-2">
                            <div class="col-img ">
                                <a href="#"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN0W9uUMfGPJj1Cmp9V-7_DzAFZ_kgz-3QQCCKEZKV8aH82SGc" alt="banner 3"></a>
                            </div>
                        </div>
                        <div class="banner-box  col-lg-2">
                            <div class="col-img img-thumbnail">
                                <a href="#"><img src="img/banner/op.jpg" alt="banner 3"></a>
                            </div>
                            <div class="col-img img-thumbnail">
                                <a href="#"><img src="img/banner/tainghe.jpg" alt="banner 3"></a>
                            </div>
                        </div>
                        <div class="banner-box  col-lg-2">
                            <div class="col-img img-thumbnail">
                                <a href="#"><img src="img/banner/EE-HG950DBEGWW__16412_std.jpg" alt="banner 3"></a>
                            </div>
                            <div class="col-img img-thumbnail">
                                <a href="#"><img src="img/banner/Xiaomi-Redmi-6A-300x300.jpg" alt="banner 3"></a>
                            </div>
                        </div>
                        <div class="banner-box  img-thumbnail col-lg-2">
                            <div class="col-img">
                                <a href="#"><img src="https://sc01.alicdn.com/kf/HTB1RFSdOFXXXXbXXVXXq6xXFXXX6.jpg" alt="banner 3"></a>
                            </div>
                        </div>
                        <div class="banner-box  col-lg-2">
                            <div class="col-img img-thumbnail">
                                <a href="#"><img src="img/banner/op2.jpg" alt="banner 3"></a>
                            </div>
                            <div class="col-img img-thumbnail">
                                <a href="#"><img src="img/banner/asus.jpg" alt="banner 3"></a>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- Container End -->
            </div>
            <!-- Big Banner End Here -->
            <!-- Arrivals Products Area Start Here -->
            <div class="arrivals-product pb-85 pb-sm-45">
                <div class="container">
                    <div class="main-product-tab-area">
                        <div class="tab-menu mb-25">
                            <div class="post-title ">
                                <h2>Sản Phẩm Mới</h2>
                            </div>
                            <!-- Nav tabs -->
                        <ul class="nav tabs-area" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#apple">Apple</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#samsung">SamSung</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#oppo">Oppo</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#xiaomi">Xiaomi </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#nokia">Nokia </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#asus">Asus </a>
                            </li>
                        </ul>                       
                        </div> 
                        
                        <!-- Tab Contetn Start -->
                        <div class="tab-content">
                            <div id="apple" class="tab-pane fade show active">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            ArrayList<SanPham> apple = (ArrayList<SanPham>) request.getAttribute("apple");

                            for (int i = 0; i < apple.size(); i++) {
                                SanPham a = apple.get(i);
                                %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <%if (tt == true) {
                                                        %>
                                                        <a title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                        <%
                                                        } else { %>
                                                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                     <% } %> 
                                                    <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>+ Yêu Thích</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                        <span class="sticker-new">new</span>
                                    </div>
                                    <!-- Single Product End -->
                                    </div>
                                <!-- Double Product End -->
                                <% 
                                }
                                %>
                                
                            </div>
                            <!-- Arrivals Product Activation End Here -->
                        </div>
                        <!-- #apple End Here -->
                        
                        <div id="samsung" class="tab-pane fade ">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            ArrayList<SanPham> samsung = (ArrayList<SanPham>) request.getAttribute("samsung");

                            for (int i = 0; i < samsung.size(); i++) {
                                SanPham a = samsung.get(i);
                                %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                            </a>
                                                <a href="#" class="quick_view" data-toggle="modal" data-target="#" title="Xem Sản Phẩm" ><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <%if (tt == true) {
                                                        %>
                                                        <a  title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                        <%
                                                        } else { %>
                                                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                     <% } %> 
                                                    <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>+ Yêu Thích</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                        <span class="sticker-new">new</span>
                                    </div>
                                    <!-- Single Product End -->
                                    </div>
                                <!-- Double Product End -->
                                <% 
                                }
                                %>
                                
                            </div>
                            <!-- Arrivals Product Activation End Here -->
                        </div>
                        <!-- #samsung End Here -->
                        
                        <div id="oppo" class="tab-pane fade ">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            ArrayList<SanPham> oppo = (ArrayList<SanPham>) request.getAttribute("oppo");

                            for (int i = 0; i < oppo.size(); i++) {
                                SanPham a = oppo.get(i);
                                %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                            </a>
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" ><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <%if (tt == true) {
                                                        %>
                                                        <a  title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                        <%
                                                        } else { %>
                                                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                     <% } %> 
                                                    <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>+ Yêu Thích</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                        <span class="sticker-new">new</span>
                                    </div>
                                    <!-- Single Product End -->
                                    </div>
                                <!-- Double Product End -->
                                <% 
                                }
                                %>
                                
                            </div>
                            <!-- Arrivals Product Activation End Here -->
                        </div>
                        <!-- #oppo End Here -->
                        
                        <div id="nokia" class="tab-pane fade ">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            ArrayList<SanPham> nokia = (ArrayList<SanPham>) request.getAttribute("nokia");

                            for (int i = 0; i < nokia.size(); i++) {
                                SanPham a = nokia.get(i);
                                %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                            </a>
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <%if (tt == true) {
                                                        %>
                                                        <a  title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                        <%
                                                        } else { %>
                                                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                     <% } %> 
                                                    <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>+ Yêu Thích</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                        <span class="sticker-new">new</span>
                                    </div>
                                    <!-- Single Product End -->
                                    </div>
                                <!-- Double Product End -->
                                <% 
                                }
                                %>
                                
                            </div>
                            <!-- Arrivals Product Activation End Here -->
                        </div>
                        <!-- #nokia End Here -->
                        
                        <div id="asus" class="tab-pane fade ">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            ArrayList<SanPham> asus = (ArrayList<SanPham>) request.getAttribute("asus");

                            for (int i = 0; i < asus.size(); i++) {
                                SanPham a = asus.get(i);
                                %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                            </a>
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <%if (tt == true) {
                                                        %>
                                                        <a  title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                        <%
                                                        } else { %>
                                                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                     <% } %> 
                                                    <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>+ Yêu Thích</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                        <span class="sticker-new">new</span>
                                    </div>
                                    <!-- Single Product End -->
                                    </div>
                                <!-- Double Product End -->
                                <% 
                                }
                                %>
                                
                            </div>
                            <!-- Arrivals Product Activation End Here -->
                        </div>
                        <!-- #asus End Here -->
                        
                        <div id="xiaomi" class="tab-pane fade ">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            ArrayList<SanPham> xiaomi = (ArrayList<SanPham>) request.getAttribute("xiaomi");

                            for (int i = 0; i < xiaomi.size(); i++) {
                                SanPham a = xiaomi.get(i);
                                %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                            </a>
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#xiaomi2" title="Xem Sản Phẩm"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <%if (tt == true) {
                                                        %>
                                                        <a  title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                        <%
                                                        } else { %>
                                                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                     <% } %> 
                                                    <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>+ Yêu Thích</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                        <span class="sticker-new">new</span>
                                    </div>
                                    <!-- Single Product End -->
                                    </div>
                                <!-- Double Product End -->
                        <!-- Quick View Content Start -->
                            
                        <!-- Quick View Content End -->
                        
                                <% 
                                }
                                %>
                                
                            </div>
                            <!-- Arrivals Product Activation End Here -->
                        </div>
                        <!-- #xiaomi End Here -->
                    </div>
                    <!-- Tab Content End -->
                </div>
                <!-- main-product-tab-area-->
            </div>
            <!-- Container End -->
            </div>
            <!-- Arrivals Products Area End Here -->
            <!-- Arrivals Products Area Start Here -->
            <div class="second-arrivals-product pb-45 pb-sm-5">
                <div class="container">
                    <div class="main-product-tab-area">
                        <div class="tab-menu mb-25">
                            <div class="post-title">
                                <h2>Sản Phẩm Khuyến Mại</h2>
                            </div>
                            <!-- Nav tabs -->
                            <ul class="nav tabs-area" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#a">Apple</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#s">SamSung</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#o">Oppo</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#x">Xiaomi</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#n">Nokia</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#as">Asus</a>
                                </li>
                            </ul>                       

                        </div> 
                        <!-- Tab Contetn Start -->
                        <div class="tab-content">
                            <div  class="tab-pane fade show active">
                                <!-- Arrivals Product Activation Start Here -->
                                <div class="best-seller-pro-active owl-carousel" id="a">
                                        <%
                            ArrayList<SanPham> ap = (ArrayList<SanPham>) request.getAttribute("apple");

                            for (int i = 0; i < ap.size(); i++) {
                                SanPham a = ap.get(i);
                                %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                <div class="countdown" data-countdown="2018/12/27"></div>
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <%if (tt == true) {
                                                        %>
                                                        <a  title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                        <%
                                                        } else { %>
                                                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                     <% } %> 
                                                    <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>+ Yêu Thích</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                        <span class="sticker-new">sale</span>
                                    </div>
                                    <!-- Single Product End -->
                                    </div>
                                <!-- Double Product End -->
                                <% 
                                }
                                %>
                                
                                </div>
                                <!-- Arrivals Product Activation End Here -->
                            </div>
                            <!-- #apple End Here -->

                            <div id="s" class="tab-pane fade">
                                <!-- Arrivals Product Activation Start Here -->
                                <div class="best-seller-pro-active owl-carousel">
                                             <%
                            ArrayList<SanPham> s = (ArrayList<SanPham>) request.getAttribute("samsung");

                            for (int i = 0; i < s.size(); i++) {
                                SanPham a = s.get(i);
                                %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                <div class="countdown" data-countdown="2018/12/27"></div>
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <%if (tt == true) {
                                                        %>
                                                        <a  title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                        <%
                                                        } else { %>
                                                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                     <% } %> 
                                                    <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>+ Yêu Thích</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                        <span class="sticker-new">sale</span>
                                    </div>
                                    <!-- Single Product End -->
                                    </div>
                                <!-- Double Product End -->
                                <% 
                                }
                                %>
                            
                                </div>
                                <!-- Arrivals Product Activation End Here -->
                            </div>
                            <!-- #samsung End Here -->
                            <div id="o" class="tab-pane fade">
                                <!-- Arrivals Product Activation Start Here -->
                                <div class="best-seller-pro-active owl-carousel">
                                             <%
                            ArrayList<SanPham> o = (ArrayList<SanPham>) request.getAttribute("oppo");

                            for (int i = 0; i < o.size(); i++) {
                                SanPham a = o.get(i);
                                %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                <div class="countdown" data-countdown="2018/12/30"></div>
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <%if (tt == true) {
                                                        %>
                                                        <a  title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                        <%
                                                        } else { %>
                                                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                     <% } %> 
                                                    <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>+ Yêu Thích</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                        <span class="sticker-new">sale</span>
                                    </div>
                                    <!-- Single Product End -->
                                    </div>
                                <!-- Double Product End -->
                                <% 
                                }
                                %>
                            
                                </div>
                                <!-- Arrivals Product Activation End Here -->
                            </div>
                            <!-- #oppo End Here -->
                            <div id="x" class="tab-pane fade">
                                <!-- Arrivals Product Activation Start Here -->
                                <div class="best-seller-pro-active owl-carousel">
                                             <%
                            ArrayList<SanPham> x = (ArrayList<SanPham>) request.getAttribute("xiaomi");

                            for (int i = 0; i < x.size(); i++) {
                                SanPham a = x.get(i);
                                %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                <div class="countdown" data-countdown="2018/12/28"></div>
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <%if (tt == true) {
                                                        %>
                                                        <a  title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                        <%
                                                        } else { %>
                                                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                     <% } %> 
                                                    <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>+ Yêu Thích</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                        <span class="sticker-new">sale</span>
                                    </div>
                                    <!-- Single Product End -->
                                    </div>
                                <!-- Double Product End -->
                                <% 
                                }
                                %>
                            
                                </div>
                                <!-- Arrivals Product Activation End Here -->
                            </div>
                            <!-- #xiaomi End Here -->
                            <div id="n" class="tab-pane fade">
                                <!-- Arrivals Product Activation Start Here -->
                                <div class="best-seller-pro-active owl-carousel">
                                             <%
                            ArrayList<SanPham> n = (ArrayList<SanPham>) request.getAttribute("nokia");

                            for (int i = 0; i < n.size(); i++) {
                                SanPham a = n.get(i);
                                %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                <div class="countdown" data-countdown="2018/12/26"></div>
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <%if (tt == true) {
                                                        %>
                                                        <a  title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                        <%
                                                        } else { %>
                                                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                     <% } %> 
                                                    <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>+ Yêu Thích</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                        <span class="sticker-new">sale</span>
                                    </div>
                                    <!-- Single Product End -->
                                    </div>
                                <!-- Double Product End -->
                                <% 
                                }
                                %>
                            
                                </div>
                                <!-- Arrivals Product Activation End Here -->
                            </div>
                            <!-- #nokia End Here -->
                            <div id="as" class="tab-pane fade">
                                <!-- Arrivals Product Activation Start Here -->
                                <div class="best-seller-pro-active owl-carousel">
                            <%
                            ArrayList<SanPham> as = (ArrayList<SanPham>) request.getAttribute("asus");

                            for (int i = 0; i < as.size(); i++) {
                                SanPham a = as.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                <div class="countdown" data-countdown="2018/12/25"></div>
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp?masp=<%= a.getId()%>&amp;idnsx=<%= a.getId_nhasanxuat() %>"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= NumberFormat.getInstance().format(a.getGia())%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a onclick="addToCart(<%= a.getId()%>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <%if (tt == true) {
                                                        %>
                                                        <a  title="Mua Hàng" href="ThanhToan.jsp"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                        <%
                                                        } else { %>
                                                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                                     <% } %> 
                                                    <a href="YeuThich.jsp" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>+ Yêu Thích</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                        <span class="sticker-new">sale</span>
                                    </div>
                                    <!-- Single Product End -->
                                    </div>
                                <!-- Double Product End -->
                                <% 
                                }
                                %>
                            
                                </div>
                                <!-- Arrivals Product Activation End Here -->
                            </div>
                            <!-- #asus End Here -->
                            
                            
                        </div>
                        <!-- Tab Content End -->
                    </div>
                    <!-- main-product-tab-area-->
                </div>
                <!-- Container End -->
            </div>
            <!-- Arrivals Products Area End Here -->

            <!-- Lile Products Area End Here -->
            <div class="big-banner pb-100 pb-sm-60">
                <div class="container big-banner-box">
                    <div class="col-img">
                        <a href="#">
                            <img src="img/banner/bigsale2.jpg" alt="">
                        </a>
                    </div>
                    <div class="col-img">
                        <a href="#">
                            <img src="img/banner/bigsale.jpg" alt="">
                        </a>
                    </div>
                </div>
                <!-- Container End -->
            </div>
            <jsp:include page="Footer.jsp" />

        <!-- Quick View Content End -->
        </div>
        <!-- Main Wrapper End Here -->

        <!-- jquery 3.2.1 -->
        <script src="js/vendor/jquery-3.2.1.min.js"></script>
        <!-- Countdown js -->
        <script src="js/jquery.countdown.min.js"></script>
        <!-- Mobile menu js -->
        <script src="js/jquery.meanmenu.min.js"></script>
        <!-- ScrollUp js -->
        <script src="js/jquery.scrollUp.js"></script>
        <!-- Nivo slider js -->
        <script src="js/jquery.nivo.slider.js"></script>
        <!-- Fancybox js -->
        <script src="js/jquery.fancybox.min.js"></script>
        <!-- Jquery nice select js -->
        <script src="js/jquery.nice-select.min.js"></script>
        <!-- Jquery ui price slider js -->
        <script src="js/jquery-ui.min.js"></script>
        <!-- Owl carousel -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- Bootstrap popper js -->
        <script src="js/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Plugin js -->
        <script src="js/plugins.js"></script>
        <!-- Main activaion js -->
        <script src="js/main.js"></script>
        <script type="text/javascript">

        jQuery(document).ready(function ($) {
            $('#close').click(function (event) {
                $('.new').hide();
            });
        });
        
           
        </script>
        <script src="js/addToCart.js" type="text/javascript"></script>
    </body>

</html>
