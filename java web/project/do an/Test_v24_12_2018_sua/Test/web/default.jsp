
<html lang="vn">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Phái Mạnh Shop</title>
        <!--        <link href="default.jsp" rel="canonical" />-->
        <link rel="icon" href="public/default/images/logo_ao.png" type="image/gif">
        <link rel="stylesheet" href="public/default/css/bootstrap.css">
        <link rel="stylesheet" href="public/default/css/font-awesome.css">
        <link href="public/default/css/main.css" rel="stylesheet" type="text/css">
        <link href="public/default/css/main_menu.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="public/default/slide-product/owl.carousel.css">
        <script type="text/javascript" src="public/default/js/jquery-1.9.1.min.js"></script> 
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
    </head>
    <body>
        <%
            String repage = (String) request.getSession().getAttribute("page");
            if(repage==null){
                request.getSession().setAttribute("prePage", "default.jsp");
            }else{
                request.getSession().setAttribute("prePage", repage);
            }
            request.getSession().setAttribute("page", "default.jsp");
        %>
        <%@include file="header.jsp" %>
        <%@include file="slider_home.jsp" %>
        <section class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="panel">
                        <div class="panel-heading">
                            <ul class="nav-tabs">
                                <li class="active"><a href="#tab1default" data-toggle="tab" aria-expanded="true">Sản phẩm <span>nổi bật</span></a></li>
                                <li class=""><a href="#tab2default" data-toggle="tab" aria-expanded="false">Sản phẩm <span>mới</span></a></li>
                            </ul>
                            <div class="col-md-12 col-xs-12 line-heght"><span><img src="public/default/images/icon-line.png"></span></div>
                        </div>            
                        <%@include file="slider_san_pham_1.jsp"%>

                    </div>
                </div>
            </div></section>
        <aside class="quangcao">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <a><img class="img-responsive" src="uploads/banner/nang-tam-dang-cap-viet.png"></a>

                    </div></div>
            </div>
        </aside>
        <%@include file="slider_san_pham_2.jsp" %>
        <section class="partner">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-xs-12 title_quantam"><p>Khách hàng <span>thân thiện</span></p></div>
                    <div style="width:100%;position:relative; display:inline-block;">
                        <section class="slide-product container unselect" >
                            <button class="slider_prev prev_client"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
                            <button class="slider_next next_client"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
                            <div class="slpd slpd_client">

                                <div class="item-partner">
                                    <a title="Diễn viên - Model Tiến Vũ"><img class="img-responsive" src="uploads/slide/2.jpg" alt="Diễn viên - Model Tiến Vũ"></a>
                                    <a>Diễn viên - Model Tiến Vũ</a>
                                </div>  


                                <div class="item-partner">
                                    <a  title="Model Công Thành"><img class="img-responsive" src="uploads/slide/5.jpg" alt="Model Công Thành"></a>
                                    <a>Model Công Thành</a>
                                </div>  


                                <div class="item-partner">
                                    <a  title="Model Đình Nam"><img class="img-responsive" src="uploads/slide/6.jpg" alt="Model Đình Nam"></a>
                                    <a>Model Đình Nam</a>
                                </div>  


                                <div class="item-partner">
                                    <a title="Model Đăng Khánh"><img class="img-responsive" src="uploads/slide/4.jpg" alt="Model Đăng Khánh"></a>
                                    <a>Model Đăng Khánh</a>
                                </div>  

                            </div>
                        </section>
                    </div>
                </div>
        </section> 

    </div>
    <aside class="quangcao">
        <div class="container">

            <div class="row"><div class="col-md-12 col-xs-12">
                    <a><img class="img-responsive" src="uploads/banner/nang-tam-dang-cap-viet.png"></a>

                </div></div>
        </div>
    </aside>

    <h1 style="width:1px; height:1px; font-size:0px">Thời trang Phái Mạnh, thương hiệu thời trang nam cao cấp, thời thượng</h1> 


    <link type="text/css" rel="stylesheet" href="public/default/css/dist/demo.css" />
    <link type="text/css" rel="stylesheet" href="public/default/css/dist/css/jquery.mmenu.css" />
    <link type="text/css" rel="stylesheet" href="public/default/css/dist/css/addons/jquery.mmenu.dragopen.css" />

    <%@include file="menu_mobi.jsp" %>

    <script type="text/javascript" src="public/default/css/dist/js/jquery.mmenu.min.js"></script>
    <script src="public/default/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="public/default/js/addons/bootstrap/jquery.smartmenus.bootstrap.js"></script>
    <script src="public/default/slide-product/owl.carousel.min.js"></script>
    <script src="public/default/js/main.js"></script>
    <script type="text/javascript" src="public/default/css/dist/js/addons/jquery.mmenu.dragopen.min.js"></script>
    <script type="text/javascript" src="public/default/css/dist/js/addons/jquery.mmenu.fixedelements.min.js"></script>

    <%@include file="footer.jsp" %>
</body>
<div></div>
</html>
<script src="js/addToCart.js" type="text/javascript"></script>