<%-- 
    Document   : DangKy
    Created on : Dec 14, 2018, 9:49:44 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Đăng Ký </title>
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
                        <li class="active"><a href="DangKy.jsp">Đăng Ký</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Breadcrumb End -->
        <div class="register-account ptb-50 ptb-sm-60">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-register well">
                            <fieldset>
                                <legend><h3>Thông Tin Đăng Ký</h3></legend>
                                
                                <div class="form-group d-md-flex align-items-md-center">
                                    <label class="control-label col-md-2" for="txtname">Họ & Tên<span class="require">*</span></label>
                                    <div class="col-md-10">
                                        <input type="text" class="form-control" id="txtname" placeholder="Họ & Tên">
                                    </div>
                                </div>
                                
                                <div class="form-group d-md-flex align-items-md-center">
                                    <label class="control-label col-md-2" for="txtdiachi">Địa Chỉ<span class="require">*</span></label>
                                    <div class="col-md-10">
                                        <input type="email" class="form-control" id="txtdiachi" placeholder="Địa Chỉ">
                                    </div>
                                </div>

                                <div class="form-group d-md-flex align-items-md-center">
                                    <label class="control-label col-md-2" for="txtemail">Email<span class="require">*</span></label>
                                    <div class="col-md-10">
                                        <input type="email" class="form-control" id="txtemail" placeholder="Email Sẽ Là Tên Đăng Nhập">
                                    </div>
                                </div>

                                <div class="form-group d-md-flex align-items-md-center">
                                    <label class="control-label col-md-2" for="txtsdt">Số Điện Thoại<span class="require">*</span></label>
                                    <div class="col-md-10">
                                        <input type="email" class="form-control" id="txtsdt" placeholder="Số Điện Thoại">
                                    </div>
                                </div>
                                <div class="form-group d-md-flex align-items-md-center">
                                    <label class="col-md-2 control-label">Giới Tính<span class="require"> </span></label>
                                    <div class="col-md-10 radio-button">
                                        <label ><input type="radio" name="radio"><span class="label-text">Nam</span></label>
                                        <label ><input type="radio" name="radio"><span class="label-text">Nữ</span></label>
                                        
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend><h3>Mật Khẩu</h3></legend>
                                <div class="form-group d-md-flex align-items-md-center">
                                    <label class="control-label col-md-2" for="txtpass1">Mật Khẩu<span class="require">*</span></label>
                                    <div class="col-md-10">
                                        <input type="password" class="form-control" id="txtpass1" placeholder="Mật Khẩu">
                                    </div>
                                </div>
                                <div class="form-group d-md-flex align-items-md-center">
                                    <label class="control-label col-md-2" for="txtpass2">Nhập Lại Mật Khẩu<span class="require">*</span></label>
                                    <div class="col-md-10">
                                        <input type="password" class="form-control" id="txtpass2" placeholder="Nhập Lại Mật Khẩu">
                                    </div>
                                </div>
                            </fieldset>
                            <div class="terms">
                                <div  class="align-items-md-center">                                    
                                    <input type="submit" onclick="chex();"  value="Đăng Ký" class="return-customer-btn"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Row End -->
            </div>
            <!-- Container End -->
        </div>
        <!-- Register Account End -->
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
            var c = document.getElementById('txtemail').value;
            var d = document.getElementById('txthuyen').value;
            var e = document.getElementById('txtdiachi').value;
            var f = document.getElementById('txtpass1').value;
            var g = document.getElementById('txtpass2').value;
            
            if(a=="" || isNaN(a)!=true)
            {
                alert("Tên không được bỏ chống hoặc chứa số !");
                document.all.txtname.focus();
            }
            else {
                if (e=="") {
                alert("Địa chỉ không được để chống !");
                document.all.txtdiachi.focus();
                }
                else {
                    if (c=="") {
                        alert("Email không được bỏ chống !");
                        document.all.txtemail.focus();
                    }
                    else {
                        if (b=="" isNaN(a)==true) {
                            alert("Số điện thoại không hợp lệ !");
                            document.all.txtsdt.focus();
                        }
                        else {
                            if(e=="") {
                                alert("Địa chỉ không được bỏ chống !");
                                document.all.txtdiachi.focus();
                            }
                            else {
                                if (f=="") {
                                    alert("Mật khẩu không được để chống !");
                                    document.all.txtpass1.focus();
                                }
                                else {
                                    if (g=="") {
                                        alert("Xác nhận mật khẩu !");
                                        document.all.txtpass2.focus();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        
    </script>
    
</body>

</html>