<%-- 
    Document   : LienHe
    Created on : Dec 14, 2018, 9:57:21 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Liên Hệ </title>
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
        <!-- Main Header Area Start Here -->
        <!-- Main Header Area Start Here -->
        <header>
            <!-- Header Top Start Here -->
            <div class="header-top-area">
                <div class="container">
                    <!-- Header Top Start -->
                    <div class="header-top">
                        <ul>
                            <li><a href="DangNhap.jsp"><span class="lnr lnr-enter"></span> Đăng Nhập</a></li>
                            <li><a href="DangKy.jsp"><span class="lnr lnr-user"></span> Đăng Ký</a></li>
                            <li><a href="GioHang.jsp"><span class="lnr lnr-cart"></span> Giỏ hàng</a></li>
                            <li><a href="ThanhToan.jsp"><span class="lnr lnr-cart"></span> Thanh toán</a></li>
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
                                <form action="#">
                                    <div class="form-group">
                                        <select class="bootstrap-select" name="poscats">
                                            <option value="0">Tất cả</option>
                                            <option value="2">Điện Thoại</option>
                                            <option value="3">Tablet</option>
                                            <option value="4">Phụ Kiện</option>
                                            <option value="5">Khuyến Mại</option>
<!--                                            <option value="6">Khác</option>-->
                                            
                                        </select>
                                    </div>
                                    <input type="text" name="search" placeholder="Tìm kiếm sản phẩm...">
                                    <button><i class="lnr lnr-magnifier"></i></button>
                                </form>
                            </div>
                        </div>
                        <!-- Categorie Search Box End Here -->
                        <!-- Cart Box Start Here -->
                        <div class="col-lg-3 col-md-12">
                            <div class="cart-box mt-all-30">
                                <ul class="d-flex justify-content-lg-end justify-content-center align-items-center">
                                    <li><a href="GioHang.jsp"><i class="lnr lnr-cart"></i><span class="my-cart"><span class="total-pro">2</span><span>Giỏ hàng</span></span></a>
                                        <ul class="ht-dropdown cart-box-width">
                                            <li>
                                                <!-- Cart Box Start -->
                                                <div class="single-cart-box">
                                                    <div class="cart-img">
                                                        <a href="#"><img src="img/products/1.jpg" alt="cart-image"></a>
                                                        <span class="pro-quantity">1X</span>
                                                    </div>
                                                    <div class="cart-content">
                                                        <h6><a href="SanPhamServletDm">Tên sản phẩm</a></h6>
                                                        <span class="cart-price">Giá</span>
                                                        
                                                    </div>
                                                    <a class="del-icone" href="#"><i class="ion-close"></i></a>
                                                </div>
                                                <!-- Cart Box End -->
                                                <!-- Cart Box Start -->
                                                <div class="single-cart-box">
                                                    <div class="cart-img">
                                                        <a href="#"><img src="img/products/2.jpg" alt="cart-image"></a>
                                                        <span class="pro-quantity">1X</span>
                                                    </div>
                                                    <div class="cart-content">
                                                        <h6><a href="SanPhamServletDm">Tên sản phẩm</a></h6>
                                                        <span class="cart-price">Giá:</span>
                                                        
                                                    </div>
                                                    <a class="del-icone" href="#"><i class="ion-close"></i></a>
                                                </div>
                                                <!-- Cart Box End -->
                                                <!-- Cart Footer Inner Start -->
                                                <div class="cart-footer">
                                                   
                                                    <div class="cart-actions text-center">
                                                        <a class="cart-checkout" href="ThanhToan.jsp">Thanh toán</a>
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
                                            <li><a href="#apple">Apple</a></li>
                                            <li><a href="#samsung">SamSung</a></li>
                                            <li><a href="#oppo">Oppo</a></li>
                                            <li><a href="#xiaomi">Xiaomi</a></li>
                                            <li><a href="#nokia">Nokia</a></li>
                                            <li><a href="#asus">Asus</a></li>
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
                                                <li><a href="#apple">Apple</a></li>
                                            <li><a href="s#amsung">SamSung</a></li>
                                            <li><a href="#oppo">Oppo</a></li>
                                            <li><a href="#xiaomi">Xiaomi</a></li>
                                            <li><a href="#nokia">Nokia</a></li><li>
                                                <a href="#asus">Asus</a></li>
                                            </ul>
                                            <!-- Mobile Menu Dropdown End -->
                                        </li>
                                        <li><a href="TinTuc.jsp">Tin Tức</a>
                                        </li>
                                        <li><a href="LienHe.jsp">Liên Hệ</a>
                                        </li>
                                        <li><a href="about.jsp">Giới thiệu</a></li>
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
<!--                                <li class="has-sub"><a href="SanPhamServletDm">Khác</a>
                                    
                                </li>-->
                                
                            </ul>
                        </div>
                        <!-- category-menu-end -->
                    </nav>
                </div>
            </div>
            <!-- Mobile Vertical Menu Start End -->
        </header>
        <!-- Main Header Area End Here -->
    </div>
        <!-- Categorie Menu & Slider Area Start Here -->
        <div class="main-page-banner pb-50 off-white-bg">
                <div class="container">
                    <div class="row">
                        <!-- Vertical Menu Start Here -->
                        <div class="col-xl-3 col-lg-4 d-none d-lg-block">
                            <div class="vertical-menu mb-all-30">
                                <nav>
                                    <ul class="vertical-menu-list">
                                        <li class=""><a href="SanPhamServletDm"><span class="lnr lnr-smartphone"></span>Điện Thoại <i class="fa fa-angle-down"></i></a>
                                            <ul class="ht-dropdown dropdown-style-two d-inline-block " style="left: 50%;top: 0;">
                                                <li><a href="SanPhamServletDm">Apple</a></li>
                                                <li><a href="SanPhamServletDm">SamSung</a></li>
                                                <li><a href="SanPhamServletDm">Oppo</a></li>
                                                <li><a href="SanPhamServletDm">Xiaomi</a></li>
                                                <li><a href="SanPhamServletDm">Nokia</a></li>
                                                <li><a href="SanPhamServletDm">Asus</a></li>
                                        </ul>
                                        </li>
                                        <li><a href="SanPhamServletDm"><span class="lnr lnr-tablet"></span>Tablet</a>
                                        </li>
                                        <li><a href="SanPhamServletDm"><span class="lnr lnr-briefcase"></span>Phụ Kiện</a>
                                        </li>
                                        <li><a href="SanPhamServletDm"><span class="lnr lnr-gift"></span>Khuyến Mại</a>
                                        </li>
