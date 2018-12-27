<%-- 
    Document   : SanPham
    Created on : Dec 14, 2018, 9:37:10 PM
    Author     : Admin
--%>

<%@page import="dto.TaiKhoan"%>
<%@page import="java.util.List"%>
<%@page import="dto.SanPham"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Sảm Phẩm </title>
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
    <div class="wrapper">
        <jsp:include page="Header.jsp" />
    </div>
    <% TaiKhoan tk = (TaiKhoan)session.getAttribute("user"); 
                boolean tt =false;
                if (tk != null) {
                        tt = true;
                    }
            %>
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-area mt-30">
            <div class="container">
                <div class="breadcrumb">
                    <ul class="d-flex align-items-center">
                        <li><a href="index.jsp">Trang Chủ</a></li>
                        <li class="active"><a href="SanPhamServletDm">Sản Phẩm</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Breadcrumb End -->
        
        <!-- Shop Page Start -->
            <div class="main-shop-page pt-100 pb-100 ptb-sm-60">
                <div class="container">
                    <!-- Row End -->
                    <div class="row">
                        <!-- Sidebar Shopping Option Start -->
                        <div class="col-lg-3 order-2 order-lg-1">
                           
                            <div class=" mb-all-30">
                                <h3 class="sidebar-title mb-0">Thương hiệu</h3>
                                <div class="sanpham" >
                                    <ul class="clearfix" style="padding: 15px">
                                        <a href="#apple">
                                        <li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                <input type="checkbox" name="check" ><span class="label-text">Apple</span>
                                            </label>
                                        </li>
                                        </a>
                                        <a href="#samsung"><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">Samsung</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="#oppo"><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                    <input type="checkbox" name="check"><span class="label-text">Oppo</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="#xiaomi"><li style="padding : 10px;padding-left: 0;">                                            
                                            <label>
                                                
                                                    <input type="checkbox" name="check"><span class="label-text">Xiaomi</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="#nokia"><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">Nokia</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="#asus"><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">Asus</span>
                                                
                                            </label>
                                        </li></a>
                                    </ul>
                                </div>
                            </div> <hr />
                             <div class="sidebar">
                            <!-- Price Filter Options Start -->
                            <div class="search-filter mb-40 mt-10 pt-40">
                                <h3 class="sidebar-title">Mức Giá (USB)</h3>
                                <form action="#" class="sidbar-style">
                                    <div id="slider-range"></div>
                                    <input type="text" id="amount" class="amount-range" readonly>
                                </form>
                            </div> 
                            <!-- Price Filter Options End -->
                            </div><hr/>
                            
                            <div class=" mb-all-30 mt-40">
                                <h3 class="sidebar-title mb-0">Đánh giá</h3>
                                <div>
                                    <ul class="clearfix" style="padding: 15px">
                                        <li style="padding : 10px;padding-left: 0;">
                                            <i class="fas fa-star"></i><i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                                            <a href="#">
                                                <label>
						<input type="radio" name="radio" > <span class="label-text">Chọn</span>
                                                </label>
                                            </a>
                                        </li>
                                        <li style="padding : 10px;padding-left: 0;">
                                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i><i class="far fa-star"></i>
                                            <label>
						<input type="radio" name="radio"> <span class="label-text">Chọn</span>
                                            </label>
                                        </li>
                                        <li style="padding : 10px;padding-left: 0;">
                                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                                            <i class="far fa-star"></i><i class="far fa-star"></i>
                                            <a href="#"><label>
						<input type="radio" name="radio"> <span class="label-text">Chọn</span>
                                            </label></a>
                                        </li>
                                        <li style="padding : 10px;padding-left: 0;">
                                            <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
                                            <i class="far fa-star"></i><i class="far fa-star"></i>
                                            <a href="#"><label>
						<input type="radio" name="radio"> <span class="label-text">Chọn</span>
                                            </label></a>
                                        </li>
                                        <li style="padding : 10px;padding-left: 0;">
                                            <i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>
                                            <i class="far fa-star"></i><i class="far fa-star"></i>
                                            <a href="#"><label>
						<input type="radio" name="radio"> <span class="label-text">Chọn</span>
                                            </label></a>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </div> <hr/>
                            
                            <!--kha nang lưu trữ start-->
                            <div class=" mb-all-30 mt-40">
                                <h3 class="sidebar-title mb-0">Khả năng lưu trữ</h3>
                                <div class="sanpham" >
                                    <ul class="clearfix" style="padding: 15px">
                                        <a href="#">
                                        <li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                <input type="checkbox" name="check" ><span class="label-text">4GB</span>
                                            </label>
                                        </li>
                                        </a>
                                        <a href="#"><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">8GB</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="# "><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">16GB</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="#"><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                    <input type="checkbox" name="check"><span class="label-text">32GB</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="# "><li style="padding : 10px;padding-left: 0;">                                            
                                            <label>
                                                
                                                    <input type="checkbox" name="check"><span class="label-text">64GB</span>
                                                
                                            </label>
                                        </li></a>
                                        
                                        <a href="# "><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">Dưới 1GB</span>
                                                
                                            </label>
                                        </li></a>
                                    </ul>
                                </div>
                            </div> <hr />
                            <!--kha năng lưu trữ end-->
                             <!--kích thước màn hình start-->
                             <div class=" mb-all-30 mt-40">
                                <h3 class="sidebar-title mb-0">Màn hình</h3>
                                <div class="sanpham" >
                                    <ul class="clearfix" style="padding: 15px">
                                        <a href="#">
                                        <li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                <input type="checkbox" name="check" ><span class="label-text">3.6 - 4inch</span>
                                            </label>
                                        </li>
                                        </a>
                                        <a href="#"><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">4.1 - 4.5inch</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="# "><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">4.6 - 5inch</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="#"><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                    <input type="checkbox" name="check"><span class="label-text">5.1 - 5.5inch</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="# "><li style="padding : 10px;padding-left: 0;">                                            
                                            <label>
                                                
                                                    <input type="checkbox" name="check"><span class="label-text">Lớn hơn 5.6inch</span>
                                                
                                            </label>
                                        </li></a>
                                        
                                        <a href="# "><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">Nhỏ hơn 3.5inch</span>
                                                
                                            </label>
                                        </li></a>
                                    </ul>
                                </div>
                            </div> <hr />
                             <!--kích thước màn hình end-->
                             <!--bộ nhớ ram start -->
                             <div class=" mb-all-30 mt-40">
                                <h3 class="sidebar-title mb-0">Bộ nhớ RAM</h3>
                                <div class="sanpham" >
                                    <ul class="clearfix" style="padding: 15px">
                                        <a href="#">
                                        <li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                <input type="checkbox" name="check" ><span class="label-text">1GB</span>
                                            </label>
                                        </li>
                                        </a>
                                        <a href="#"><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">2GB</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="# "><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">3GB</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="#"><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                    <input type="checkbox" name="check"><span class="label-text">4GB</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="# "><li style="padding : 10px;padding-left: 0;">                                            
                                            <label>
                                                
                                                    <input type="checkbox" name="check"><span class="label-text">6GB</span>
                                                
                                            </label>
                                        </li></a>
                                        
                                        <a href="# "><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">8GB</span>
                                                
                                            </label>
                                        </li></a>
                                        <a href="# "><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">Lớn hơn 8GB</span>
                                                
                                            </label>
                                        </li></a>
                                    </ul>
                                </div>
                            </div> <hr />
                            
                             <!--bộ nhớ ram end-->
                             
                             <div class=" mb-all-30 mt-40">
                                <h3 class="sidebar-title mb-0">Khe sim</h3>
                                <div class="sanpham" >
                                    <ul class="clearfix" style="padding: 15px">
                                        
                                        <a href="#"><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                    <input type="checkbox" name="check"><span class="label-text">Kép</span>
                                            </label>
                                        </li></a>
                                        <a href="# "><li style="padding : 10px;padding-left: 0;">                                            
                                            <label>
                                                
                                                    <input type="checkbox" name="check"><span class="label-text">Single</span>
                                                
                                            </label>
                                        </li></a>
                                        
                                        <a href="# "><li style="padding : 10px;padding-left: 0;">
                                            <label>
                                                
                                                <input type="checkbox" name="check"><span class="label-text">3 trở lên</span>
                                                
                                            </label>
                                        </li></a>
                                    </ul>
                                </div>
                            </div> <hr />
                            <!-- Single Banner Start -->
                            
                            <div class="col-img mt-40">
                                <a href="shop.jsp"><img src="img/banner/banner-sidebar.jpg" alt="slider-banner"></a>
                            </div>
                        </div>
                        <div class="col-lg-9 order-1 order-lg-2">
                            <div class="arrivals-product pb-60 pb-sm-45">
            <div class="container">
                <div class="main-product-tab-area">
                    <div class="tab-menu mb-25">
                        <div class="post-title ">
                            <h2>Apple</h2>
                       </div>
                        <!-- Nav tabs -->
                        <ul class="nav tabs-area" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#dtapple">Điện Thoại</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tbapple">Tablet</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#pkapple">Phụ Kiện</a>
                            </li>
                        </ul>                       
                    </div> 
                    <!-- Tab Contetn Start -->
                    <div class="tab-content">
                        <div  class="tab-pane fade show active" id="dtapple">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel" >
                                <%
                            List<SanPham> ap = (List<SanPham>)request.getAttribute("dtapple");

                            for (int i = 0; i < ap.size(); i++) {
                                SanPham a = ap.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #dtapple End Here -->
                        <div id="tbapple" class="tab-pane fade ">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> ap2 = (List<SanPham>)request.getAttribute("tabletapple");

                            for (int i = 0; i < ap2.size(); i++) {
                                SanPham a = ap2.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #tbapple End Here -->
                       
                        <div id="pkapple" class="tab-pane fade">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> ap3 = (List<SanPham>)request.getAttribute("dtapple");

                            for (int i = 0; i < ap3.size(); i++) {
                                SanPham a = ap3.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #pkapple End Here -->
                    </div>
                    <!-- Tab Content End -->
                </div>
                <!-- main-product-tab-area-->
            </div>
            <!-- Container End -->
        </div>
        <!-- Arrivals Products Area End Here -->

<div class="arrivals-product pb-60 pb-sm-45">
            <div class="container"><hr class="pb-10" style="border-color: red">
                <div class="main-product-tab-area">
                    <div class="tab-menu mb-25">
                        <div class="post-title ">
                            <h2>Samsung</h2>
                       </div>
                        <!-- Nav tabs -->
                        <ul class="nav tabs-area" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#dtsam">Điện Thoại</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tbsam">Tablet</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#pksam">Phụ Kiện</a>
                            </li>
                        </ul>                       
                    </div> 
                    <!-- Tab Contetn Start -->
                    <div class="tab-content">
                        <div id="dtsam" class="tab-pane fade show active">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> s1 = (List<SanPham>)request.getAttribute("dtsamsung");

                            for (int i = 0; i < s1.size(); i++) {
                                SanPham a = s1.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #dtsam End Here -->
                        <div id="tbsam" class="tab-pane fade ">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> s2 = (List<SanPham>)request.getAttribute("tabletsamsung");

                            for (int i = 0; i < s2.size(); i++) {
                                SanPham a = s2.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #tbsam End Here -->
                        <div id="pksam" class="tab-pane fade">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> s3 = (List<SanPham>)request.getAttribute("dtsamsung");

                            for (int i = 0; i < s3.size(); i++) {
                                SanPham a = s3.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #pksam End Here -->
                    </div>
                    <!-- Tab Content End -->
                </div>
                <!-- main-product-tab-area-->
            </div>
            <!-- Container End -->
        </div>
        <!-- Arrivals Products Area End Here -->
<div class="arrivals-product pb-60 pb-sm-45">
            <div class="container">
                <div class="main-product-tab-area">
                    <hr class="pb-10" style="border-color: red">
                    <div class="tab-menu mb-25">
                        <div class="post-title ">
                            <h2>Oppo</h2>
                       </div>
                        <!-- Nav tabs -->
                        <ul class="nav tabs-area" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#dtoppo">Điện Thoại</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tboppo">Tablet</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#pkoppo">Phụ Kiện</a>
                            </li>
                        </ul>                       
                    </div> 
                    <!-- Tab Contetn Start -->
                    <div class="tab-content">
                        <div id="dtoppo" class="tab-pane fade show active">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> o1 = (List<SanPham>)request.getAttribute("dtoppo");

                            for (int i = 0; i < o1.size(); i++) {
                                SanPham a = o1.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #dtoppo End Here -->
                        <div id="tboppo" class="tab-pane fade ">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> o2 = (List<SanPham>)request.getAttribute("dtoppo");

                            for (int i = 0; i < o2.size(); i++) {
                                SanPham a = o2.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #tboppo End Here -->
                        <div id="pkoppo" class="tab-pane fade">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> o3 = (List<SanPham>)request.getAttribute("dtoppo");

                            for (int i = 0; i < o3.size(); i++) {
                                SanPham a = o3.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #pkoppo End Here -->
                    </div>
                    <!-- Tab Content End -->
                </div>
                <!-- main-product-tab-area-->
            </div>
            <!-- Container End -->
        </div>
        <!-- Arrivals Products Area End Here -->
<div class="arrivals-product pb-60 pb-sm-45">
            <div class="container">
                <div class="main-product-tab-area">
                    <hr class="pb-10" style="border-color: red">
                    <div class="tab-menu mb-25">
                        <div class="post-title ">
                            <h2 id="xiaomi">Xiaomi</h2>
                       </div>
                        <!-- Nav tabs -->
                        <ul class="nav tabs-area" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#dtxiaomi">Điện Thoại</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tbxiaomi">Tablet</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#pkxiaomi">Phụ Kiện</a>
                            </li>
                        </ul>                       
                    </div> 
                    <!-- Tab Contetn Start -->
                    <div class="tab-content">
                        <div id="dtxiaomi" class="tab-pane fade show active">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> x1 = (List<SanPham>)request.getAttribute("dtxiaomi");

                            for (int i = 0; i < x1.size(); i++) {
                                SanPham a = x1.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #dtxiaomi End Here -->
                        <div id="tbxiaomi" class="tab-pane fade ">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> x2 = (List<SanPham>)request.getAttribute("tabletxiaomi");

                            for (int i = 0; i < x2.size(); i++) {
                                SanPham a = x2.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #tbxiaomi End Here -->
                        
                        <div id="pkxiaomi" class="tab-pane fade">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> x3 = (List<SanPham>)request.getAttribute("dtxiaomi");

                            for (int i = 0; i < x3.size(); i++) {
                                SanPham a = x3.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #pkxiaomi End Here -->
                    </div>
                    <!-- Tab Content End -->
                </div>
                <!-- main-product-tab-area-->
            </div>
            <!-- Container End -->
        </div>
        <!-- Arrivals Products Area End Here -->
<div class="arrivals-product pb-60 pb-sm-45">
            <div class="container">
                <div class="main-product-tab-area">
                    <hr class="pb-10" style="border-color: red">
                    <div class="tab-menu mb-25">
                        <div class="post-title ">
                            <h2>Nokia</h2>
                       </div>
                        <!-- Nav tabs -->
                        <ul class="nav tabs-area" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#dtnokia">Điện Thoại</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tbnokia">Tablet</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#pknokia">Phụ Kiện</a>
                            </li>
                        </ul>                       
                    </div> 
                    <!-- Tab Contetn Start -->
                    <div class="tab-content">
                        <div id="dtnokia" class="tab-pane fade show active">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> n1 = (List<SanPham>)request.getAttribute("dtnokia");

                            for (int i = 0; i < n1.size(); i++) {
                                SanPham a = n1.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #dtnokia End Here -->
                        <div id="tbnokia" class="tab-pane fade ">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> n2 = (List<SanPham>)request.getAttribute("tabletnokia");

                            for (int i = 0; i < n2.size(); i++) {
                                SanPham a = n2.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #tbnokia End Here -->
                       
                        
                        <div id="pknokia" class="tab-pane fade">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> n3 = (List<SanPham>)request.getAttribute("dtnokia");

                            for (int i = 0; i < n3.size(); i++) {
                                SanPham a = n3.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #pknokia End Here -->
                    </div>
                    <!-- Tab Content End -->
                </div>
                <!-- main-product-tab-area-->
            </div>
            <!-- Container End -->
        </div>
        <!-- Arrivals Products Area End Here -->
<div class="arrivals-product pb-sm-45">
            <div class="container">
                <div class="main-product-tab-area">
                    <hr class="pb-10" style="border-color: red">
                    <div class="tab-menu mb-25">
                        <div class="post-title ">
                            <h2>Asus</h2>
                       </div>
                        <!-- Nav tabs -->
                        <ul class="nav tabs-area" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#dtasus">Điện Thoại</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tbasus">Tablet</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#pkasus">Phụ Kiện</a>
                            </li>
                        </ul>                       
                    </div> 
                    <!-- Tab Contetn Start -->
                    <div class="tab-content">
                        <div id="dtasus" class="tab-pane fade show active">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> as1 = (List<SanPham>)request.getAttribute("dtasus");

                            for (int i = 0; i < as1.size(); i++) {
                                SanPham a = as1.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #dtasus End Here -->
                        <div id="tbasus" class="tab-pane fade ">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> as2 = (List<SanPham>)request.getAttribute("tabletasus");

                            for (int i = 0; i < as2.size(); i++) {
                                SanPham a = as2.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #tbasus End Here -->
                       
                        <div id="pkasus" class="tab-pane fade">
                            <!-- Arrivals Product Activation Start Here -->
                            <div class="electronics-pro-active owl-carousel">
                                <%
                            List<SanPham> as3 = (List<SanPham>)request.getAttribute("dtasus");

                            for (int i = 0; i < as3.size(); i++) {
                                SanPham a = as3.get(i);
                            %>
                                <!-- Double Product Start -->
                                    <div class="double-product">
                                    <!-- Single Product Start -->
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="ViewSanPham.jsp?masp=<%= a.getId() %>">
                                                <img class="primary-img" src="<%= a.getAlbumAnh().getAnh1() %>" alt="single-product">
                                                <img class="secondary-img" src="<%= a.getAlbumAnh().getAnh2() %>" alt="single-product">
                                                
                                            </a>
                                            
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm" id="id"><i class="lnr lnr-magnifier" ></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info">
                                                <h4><a href="ViewSanPham.jsp"><%= a.getTen() %></a></h4>
                                                <p><span class="price"><%= a.getGia()%></span><del class="prev-price">$400.50</del></p>
                                                <div class="label-product l_sale">30<span class="symbol-percent">%</span></div>
                                            </div>
                                            <div class="pro-actions">
                                                <div class="actions-primary">
                                                    <a href="GioHang.jsp?idsp=<%= a.getId() %>" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
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
                        <!-- #pkasus End Here -->
                    </div>
                    <!-- Tab Content End -->
                </div>
                <!-- main-product-tab-area-->
            </div>
            <!-- Container End -->
        </div>
        <!-- Arrivals Products Area End Here -->
              </div>
                    
          </div>
      </div>
  </div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- Shop Page End -->
<jsp:include page="Footer.jsp" />
        <!-- Quick View Content Start -->
        <div class="main-product-thumbnail quick-thumb-content">
            <div class="container">
                <!-- The Modal -->
                <div class="modal fade" id="myModal">
                    <div class="modal-dialog modal-lg modal-dialog-centered">
                        <div class="modal-content">
                            <!-- Modal Header -->
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <!-- Modal body -->
                            <div class="modal-body">
                                <div class="row">
                                    <!-- Main Thumbnail Image Start -->
                                    <div class="col-lg-5 col-md-6 col-sm-5">
                                        <!-- Thumbnail Large Image start -->
                                        <div class="tab-content">
                                            <div id="thumb-1" class="tab-pane fade show active">
                                                <a data-fancybox="images" href="img/products/35.jpg"><img src="img/products/35.jpg" alt="product-view"></a>
                                            </div>
                                            <div id="thumb-2" class="tab-pane fade">
                                                <a data-fancybox="images" href="img/products/13.jpg"><img src="img/products/13.jpg" alt="product-view"></a>
                                            </div>
                                            <div id="thumb-3" class="tab-pane fade">
                                                <a data-fancybox="images" href="img/products/15.jpg"><img src="img/products/15.jpg" alt="product-view"></a>
                                            </div>
                                            <div id="thumb-4" class="tab-pane fade">
                                                <a data-fancybox="images" href="img/products/4.jpg"><img src="img/products/4.jpg" alt="product-view"></a>
                                            </div>
                                            <div id="thumb-5" class="tab-pane fade">
                                                <a data-fancybox="images" href="img/products/5.jpg"><img src="img/products/5.jpg" alt="product-view"></a>
                                            </div>
                                        </div>
                                        <!-- Thumbnail Large Image End -->
                                        <!-- Thumbnail Image End -->
                                        <div class="product-thumbnail mt-20">
                                            <div class="thumb-menu owl-carousel nav tabs-area" role="tablist">
                                                <a class="active" data-toggle="tab" href="#thumb-1"><img src="img/products/35.jpg" alt="product-thumbnail"></a>
                                                <a data-toggle="tab" href="#thumb-2"><img src="img/products/13.jpg" alt="product-thumbnail"></a>
                                                <a data-toggle="tab" href="#thumb-3"><img src="img/products/15.jpg" alt="product-thumbnail"></a>
                                                <a data-toggle="tab" href="#thumb-4"><img src="img/products/4.jpg" alt="product-thumbnail"></a>
                                                <a data-toggle="tab" href="#thumb-5"><img src="img/products/5.jpg" alt="product-thumbnail"></a>
                                            </div>
                                        </div>
                                        <!-- Thumbnail image end -->
                                    </div>
                                    <!-- Main Thumbnail Image End -->
                                    <!-- Thumbnail Description Start -->
                                    <div class="col-lg-7 col-md-6 col-sm-7">
                                        <div class="thubnail-desc fix mt-sm-40">
                                            <h3 class="product-header"><a href="ViewSanPham.jsp">Tên Sản Phẩm</a></h3>
                                <div class="rating-summary fix mtb-10">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </div>
                                <div class="pro-price mtb-30">
                                    <p class="d-flex align-items-center"><span class="prev-price">5,000,000</span><span class="price">4,999,000</span><span class="saving-price">save 8%</span></p>
                                </div>
                                <p class="mb-20 pro-desc-details">Một Chút Thông Tin</p>
                                <div class="box-quantity d-flex hot-product2">
                                    <form action="#">
                                        <input class="quantity mr-15" type="number" min="1" value="1">
                                    </form>
                                    <div class="pro-actions">
                                        <div class="actions-primary">
                                            <a href="cart.jsp" title="" data-original-title="Thêm Vào Gio Hàng"> + Thêm Vào Giỏ Hàng</a>
                                        </div>
                                        <div class="actions-secondary">
                                            <a href="ThanhToan.jsp" title="" data-original-title="Mua Hàng"><i class="lnr lnr-cart"></i> <span>Mua Hàng</span></a>
                                            <a href="YeuThich.jsp" title="" data-original-title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>Yêu Thích</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="pro-ref mt-20">
                                    <p><span class="in-stock"><i class="ion-checkmark-round"></i> Còn Hàng</span></p>
                                </div>
                                <div class="socila-sharing mt-25">
                                    <ul class="d-flex" style="font-size: 30px">
                                        <li>Share:</li>
                                        <li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true" title="Facebook" style="color: #4267B2"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus-square" aria-hidden="true" title="Google"  style="color: #EA4335"></i></a></li>
                                        
                                        <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true" title="Twitter"  style="color: #1DA1F2" ></i></a></li>
                                        <li><a href="#"><i class=" fa fa-instagram" aria-hidden="true" title="Instagram"  style="color: #D82667"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true" title="Linkein"  style="color: #0D8ABC"></i></a></li>
                                    </ul>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
</body>

</html>
