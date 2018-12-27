<%-- 
    Document   : ViewSanPham
    Created on : Dec 14, 2018, 9:57:01 PM
    Author     : Admin
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="dto.TaiKhoan"%>
<%@page import="DAO.SanPhamDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.SanPham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Thông tin sản phẩm </title>
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
    <% TaiKhoan tk2 = (TaiKhoan)session.getAttribute("user"); 
boolean tt2 =false;
if (tk2 != null) {
        tt2 = true;
    }
    %>
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-area mt-30">
            <div class="container">
                <div class="breadcrumb">
                    <ul class="d-flex align-items-center">
                        <li><a href="index.jsp">Trang Chủ</a></li>
                        <li class="active"><a href="ViewSanPham.jsp">Sản Phẩm</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Breadcrumb End -->
        
        <%  
            String masp = request.getParameter("masp");
            SanPhamDao a = new SanPhamDao();
            SanPham b =a.GetPhone(masp);
            
        %>
        <!-- Product Thumbnail Start -->
        <div class="main-product-thumbnail ptb-30 ptb-sm-60">
            <div class="container">
                <div class="thumb-bg">
                    <div class="row">
                        <!-- Main Thumbnail Image Start -->
                        <div class="col-lg-5 mb-all-40">
                            <!-- Thumbnail Large Image start -->
                            <div class="tab-content">
                                <div id="thumb1" class="tab-pane fade show active">
                                    <a data-fancybox="images" href="<%= b.getAlbumAnh().getAnh1() %>"><img src="<%= b.getAlbumAnh().getAnh1() %>" alt="product-view"></a>
                                </div>
                                <div id="thumb2" class="tab-pane fade">
                                    <a data-fancybox="images" href="<%= b.getAlbumAnh().getAnh2() %>"><img src="<%= b.getAlbumAnh().getAnh2() %>" alt="product-view"></a>
                                </div>
                                <div id="thumb3" class="tab-pane fade">
                                    <a data-fancybox="images" href="<%= b.getAlbumAnh().getAnh3() %>"><img src="<%= b.getAlbumAnh().getAnh3() %>" alt="product-view"></a>
                                </div>
                                <div id="thumb4" class="tab-pane fade">
                                    <a data-fancybox="images" href="<%= b.getAlbumAnh().getAnh4() %>"><img src="<%= b.getAlbumAnh().getAnh4() %>" alt="product-view"></a>
                                </div>
                                <div id="thumb5" class="tab-pane fade">
                                    <a data-fancybox="images" href="<%= b.getAlbumAnh().getAnh1() %>"><img src="<%= b.getAlbumAnh().getAnh1() %>" alt="product-view"></a>
                                </div>
                            </div>
                            <!-- Thumbnail Large Image End -->
                            <!-- Thumbnail Image End -->
                            <div class="product-thumbnail mt-15">
                                <div class="thumb-menu owl-carousel nav tabs-area" role="tablist">
                                    <a class="active" data-toggle="tab" href="#thumb1"><img src="<%= b.getAlbumAnh().getAnh1() %>" alt="product-thumbnail"></a>
                                    <a data-toggle="tab" href="#thumb2"><img src="<%= b.getAlbumAnh().getAnh2() %>" alt="product-thumbnail"></a>
                                    <a data-toggle="tab" href="#thumb3"><img src="<%= b.getAlbumAnh().getAnh3() %>" alt="product-thumbnail"></a>
                                    <a data-toggle="tab" href="#thumb4"><img src="<%= b.getAlbumAnh().getAnh4() %>" alt="product-thumbnail"></a>
                                    <a data-toggle="tab" href="#thumb5"><img src="<%= b.getAlbumAnh().getAnh1() %>" alt="product-thumbnail"></a>
                                </div>
                            </div>
                            <!-- Thumbnail image end -->
                        </div>
                        <!-- Main Thumbnail Image End -->
                        <!-- Thumbnail Description Start -->
                        <div class="col-lg-7">
                            <div class="thubnail-desc fix">
                                <h3 class="product-header"><b><%=b.getTen() %></b></h3>
                                <div class="rating-summary fix mtb-10">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </div>
                                <div class="pro-price mtb-30">
                                    <p class="d-flex align-items-center"><span class="prev-price">4,999,000</span><span class="price"><%= NumberFormat.getInstance().format(b.getGia()) %> VND</span><span class="saving-price">save 8%</span></p>
                                </div>
                               
                                <form name="thongtin1" class=" pb-30">
                                    <table class="table-responsive table">
                                        <tr>
                                            <th>Màn Hình</th>
                                            <td><%= b.getManhinh() %> inch</td>
                                        </tr>
                                        <tr>
                                            <th>CPU</th>
                                            <td><%= b.getCPU() %></td>
                                        </tr>
                                        <tr>
                                            <th>RAM</th>
                                            <td><%= b.getRAM() %> GB</td>
                                        </tr>
                                        
                                        <tr>
                                            <th>Bảo Hành</th>
                                            <td><%= b.getBaohanh() %> Tháng</td>
                                        </tr>
                                    </table>
                                </form>
                                        
                                        <div class="box-quantity d-flex hot-product2">
                                    <form action="#">
                                        <input class="quantity mr-15" id="soluongmua" type="number" min="1" value="1">
                                    </form>
                                    <div class="pro-actions">
                                        <div class="actions-primary">
                                            <a onclick="addToCart1(<%= b.getId() %>)" title="" data-original-title="Thêm Vào Gio Hàng"> + Thêm Vào Giỏ Hàng</a>
                                        </div>
                                        <div class="actions-secondary">
                                            <%    if (tt2 == true) {
                                                %>
                                                <a href="ThanhToan.jsp" title="" data-original-title="Mua Hàng"><i class="lnr lnr-cart"></i> <span>Mua Hàng</span></a>
                                                <%
                                                } else { %>
                                                <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span>Mua Hàng</span>
                                             <% } %> 
                                            
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
                        <!-- Thumbnail Description End -->
                    </div>
                    <!-- Row End -->
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Product Thumbnail End -->
        <!-- Product Thumbnail Description Start -->
        <div class="thumnail-desc pb-100 pb-sm-60">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul class="main-thumb-desc nav tabs-area" role="tablist">
                            <li><a class="active" data-toggle="tab" href="#dtail">Chi Tiết Sản Phẩm</a></li>
                        </ul>
                        <!-- Product Thumbnail Tab Content Start -->
                        <div class="tab-content thumb-content border-default">
                            <div id="dtail" class="tab-pane fade show active">
                                
                                    <form>
                                    <table class="table text-center" >
                                        <tr style="color: red">
                                                <th>
                                                    Sản Phẩm
                                                </th>
                                                <td>
                                                    <%= b.getTen() %>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>
                                                    Trọng Lượng
                                                </th>
                                                <td>
                                                    <%= b.getTrongluong() %> gam
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <th>
                                                    ROM
                                                </th>
                                                <td>
                                                    <%= b.getROM() %> GB
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <th>
                                                    RAM
                                                </th>
                                                <td>
                                                    <%= b.getRAM() %> GB
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <th>
                                                    Thẻ Nhớ
                                                </th>
                                                <td>
                                                    <%= b.getThenho() %>
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <th>
                                                    Camera Trước
                                                </th>
                                                <td>
                                                    <%= b.getCamera_truoc() %> M
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <th>
                                                    Camera Sau
                                                </th>
                                                <td>
                                                    <%= b.getCamera_sau() %> M
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <th>
                                                    Pin
                                                </th>
                                                <td>
                                                    <%= b.getPin() %> mAh
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <th>
                                                    Bluetooth
                                                </th>
                                                <td>
                                                    <%= b.getBluetooth() %>.0
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <th>
                                                    CPU
                                                </th>
                                                <td>
                                                    <%= b.getCPU() %>
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <th>
                                                    Màn Hình
                                                </th>
                                                <td>
                                                    <%= b.getManhinh() %> inch
                                                </td>
                                            </tr>
                                        
                                            <tr>
                                                <th>
                                                    Bảo Hành
                                                </th>
                                                <td>
                                                    <%= b.getBaohanh() %> tháng
                                                </td>
                                            </tr>
                                        
                                    </table>

                                </form>
                                 
                            </div>
                        </div>
                        </div>
                        <!-- Product Thumbnail Tab Content End -->
                    </div>
                </div>
                <!-- Row End -->
            </div>
            <!-- Container End -->
        </div>
       <% TaiKhoan tk = (TaiKhoan)session.getAttribute("user"); 
            boolean tt =false;
            if (tk != null) {
                    tt = true;
                }
         %>
        <!-- Product Thumbnail Description End -->
        <div class="hot-deal-products off-white-bg pb-90 pb-sm-50 pt-90">
                <div class="container">
                    <!-- Product Title Start -->
                    <div class="post-title pb-30">
                        <h2>Sản phẩm liên quan</h2>
                    </div>
                    <!-- Product Title End -->
                    <!-- Hot Deal Product Activation Start -->
                    <div class="hot-deal-active owl-carousel" id="thu">
                        <%
                            String idsp = request.getParameter("idnsx");
                            SanPhamDao x = new SanPhamDao();
                            ArrayList <SanPham> y =x.GetPhoneByNSX(idsp);
                            
                            for (int i = 0; i < y.size(); i++) {
                                SanPham z = y.get(i);
                        %>
                        <!-- Single Product Start -->

                        <div class="single-product">
                            <!-- Product Image Start -->
                            <div class="pro-img img">
                                <a href="ViewSanPham.jsp?masp=<%= z.getId()%>" class="thumb"> 
                                    <img class="primary-img img-fluid"  src="<%= z.getAlbumAnh().getAnh1()%>"  alt="single-product">  
                                    <img class="secondary-img"  src="<%= z.getAlbumAnh().getAnh2()%>" alt="single-product">
                                </a>
                                <!-- <div class="countdown" data-countdown="2018/11/27"></div> --> <!-- thời gian hiển thị đếm ngược -->
                                <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Xem Sản Phẩm"><i class="lnr lnr-magnifier"></i></a>
                            </div>
                            <!-- Product Image End -->
                            <!-- Product Content Start -->
                            <div class="pro-content">
                                <div class="pro-info">
                                    <h4><a href="ViewSanPham.jsp?idnsx=<%= z.getId_nhasanxuat() %>" ><%= z.getTen()%></a></h4>
                                    <p><span class="price"><%= NumberFormat.getInstance().format(z.getGia())%></span><del class="prev-price">199,000</del></p>
                                    <div class="label-product l_sale">20<span class="symbol-percent">%</span></div>
                                </div>
                                <div class="pro-actions">
                                    <div class="actions-primary">
                                        <a onclick="addToCart(<%= z.getId() %>)" title="Thêm Vào Giỏ Hàng"> + Thêm Vào Giỏ Hàng</a>
                                    </div>
                                    <div class="actions-secondary">
                                        <%if (tt == true) {
                                            %>
                                            <a  title="Mua Hàng" href="ThanhToan.jsp?idsp=<%= z.getId() %>"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                            <%
                                            } else { %>
                                            <a href="DangNhap.jsp" onclick="alert('Bạn chưa đăng nhập, Hãy đăng nhập để tiếp tục thanh toán !')"><i class="lnr lnr-cart"></i> <span> Mua Hàng</span></a>
                                         <% } %> 
                                        <a href="YeuThich.jsp?idsp=<%= z.getId() %>" title="Yêu Thích"><i class="lnr lnr-heart"></i> <span> Yêu Thích</span></a>
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
            
        <jsp:include page="Footer.jsp"/>

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
    <script src="js/addToCart.js" type="text/javascript"></script>
</body>

</html>
