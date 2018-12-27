<%-- 
    Document   : Header
    Created on : Dec 22, 2018, 4:16:34 PM
    Author     : Admin
--%>

<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="dto.SanPham"%>
<%@page import="java.util.Vector"%>
<%@page import="dto.TaiKhoan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--             Main Header Area Start Here -->

<header>
    <%
        Vector<SanPham> pros = (Vector<SanPham>) request.getSession().getAttribute("giohang");
        if (pros == null) {
            pros = new Vector<SanPham>();
            request.getSession().setAttribute("giohang", pros);
        }
        TaiKhoan tk = (TaiKhoan) session.getAttribute("user");
        boolean tt = false;
        if (tk != null) {
            tt = true;
        }
    %>
    <!-- Header Top Start Here -->
    <div class="header-top-area">
        <div class="container">
            <!-- Header Top Start -->
            <div class="header-top">
                <ul>
                    <%
                        if (tt == true) {
                    %>    
                    <li><a href="">
                            <span class="lnr lnr-user"></span>Hello <%=tk.getTentaikhoan()%> </a></li>
                    <li><a href="Logout"><span class="lnr lnr-exit"></span> Đăng Xuất</a></li>
                        <% } else {%>

                    <li><a href="DangNhap.jsp">
                            <span class="lnr lnr-enter"></span>Đăng nhập </a></li>
                    <li><a href="DangKy.jsp"><span class="lnr lnr-user"></span> Đăng Ký</a></li>
                        <% } %>
                    <li><a href="GioHang.jsp"><span class="lnr lnr-cart"></span> Giỏ hàng</a></li>
                    <li><%    if (tt == true) {
                        %>
                        <a  href="ThanhToan.jsp"><span class="lnr lnr-pencil"></span> Thanh toán</a>
                        <%
                        } else { %>
                        <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><span class="lnr lnr-pencil"></span> Thanh toán</a>
                        <% }%> 
                    </li>
                </ul>
                <ul>                                          
                    <li><span>Ngôn ngữ</span> <a href="#">Vietnamese<i class="lnr lnr-chevron-down"></i></a>
                        <!-- Dropdown Start -->
                        <ul class="ht-dropdown">
                            <li><a href="#"><img src="img/header/1.jpg" alt="language-selector">English</a></li>
                            <li><a href="#"><img src="img/header/2.jpg" alt="language-selector">Francis</a></li>
                        </ul>
                        <!-- Dropdown End -->
                    </li>
                    <li><span>Tiền tệ</span><a href="#"> VND <i class="lnr lnr-chevron-down"></i></a>
                        <!-- Dropdown Start -->
                        <ul class="ht-dropdown">
                            <li><a href="#">&#36; USD</a></li>
                            <li><a href="#"> € Euro</a></li>
                            <li><a href="#">&#163; Pound Sterling</a></li>
                        </ul>
                        <!-- Dropdown End -->
                    </li>
                </ul>
            </div>
            <!-- Header Top End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Header Top End Here -->
    <!-- Header Middle Start Here -->
    <div class="header-middle ptb-15">
        <div class="container">
            <div class="row align-items-center no-gutters">
                <div class="col-lg-3 col-md-12">
                    <div class="logo mb-all-30">
                        <a href="index.jsp"><img src="img/logo/logo.png" alt="logo-image"></a>
                    </div>
                </div>
                <!-- Categorie Search Box Start Here -->
                <div class="col-lg-6 col-md-8 ml-auto mr-auto col-10">
                    <div class="categorie-search-box">
                        <form action="seach">
                            <div class="form-group">
                                <select class="bootstrap-select" name="poscats">
                                    <option value="0">Tất cả</option>
                                    <option value="2">Điện Thoại</option>
                                    <option value="3">Tablet</option>
                                    <option value="4">Phụ Kiện</option>
                                    <option value="5">Khuyến Mại</option>
                                    <!--<option value="6">Khác</option>-->

                                </select>
                            </div>
                            <input type="text" name="search" placeholder="Tìm kiếm sản phẩm...">
                            <button onclick="search()"><i class="lnr lnr-magnifier"></i></button>
                        </form>
                    </div>
                </div>
                <!-- Categorie Search Box End Here -->
                <!-- Cart Box Start Here -->
                <div class="col-lg-3 col-md-12">
                    <div class="cart-box mt-all-30">
                        <ul class="d-flex justify-content-lg-end justify-content-center align-items-center">
                            <li><a href="GioHang.jsp"><i class="lnr lnr-cart"></i><span class="my-cart"><span id="soluongsanpham" class="total-pro"><%= (pros == null) ? "0" : pros.size()%></span><span>Giỏ hàng</span></span></a>
                                <ul class="ht-dropdown cart-box-width">
                                    <li>
                                        <!-- Cart Box Start -->
                                        <div id="listgiohangdemo">
                                            <%
                                                if (pros != null | pros.size() != 0) {
                                                    for (SanPham s : pros) {
                                            %>
                                            <div class="single-cart-box">
                                                <div class="cart-img">
                                                    <a href="GioHang.jsp"><img src="<%=s.getAlbumAnh().getAnh1()%>" alt="cart-image"></a>
                                                    <span class="pro-quantity"><%=s.getSoluongmua() %>X</span>
                                                </div>
                                                <div class="cart-content">
                                                    <h6><a href="GioHang.jsp"><%= s.getTen()%></a></h6>
                                                    <span class="cart-price">Giá: <%= NumberFormat.getInstance().format(s.getGia())%> VND</span>

                                                </div>
                                                <a class="del-icone" href="#" ><i class="ion-close" onclick="<%=pros.size() - 1%>"></i></a>
                                            </div>
                                            <%
                                                    }
                                                }
                                            %>
                                        </div>
                                        <!-- Cart Box End -->
                                        <!-- Cart Footer Inner Start -->
                                        <div class="cart-footer">

                                            <div class="cart-actions text-center">
                                                <%
                                                    if (tt == true) {
                                                %>
                                                <a class="cart-checkout" href="ThanhToan.jsp">Thanh toán</a>
                                                <%
                                                } else { %>
                                                <a class="cart-checkout" href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')">Thanh toán</a>
                                                <% }%> 


                                            </div>
                                        </div>
                                        <!-- Cart Footer Inner End -->
                                    </li>
                                </ul>
                            </li>
                            <li><a href="YeuThich.jsp"><i class="lnr lnr-heart"></i><span class="my-cart"><span>Yêu</span><span>Thích (0)</span></span></a>
                            </li>

                        </ul>
                    </div>
                </div>
                <!-- Cart Box End Here -->
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Header Middle End Here -->
    <!-- Header Bottom Start Here -->
    <div class="header-bottom  header-sticky">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-3 col-lg-4 col-md-6 vertical-menu d-none d-lg-block">
                    <span class="categorie-title">Danh mục</span>
                </div>                       
                <div class="col-xl-9 col-lg-8 col-md-12 ">
                    <nav class="d-none d-lg-block">
                        <ul class="header-bottom-list d-flex">
                            <li class="active"><a href="index.jsp"><span class="lnr lnr-home"></span> Trang Chủ</a>

                            </li>
                            <li><a href="SanPhamServletDm"><span class="lnr lnr-store"></span> Sản Phẩm<i class="fa fa-angle-down"></i></a>
                                <!-- Home Version Dropdown Start -->
                                <ul class="ht-dropdown dropdown-style-two">
                                    <li><a href="SanPhamServletDm">Apple</a></li>
                                    <li><a href="SanPhamServletDm">SamSung</a></li>
                                    <li><a href="SanPhamServletDm">Oppo</a></li>
                                    <li><a href="SanPhamServletDm">Xiaomi</a></li>
                                    <li><a href="SanPhamServletDm">Nokia</a></li>
                                    <li><a href="SanPhamServletDm">Asus</a></li>
                                </ul>
                                <!-- Home Version Dropdown End -->
                            </li>
                            <li><a href="TinTuc.jsp"><span class="lnr lnr-license"></span> Tin Tức</a>
                            </li>
                            <li><a href="LienHe.jsp"><span class="lnr lnr-phone"></span> Liên Hệ</a>
                            </li>
                            <li><a href="GioiThieu.jsp"><span class="lnr lnr-users"></span> Giới thiệu</a></li>
                        </ul>
                    </nav>
                    <div class="mobile-menu d-block d-lg-none">
                        <nav>
                            <ul>
                                <li><a href="index.jsp">Trang Chủ</a>
                                </li>
                                <li><a href="SanPhamServletDm">Sản Phẩm</a>
                                    <!-- Mobile Menu Dropdown Start -->
                                    <ul>
                                        <li><a href="SanPhamServletDm">Apple</a></li>
                                        <li><a href="SanPhamServletDm">SamSung</a></li>
                                        <li><a href="SanPhamServletDm">Oppo</a></li>
                                        <li><a href="SanPhamServletDm">Xiaomi</a></li>
                                        <li><a href="SanPhamServletDm">Nokia</a></li>
                                        <li><a href="SanPhamServletDm">Asus</a></li>
                                    </ul>
                                    <!-- Mobile Menu Dropdown End -->
                                </li>
                                <li><a href="TinTuc.jsp">Tin Tức</a>
                                </li>
                                <li><a href="LienHe.jsp">Liên Hệ</a>
                                </li>
                                <li><a href="GioiThieu.jsp">Giới thiệu</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- Row End -->
        </div>
        <!-- Container End -->
    </div>
    <!-- Header Bottom End Here -->
    <!-- Mobile Vertical Menu Start Here -->
    <div class="container d-block d-lg-none">
        <div class="vertical-menu mt-30">
            <span class="categorie-title mobile-categorei-menu">Danh mục</span>
            <nav>  
                <div id="cate-mobile-toggle" class="category-menu sidebar-menu sidbar-style mobile-categorei-menu-list menu-hidden ">
                    <ul>
                        <li class="has-sub"><a href="SanPhamServletDm">Điện Thoại </a>

                        </li>
                        <li class="has-sub"><a href="SanPhamServletDm">Tablet</a>

                        </li>
                        <li class="has-sub"><a href="SanPhamServletDm">Phụ Kiện</a>

                        </li>
                        <li class="has-sub"><a href="SanPhamServletDm">khuyến Mại</a>

                        </li>
                        <!--<li class="has-sub"><a href="SanPhamServletDm">Khác</a>-->

                        </li>

                    </ul>
                </div>
                <!-- category-menu-end -->
            </nav>
        </div>
    </div>
    <!-- Mobile Vertical Menu Start End -->
