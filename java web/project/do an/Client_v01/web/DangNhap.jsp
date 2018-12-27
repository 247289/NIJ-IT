<%-- 
    Document   : DangNhap
    Created on : Dec 14, 2018, 9:49:57 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Đăng Nhập </title>
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
                        <li class="active"><a href="DangNhap.jsp">Đăng Nhập</a></li>
                    </ul>
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Breadcrumb End -->
        <!-- LogIn Page Start -->
        <div class="log-in ptb-100 ptb-sm-60">
            <div class="container">
                <div class="row">
                    <!-- Returning Customer Start -->
                    <div class="col-md-8">
                        <div class="well">
                            <div class="return-customer">
                                <h3 class="mb-10 custom-title"><%=
                                    request.getAttribute("erro") != null? request.getAttribute("erro"):"Thông Tin Đăng Nhập"
                                %></h3>
                                <form action="Login" method="post">
                                    <div class="form-group">
                                        <label>Email<span class="require">*</span></label>
                                        <input type="text" name="name" placeholder="Email Đăng Nhập"  class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Mật Khẩu<span class="require">*</span></label>
                                        <input type="password" name="pass" placeholder="Mật Khẩu" class="form-control">
                                    </div>
                                    <p class="lost-password"><a href="#">Quên Mật Khẩu?</a></p>
                                    <button  onclick="chexlogin();" value="Đăng Nhập" class="return-customer-btn" type="submit" >Đăng Nhập <span class="lnr lnr-enter"></span></button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Returning Customer End -->
                    <!-- New Customer Start -->
                    <div class="col-md-4">
                        <div class="well mb-sm-30">
                            <div class="new-customer">
                                <h3 class="custom-title">Khách Hàng Mới</h3>
                                <p>Hãy đăng ký để nhập được nhiều thông tin ưu đãi và chăm sóc khách hàng tốt hơn!</p>
                                <a  href="DangKy.jsp"><button class="return-customer-btn">Đăng Ký  <span class="lnr lnr-user"></span></button> </a>
                            </div>
                        </div>
                    </div>
                    <!-- New Customer End -->
                </div>
                <!-- Row End -->
            </div>
            <!-- Container End -->
        </div>
        <!-- LogIn Page End -->
        
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
<!--    <script type="text/javascript">
        
        function chexlogin() {
           var a =  document.getElementsByName('name').value;
           var b = document.getElementsByName('pass').value;
           if(a=="") {
               alert("Tài khoản đăng  nhập không được để chống !");
               document.all.name.focus();
           }
           else {
                   if (b=="") {
                       alert("Mật khẩu đắng nhập không được để chống !");
                   document.all.pass.focus();
               }
               
        }
    }
        
    </script>-->
    
</body>

</html>
