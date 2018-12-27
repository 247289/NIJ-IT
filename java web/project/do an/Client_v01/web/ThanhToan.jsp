<%-- 
    Document   : ThanhToan
    Created on : Dec 14, 2018, 9:54:23 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Thanh Toán </title>
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
                        <li class="active"><a href="#">Thanh Toán</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Breadcrumb End -->
        
        <!-- checkout-area start -->
        <div class="checkout-area pb-100 pt-30 pb-sm-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-7">
                        <div class="checkbox-form mb-sm-40 well">
                            <h3><b>Thông Tin Thanh Toán</b></h3>
                            <div class="row checkout-form-list">
                                <div class="col-md-12">
                                    <div class="form-group d-md-flex align-items-md-center">
                                        <label class="control-label col-md-2" for="txtname">Họ & Tên<sup style="color: red">*</sup></label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control" id="txtname" placeholder="Họ & Tên">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group d-md-flex align-items-md-center">
                                        <label class="control-label col-md-2" for="txtsdt">Số Điện Thoại<sup style="color: red">*</sup></label>
                                        <div class="col-md-10">
                                            <input type="email" class="form-control" id="txtsdt" placeholder="Số Điện Thoại">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group d-md-flex align-items-md-center">
                                        <label class="col-md-2 control-label">Tỉnh/TP<sup style="color: red">*</sup></label>
                                        <div class="col-md-4">
                                            <input type="email" class="form-control" id="txttinh" placeholder="Tỉnh/TP">
                                        </div>
                                        <label class="col-md-2 control-label">Quận/Huyện<sup style="color: red">*</sup>
                                        </label>
                                        <div class="col-md-4">
                                            <input type="email" class="form-control" id="txthuyen" placeholder="Quận/Huyện">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group d-md-flex align-items-md-center">
                                        <label class="control-label col-md-2" for="txtdiachi">Địa Chỉ Chi Tiết<sup style="color: red">*</sup></label>
                                        <div class="col-md-10">
                                            <input type="email" class="form-control" id="txtdiachi" placeholder="Ví dụ: Số nhà 99 - ngõ 10 - đường Quang Trung - Q.Hà Đông - TP.Hà Nội">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group d-md-flex align-items-md-center">
                                        <label class="control-label col-md-2" for="txtdiachi">Lời Nhắn</label>
                                        <div class="col-md-10">
                                            <textarea name="loinhan"  style="height: 100px" class="form-control" placeholder="Ví dụ: chuyển hàng vào chủ nhật"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <!-- Cart Button Start -->
                                <div class="col-md-12 col-sm-12 ">
                                    <div class="buttons-cart text-center">
                                        <a href="GioHang.jsp" style="padding:0"><input style="margin: 0" type="submit" value="Về Giỏ Hàng" /></a>
                                        <input type="submit" onclick="chex();" value="Thanh Toán" />
                                    </div>
                                </div>
                                <!-- Cart Button Start -->
                            </div>
                            <!-- địa chỉ nhận khác strat -->
                            <div class="different-address">
                                <div class="ship-different-title">
                                    <h3>
                                        <label>
                                                <input type="checkbox" id="ship-box" name="check" ><span class="label-text"><b>Địa Chỉ Nhận Hàng Khác ?</b></span>
                                            </label>
                                    </h3>
                                </div>
                                <div id="ship-box-info">
                                    <div class="row checkout-form-list">
                                    <div class="col-md-12">
                                        <div class="form-group d-md-flex align-items-md-center">
                                        <label class="control-label col-md-2" for="txtname2">Họ & Tên<sup style="color: red">*</sup></label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control" id="txtname2" placeholder="Họ & Tên">
                                        </div>
                                        
                                    </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group d-md-flex align-items-md-center">
                                            <label class="control-label col-md-2" for="txtsdt2">Số Điện Thoại<sup style="color: red">*</sup></label>
                                            <div class="col-md-10">
                                                <input type="email" class="form-control" id="txtsdt2" placeholder="Số Điện Thoại">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group d-md-flex align-items-md-center">
                                            <label class="col-md-2 control-label">Tỉnh/TP<sup style="color: red">*</sup></label>
                                            <div class="col-md-4">
                                                <input type="email" class="form-control" id="txttinh2" placeholder="Tỉnh/TP">
                                            </div>
                                            <label class="col-md-2 control-label">Quận/Huyện<sup style="color: red">*</sup>
                                            </label>
                                            <div class="col-md-4">
                                                <input type="email" class="form-control" id="txthuyen2" placeholder="Quận/Huyện">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group d-md-flex align-items-md-center">
                                            <label class="control-label col-md-2" for="txtdiachi2">Địa Chỉ Chi Tiết<sup style="color: red">*</sup></label>
                                            <div class="col-md-10">
                                                <input type="email" class="form-control" id="txtdiachi2" placeholder="Ví dụ: Số nhà 99 - ngõ 10 - đường Quang Trung - Q.Hà Đông - TP.Hà Nội">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group d-md-flex align-items-md-center">
                                            <label class="control-label col-md-2" for="loinhan">Lời Nhắn</label>
                                            <div class="col-md-10">
                                                <textarea name="loinhan"  style="height: 100px" class="form-control" placeholder="Ví dụ: chuyển hàng vào chủ nhật"></textarea>
                                            </div>
                                        </div>
                                        </div>
                                    <!-- Cart Button Start -->
                                    <div class="col-md-12 col-sm-12 ">
                                        <div class="buttons-cart text-center">
                                            <a href="GioHang.jsp" style="padding:0"><input style="margin: 0" type="submit" value="Về Giỏ Hàng" /></a>
                                            <input type="submit" onclick="chex2();" value="Thanh Toán" />
                                        </div>
                                    </div>
                                    <!-- Cart Button Start -->
                                </div>
                            </div>
                            </div> <!-- địa chỉ nhận khác end -->

                        </div>
                    </div>
                    <div class="col-lg-5 col-md-5">
                        <div class="your-order panel panel-success">
                            <h3><b>Đơn Hàng</b></h3>
                            <div class="your-order-table table-responsive ">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product-name">Sản Phẩm</th>
                                            <th class="product-total">Tên</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="cart_item">
                                            <td class="product-name">
                                                Số Sản Phẩm
                                            </td>
                                            <td class="product-total">
                                                <span class="amount">1</span>
                                            </td>
                                        </tr>
                                        <tr class="cart_item">
                                            <td class="product-name">
                                                Đơn Giá
                                            </td>
                                            <td class="product-total">
                                                <span class="amount">500,000</span>
                                            </td>
                                        </tr>
                                        <tr class="cart_item">
                                            <td class="product-name">
                                                Mã Giảm Giá (Nếu Có)
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" id="txtmagiamgia" placeholder="Nhập mã...">
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr class="cart-subtotal">
                                            <th>Thành Tiền</th>
                                            <td><span class="amount">500,000</span></td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            </div>
                            <div class="your-order panel panel-success" style="margin-top: 50px">
                                <h3><b>Hình Thức Thanh Toán</b></h3>
                                <i><span class="lnr lnr-home"></span> Thanh toán tại nhà khi nhận hàng.</i> <br>
                                <i><span class="lnr lnr-phone-handset"></span> Liên hệ Hotline để được tư vấn và hỗ chợ !</i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- checkout-area end -->
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
        
        function chex() {
            var a = document.getElementById('txtname').value;
            var b = document.getElementById('txtsdt').value;
            var c = document.getElementById('txttinh').value;
            var d = document.getElementById('txthuyen').value;
            var e = document.getElementById('txtdiachi').value;
            
            if(a=="" || isNaN(a)!=true)
            {
                alert("Tên không được bỏ chống hoặc chứa số !");
                document.all.txtname.focus();
            }
            else {
                if (b==""|| isNaN(b)==true) {
                alert("Số điện thoại không hợp lệ !");
                document.all.txtsdt.focus();
                }
                else {
                    if (c=="") {
                        alert("Tên tỉnh/thành phố không được bỏ chống !");
                        document.all.txttinh.focus();
                    }
                    else {
                        if (d=="") {
                            alert("Tên quận/huyện không được bỏ chống !");
                            document.all.txthuyen.focus();
                        }
                        else {
                            if(e=="") {
                                alert("Địa chỉ không được bỏ chống !");
                                document.all.txtdiachi.focus();
                            }
                        }
                    }
                }
            }
        }
        function chex2() {
            var a = document.getElementById('txtname2').value;
            var b = document.getElementById('txtsdt2').value;
            var c = document.getElementById('txttinh2').value;
            var d = document.getElementById('txthuyen2').value;
            var e = document.getElementById('txtdiachi2').value;
            
            if(a=="" || isNaN(a)!=true)
            {
                alert("Tên không được bỏ chống hoặc chứa số !");
                document.all.txtname2.focus();
            }
            else {
                if (b==""|| isNaN(b)==true) {
                alert("Số điện thoại không hợp lệ !");
                document.all.txtsdt2.focus();
                }
                else {
                    if (c=="") {
                        alert("Tên tỉnh/thành phố không được bỏ chống !");
                        document.all.txttinh2.focus();
                    }
                    else {
                        if (d=="") {
                            alert("Tên quận/huyện không được bỏ chống !");
                            document.all.txthuyen2.focus();
                        }
                        else {
                            if(e=="") {
                                alert("Địa chỉ không được bỏ chống !");
                                document.all.txtdiachi2.focus();
                            }
                        }
                    }
                }
            }
        }
        
    </script>
    
</body>

</html>