</header>
<!-- Main Header Area End Here -->
<!-- Categorie Menu & Slider Area Start Here -->
<div class="main-page-banner pb-50 off-white-bg">
    <div class="container">
        <div class="row">
            <!-- Vertical Menu Start Here -->
            <div class="col-xl-3 col-lg-4 d-none d-lg-block">
                <div class="vertical-menu mb-all-30">
                    <nav>
                        <ul class="vertical-menu-list">
                            <li class=""><a href="SanPhamServletDm"><span class="lnr lnr-smartphone"></span>Điện Thoại </a>

                            </li>
                            <li><a href="SanPhamServletDm"><span class="lnr lnr-tablet"></span>Tablet</a>
                            </li>
                            <li><a href="SanPhamServletDm"><span class="lnr lnr-briefcase"></span>Phụ Kiện</a>
                            </li>
                            <li><a href="SanPhamServletDm"><span class="lnr lnr-gift"></span>Khuyến Mại</a>
                            </li>
                            <!--<li><a href="SanPhamServletDm"><span class="lnr lnr-layers"></span>Khác-->
                            <!--                                            </a>
                                                                    </li>-->
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- Vertical Menu End Here -->
            <!-- Slider Area Start Here -->
            <div class="col-xl-9 col-lg-8 slider_box">
                <div class="slider-wrapper theme-default">
                    <!-- Slider Background  Image Start-->
                    <div id="slider" class="nivoSlider">
                        <a href="SanPhamServletDm"><img src="img/slider/PK_Banner_ver2.jpg" data-thumb="img/slider/PK_Banner_ver2.jpg" alt="" title="#htmlcaption2" /></a>
                        <a href="SanPhamServletDm"><img src="img/slider/1250x450__2_.png" data-thumb="img/slider/1250x450__2_.png" alt="" title="#htmlcaption" /></a>
                        <a href="SanPhamServletDm"><img src="img/slider/banner-samsung.jpg" data-thumb="img/slider/banner-samsung.jpg" alt="" title="#htmlcaption2" /></a>

                    </div>
                    <!-- Slider Background  Image Start-->
                </div>
            </div>
            <!-- Slider Area End Here -->
        </div>
        <!-- Row End -->
    </div>
    <!-- Container End -->
</div>
<!-- Categorie Menu & Slider Area End Here -->
<!-- Brand Banner Area Start Here -->
<div class="image-banner pb-50 off-white-bg">
    <div class="container">
        <div class="col-img">
            <a href="#"><img src="img/banner/h1-banner.jpg" alt="image banner"></a>
        </div>
    </div>
    <!-- Container End -->
</div>
<!-- Brand Banner Area End Here -->
