<%@page import="model.Product"%>
<%@page import="model.Comsumer"%>
<%@page import="model.TypeProduct"%>
<%@page import="java.util.Vector"%>
<%@page import="DAO.Data"%>
<!DOCTYPE html>
<html lang="vn">
    <head>
        <!--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">-->
        <title>Phái Mạnh Shop</title>
        <!--        <link href="default.jsp" rel="canonical"/>
                <link rel="icon" href="public/default/images/logo_ao.png" type="image/gif">
                <link rel="stylesheet" href="public/default/css/bootstrap.css">
                <link rel="stylesheet" href="public/default/css/font-awesome.css">
                <link href="public/default/css/main.css" rel="stylesheet" type="text/css">
                <link href="public/default/css/main_menu.css" rel="stylesheet" type="text/css">
                <link rel="stylesheet" href="public/default/slide-product/owl.carousel.css">
                <script type="text/javascript" src="public/default/js/jquery-1.9.1.min.js"></script> -->
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
    </head>
    <body>
        <div class="content">
            <header class="navbar-fixedtop">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-4 col-xs-6 logo"><a href="default.jsp" target="_self"><img style="margin-top:-10px;" class="img-thumbnail" src="public/default/img/logo5.png" title="Phái Mạnh Shop" alt="Phái Mạnh Shop"></a></div>
                        <div class="col-md-3 col-sm-8 col-xs-6 search">
                            <form id="form" name="form" method="get" action="default.jsp" class="form-inline">
                                <input required type="search" name="q" id="tukhoa" placeholder="Bạn cần tìm gì ?" class="form-control" value="">
                                <span class="glyphicon glyphicon-search"></span>
                                <input type="submit" name="tk" id="tk" value="&nbsp;">
                            </form>
                        </div>
                        <% Comsumer com = (Comsumer) request.getSession().getAttribute("user");
                            Vector<Product> pros2 = (Vector<Product>) request.getSession().getAttribute("giohang");
                            if (pros2 == null) {
                                pros2 = new Vector<Product>();
                                request.getSession().setAttribute("giohang", pros2);
                            }
                            Vector<Product> pros1 = (Vector<Product>) request.getSession().getAttribute("giohang");
                        %>
                        <div class="col-md-6 col-xs-12 hidden-xs">
                            <ul class="hotline pull-right">
                                <li class="col-md-5"><i class="fa fa-volume-control-phone" aria-hidden="true"></i> Hỗ Trợ Trực Tiếp<br><a title="tell">(012)345.67898</a></li>
                                <li style="margin-top: -5px;" class="col-md-5"><img style="width: 40px;height: 40px;" src="<%= (com == null) ? "public/default/images/chua_dang_nhap.png" : "public/default/images/dang_nhap_roi.png"%>">&emsp;<a href="<%= (com == null) ? "form/form.jsp" : "#"%>" title="Đăng nhập, đăng kí">
                                        <%

                                            if (com != null) {
                                                out.print("Xin chào, " + com.getHoten());
                                            } else {
                                                out.print("Đăng nhập");
                                            }
                                        %>
                                    </a><a href="dangxuat.jsp"><%= (com != null) ? "Đăng xuất" : ""%></a> 
                                </li>
                                <li class="col-md-2"><a href="gio_hang.jsp" class="cart" title="Gi? hàng"><img src="public/default/images/icon-cart.png">
                                        <span id="total_items"><%=(pros1 == null) ? "0" : pros1.size()%></span>
                                        <!--                                        <input type="hidden" id="total_cart" value="0">-->
                                    </a></li>
                            </ul>
                        </div><!--end row-->
                    </div><!--end container-->
            </header><!--end header-->
            <section class="menu hidden-sm hidden-xs"> 
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-xs-12">

                            <div class="menu-top">
                                <ul id="horizontal-multilevel-menu">

                                    <li id="dichvu-hover"><a href="ao_nam.jsp" title="áo nam" class="root-item">
                                            <div class="ico-top">
                                                <div data-hover="true" class="img-on" style="background:url('public/default/img/aonam.png') no-repeat center top;"></div>
                                                <div data-nonhover="true" class="img-off" style="background:url('public/default/img/aonam.png') no-repeat center top;"></div>
                                            </div>
                                            <span> Áo nam</span></a>
                                        <div class="menu-dropdown">
                                            <div class="content-main-mega">
                                                <div class="section-mega">
                                                    <div class="accordation-menu">
                                                        <ul class="acc root" id="root">

                                                            <li><a href='ao_vest_nam.jsp' title="Áo Vest Nam">Áo Vest Nam</a></li>

                                                            <li><a href='ao_so_mi_nam.jsp' title="Áo Sơ Mi Nam">Áo Sơ Mi Nam</a></li>

                                                            <li><a href='ao_khoac_nam.jsp' title="Áo Khoác Nam">Áo Khoác Nam</a></li>

                                                            <li><a href='ao_thun_nam.jsp' title="Áo Thun Nam">Áo Thun Nam</a></li>

                                                            <li><a href='ao_len_nam.jsp' title="Áo Len Nam">Áo Len Nam</a></li>

                                                        </ul>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </li>
                                    <li id="dichvu-hover"><a href="quan_nam.jsp" title="qu?n nam" class="root-item">
                                            <div class="ico-top">
                                                <div data-hover="true" class="img-on" style="background:url('public/default/img/quannam.png') no-repeat center top;"></div>
                                                <div data-nonhover="true" class="img-off" style="background:url('public/default/img/quannam.png') no-repeat center top;"></div>
                                            </div>
                                            <span> Quần nam</span></a>
                                        <div class="menu-dropdown">
                                            <div class="content-main-mega">
                                                <div class="section-mega">
                                                    <div class="accordation-menu">
                                                        <ul class="acc root" id="root">

                                                            <li><a href='quan_jeans_nam.jsp' title="Quần Jeans Nam">Quần Jeans Nam</a></li>

                                                            <li><a href='quan_short_nam.jsp' title="Quần Short Nam">Quần Short Nam</a></li>

                                                            <li><a href='quan_kaki_nam.jsp' title="Quần Kaki Nam">Quần Kaki Nam</a></li>

                                                            <li><a href='quan_tay_nam.jsp' title="Quần Tây Nam">Quần Tây Nam</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li id="dichvu-hover"><a href="giay_dep_nam.jsp" title="Giày dép nam" class="root-item">
                                            <div class="ico-top">
                                                <div data-hover="true" class="img-on" style="background:url('public/default/img/giaydepnam.png') no-repeat center top;"></div>
                                                <div data-nonhover="true" class="img-off" style="background:url('public/default/img/giaydepnam.png') no-repeat center top;"></div>
                                            </div>
                                            <span> Giày dép nam</span></a>
                                    </li>
                                    <li id="dichvu-hover"><a href="phu_kien.jsp" title="Phụ kiện" class="root-item">
                                            <div class="ico-top">
                                                <div data-hover="true" class="img-on" style="background:url('public/default/img/phukien.png') no-repeat center top;"></div>
                                                <div data-nonhover="true" class="img-off" style="background:url('public/default/img/phukien.png') no-repeat center top;"></div>
                                            </div>
                                            <span> Phụ kiện nam</span></a>
                                        <!--                                        <div class="menu-dropdown">
                                                                                    <div class="content-main-mega">
                                                                                        <div class="section-mega">
                                                                                            <div class="accordation-menu">
                                                                                                <ul class="acc root" id="root">
                                        
                                                                                                    <li><a href='non_nam.jsp' title="Nón Nam">Nón Nam</a></li>
                                        
                                                                                                    <li><a href='tui_xach_nam.jsp' title="Túi Xách">Túi Xách</a></li>
                                        
                                                                                                    <li><a href='that_lung_nam.jsp' title="Thắt L?ng Nam">Thắt Lưng Nam</a></li>
                                        
                                                                                                    <li><a href='ca_vat_nam.jsp' title="Cà V?t Nam">Cà Vạt Nam</a></li>
                                        
                                                                                                    <li><a href='that_no_nam.jsp' title="Thắt Nơ Nam">Thắt Nơ Nam</a></li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                        
                                                                                    </div>
                                                                                </div>-->
                                    </li>
                                    <li id="dichvu-hover">
                                        <a href="tin_tuc.jsp" title="Tin Tức Sự Kiện" class="root-item">
                                            <div class="ico-top">
                                                <div data-hover="true" class="img-on" style="background:url('public/default/img/tintuc.png') no-repeat center top;"></div>
                                                <div data-nonhover="true" class="img-off" style="background:url('public/default/img/tintuc.png') no-repeat center top;"></div>
                                            </div>
                                            <span>Tin Tức Sự Kiện</span></a>
                                    </li>
                                    <li>
                                        <a href="khuyen_mai.jsp" title="Khuyễn mãi" class="root-item">
                                            <div class="ico-top">
                                                <div data-hover="true" class="img-on" style="background:url('public/default/img/sale.png') no-repeat center top;"></div>
                                                <div data-nonhover="true" class="img-off" style="background:url('public/default/img/sale.png') no-repeat center top;"></div>
                                            </div>
                                            <span> Khuyễn mãi</span></a>
                                    </li>
                                </ul></div>
                        </div>
                    </div>
                </div>
            </section> 
            <!--end header-->
            <link type="text/css" rel="stylesheet" href="public/default/css/dist/demo.css" />
            <link type="text/css" rel="stylesheet" href="public/default/css/dist/css/jquery.mmenu.css" />
            <link type="text/css" rel="stylesheet" href="public/default/css/dist/css/addons/jquery.mmenu.dragopen.css" />
            <script type="text/javascript" src="public/default/css/dist/js/jquery.mmenu.min.js"></script>
            <script type="text/javascript" src="public/default/css/dist/js/addons/jquery.mmenu.dragopen.min.js"></script>
            <script type="text/javascript" src="public/default/css/dist/js/addons/jquery.mmenu.fixedelements.min.js"></script>
