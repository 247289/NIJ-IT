<%-- 
    Document   : YeuThich
    Created on : Dec 14, 2018, 9:54:34 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Yêu Thích </title>
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
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-area mt-30">
            <div class="container">
                <div class="breadcrumb">
                    <ul class="d-flex align-items-center">
                        <li><a href="index.jsp">Trang Chủ</a></li>
                        <li class="active"><a href="YeuThich.jsp">Yêu Thích</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Breadcrumb End -->
        
        <!-- Wish List Start -->
        <div class="cart-main-area wish-list ptb-30 ptb-sm-60">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <!-- Form Start -->
                        <form action="#">
                            <!-- Table Content Start -->
                            <div class="table-content table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-remove"><b>Xóa</b></th>
                                            <th class="product-thumbnail"><b>Ảnh</b></th>
                                            <th class="product-name"><b>Sản Phẩm</b></th>
                                            <th class="product-price"><b>Đơn Giá</b></th>
                                            <th class="product-quantity"><b>Trạng Thái</b></th>
                                            <th class="product-subtotal"><b>Thêm Vào Giỏ Hàng</b></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="product-remove"><h4><i id="xoa1" class="fas fa-times xoa"></i></h4></td>
                                            <td class="product-thumbnail">
                                                <a href="#"><img src="img/products/6.jpg" alt="cart-image" /></a>
                                            </td>
                                            <td class="product-name"><a href="#"><b>IP XS</b> </a></td>
                                            <td class="product-price"><span class="amount">39,000,000</span></td>
                                            <td class="product-stock-status"><span>Còn Hàng</span></td>
                                            <td class="product-add-to-cart"><a href="GioHang.jsp">Thêm Vào Giỏ Hàng</a></td>
                                        </tr>
                                        <tr id="sp2">
                                            <td class="product-remove"> <h4><i id="xoa2" class="fas fa-times xoa"></i></h4></td>
                                            <td class="product-thumbnail">
                                               <a href="#"><img src="img/products/22.jpg" alt="cart-image" /></a>
                                            </td>
                                            <td class="product-name"><a href="#"><b>IP XS MAX</b></a></td>
                                            <td class="product-price"><span class="amount">50,000,000</span></td>
                                            <td class="product-stock-status"><span>Còn Hàng</span></td>
                                            <td class="product-add-to-cart"><a href="GioHang.jsp">Thêm Vào Giỏ Hàng</a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- Table Content Start -->
                        </form>
                        <!-- Form End -->
                    </div>
                </div>
                <!-- Row End -->
            </div>
        </div>
        <!-- Wish List End -->
        
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

    <script type="text/javascript">
        
    jQuery(document).ready(function($) {
        $('#xoa2').click(function(event) {
            $('#sp2').css({
                visibility: 'hidden',
            });
        });
    });

    </script>

</body>

</html>
