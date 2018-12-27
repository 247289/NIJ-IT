<%-- 
    Document   : GioHang
    Created on : Dec 14, 2018, 9:53:00 PM
    Author     : Admin
--%>

<%@page import="DAO.SanPhamDao"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="dto.TaiKhoan"%>
<%@page import="java.util.Vector"%>
<%@page import="dto.SanPham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Giỏ Hàng </title>
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
        <div class="wrapper">
            <jsp:include page="Header.jsp" />
        </div>
        <!-- Breadcrumb Start -->
        <div class="breadcrumb-area mt-30">
            <div class="container">
                <div class="breadcrumb">
                    <ul class="d-flex align-items-center">
                        <li><a href="index.jsp">Trang Chủ</a></li>
                        <li class="active"><a href="GioHang.jsp">Giỏ Hàng</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Breadcrumb End -->

        <!-- Cart Main Area Start -->
        <div class="cart-main-area ptb-30 ptb-sm-60">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <!-- Form Start -->
                        <form action="#">
                            <!-- Table Content Start -->
                            <div class="table-content table-responsive mb-45">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-choose"><b>Chọn</b></th>
                                            <th class="product-thumbnail"><b>Ảnh</b></th>
                                            <th class="product-name"><b>Sản Phẩm</b></th>
                                            <th class="product-price"><b>Đơn Giá</b></th>
                                            <th class="product-quantity"><b>Số Lượng</b></th>
                                            <th class="product-subtotal"><b>Tạm tính</b></th>
                                            <th class="product-remove"><b>Xóa</b></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            if (pros != null | pros.size() != 0) {
                                                for (SanPham s : pros) {
                                        %>
                                        <tr>
                                            <td class="product-choose">
                                                <input type="checkbox" value="" checked="false" >
                                            </td>
                                            <td class="product-thumbnail">
                                                <a href="ViewSanPham.jsp"><img src="<%= s.getAlbumAnh().getAnh1()%>" alt="cart-image" /></a>
                                            </td>
                                            <td class="product-name"><a href="ViewSanPham.jsp"><%= s.getTen()%></a></td>
                                            <td class="product-price"><span class="amount"><%= NumberFormat.getInstance().format(s.getGia())%> VND</span></td>
                                            <td class="product-quantity"><input type="number" min="1" value="<%=s.getSoluongmua()%>" onchange="exchange(this.value,<%=s.getId()%>,<%=s.getGia()%>)" /></td>
                                    <input type="hidden" value="<%=s.getSoluongmua()%>" id="soluong<%=s.getId()%>">
                                            <td class="product-subtotal" id="<%= s.getId()%>"><%= NumberFormat.getInstance().format(s.getGia() * s.getSoluongmua())%></td>
                                           
                                            <td class="product-remove" align="center"> <label>
                                                    <img onclick="deleteItem(<%=s.getId()%>)" src="img/rubbish-bin.png" alt=""/><h3 class="label-text"></h3>
                                                </label></td>
                                        </tr>
                                        <%
                                                }
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                            <!-- Table Content Start -->
                            <div class="row">
                                <!-- Cart Button Start -->
                                <div class="col-md-8 col-sm-12">
<!--                                    <div class="buttons-cart">
                                        <input type="submit" value="Xóa Khỏi Giỏ Hàng" />
                                        <a href="ThanhToan.jsp">Thanh Toán</a>
                                        <input type="submit" value="Update" />
                                    </div>-->
                                </div>
                                <!-- Cart Button Start -->
                                <!-- Cart Totals Start -->
                                <div class="col-md-4  pull-left col-sm-12">
                                    <div class="cart_totals float-md-right text-md-right">
                                        <h2>Tổng</h2>
                                        <br />
                                        <table class="float-md-right">
                                            <tbody>
                                                <tr class="order-total">
                                                    <th>Số Sản Phẩm</th>
                                                    <td><span class="amount" id="tongsoluong"><%= (long)SanPhamDao.TinhSoLuong(pros)%></span></td>
                                                </tr>
                                                <tr class="order-total">
                                                    <th>Thành Tiền</th>
                                                    <td>
                                                        <strong><span class="amount" id="tongtoanbo"><%= (long)SanPhamDao.TinhTongGia(pros)%></span></strong>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="wc-proceed-to-checkout">
                                            <a href="ThanhToan.jsp">Thanh Toán</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Cart Totals End -->
                            </div>
                            <!-- Row End -->
                        </form>
                        <!-- Form End -->
                    </div>
                </div>
                <!-- Row End -->
            </div>
        </div>
        <!-- Cart Main Area End -->

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
        <script src="js/addToCart.js" type="text/javascript"></script>
    </body>

</html>