<!--                                        <li><a href="SanPhamServletDm"><span class="lnr lnr-layers"></span>Khác
                                            </a>
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
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-area mt-30">
            <div class="container">
                <div class="breadcrumb">
                    <ul class="d-flex align-items-center">
                        <li><a href="index.jsp">Trang Chủ</a></li>
                        <li class="active"><a href="LienHe.jsp">Liên Hệ</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Breadcrumb End -->
        
        <!-- Contact Email Area Start -->
        <div class="contact-area ptb-30 ptb-sm-60 ">
            <div class="container">
                <h3 class="mb-20" style="border-bottom: 1px #E62E04">Hãy Liên Hệ Với Chúng Tôi</h3>
                <p class="text-capitalize mb-20">Hãy để lại thông tin, yêu cầu liên hệ của bạn !</p>
                <form id="contact-form" class="contact-form" action="mail.php" method="post">
                    <div class="address-wrapper row">
                        <div class="col-md-12">
                            <div class="address-fname">
                                <input class="form-control" type="text" name="name" placeholder="Họ Và Tên">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="address-email">
                                <input class="form-control" type="email" name="email" placeholder="Email">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="address-web">
                                <input class="form-control" type="text" name="website" placeholder="Website">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="address-subject">
                                <input class="form-control" type="text" name="sdt" placeholder="Số Điện Thoại">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="address-subject">
                                <input class="form-control" type="text" name="diachi" placeholder="Địa Chỉ">
                            </div>
                        </div>
                        
                        <div class="col-md-12">
                            <div class="address-textarea">
                                <textarea name="message" class="form-control" placeholder="Lời Nhắn..."></textarea>
                            </div>
                        </div>
                    </div>
                    <p class="form-message"></p>
                    <div class="footer-content mail-content clearfix">
                        <div class="send-email float-md-right">
                            <input value="Gửi Liên Hệ" class="return-customer-btn" type="submit">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Contact Email Area End -->
        <!-- Google Map Start -->
        
        <div class="container pb-60" style="height: 400px">
            <iframe allowfullscreen="" frameborder="1" height=100% src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.647157580612!2d105.79921501425851!3d21.006776386010266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acbcd102debb%3A0xd94c7af70bcb2829!2sICT!5e0!3m2!1svi!2s!4v1542527383379" style="border-radius: 2px;border: 1px #000 solid" width=100%>
            </iframe>
        </div>

        <jsp:include page="Footer.jsp" />
        
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
