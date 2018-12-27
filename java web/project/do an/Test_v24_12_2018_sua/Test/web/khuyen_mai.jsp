<%@page import="DAO.Data"%>
<%@page import="model.Product"%>
<%@page import="java.util.Vector"%>
<%
    String repage=(String)request.getSession().getAttribute("page");
    request.getSession().setAttribute("prePage", repage);
    request.getSession().setAttribute("page", "khuyen_mai.jsp");
%>
<!DOCTYPE html>
<html lang="vn">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Phái M?nh Shop</title>
        <link href="default.jsp" rel="canonical" />
        <link rel="icon" href="public/default/images/logo_ao.png" type="image/gif">
        <link rel="stylesheet" href="public/default/css/bootstrap.css">
        <link rel="stylesheet" href="public/default/css/font-awesome.css">
        <link href="public/default/css/main.css" rel="stylesheet" type="text/css">
        <link href="public/default/css/main_menu.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="public/default/slide-product/owl.carousel.css">
        <script type="text/javascript" src="public/default/js/jquery-1.9.1.min.js"></script> 
        <link href="public/default/css/main_v1.css" rel="stylesheet" type="text/css">
         <%@page contentType="text/html" pageEncoding="UTF-8"%>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <section class="slide-home">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-xs-12">
                        <a title="Banner danh m?c"><img class="img-responsive" src="uploads/banner/Banner_web_danh_muc_quan1.jpg" alt="Banner danh m?c" ></a>
                    </div>
                </div>
            </div>
        </section><!--end menu-->
        <section class="wapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 col-xs-12 right-item pull-right">
                        <div class="col-md-12 col-xs-12">
                            <div class="box-tt">
                                <h2 class="title_h1">Khuyến Mãi</h2>
                            </div>
                            <h1 style="    float: left;
                                margin-bottom: 0;
                                margin-top: 0;
                                color: #262626;
                                font-family: Roboto-BoldCondensed;
                                text-transform: uppercase;">Hiện không có sản phẩm khuyễn mãi nào !</h1>
                        </div>
                    </div>
                    <div class="col-md-3 col-xs-12 left-item pull-left hidden-xs">
                        <%@include file="menu_left.jsp" %>               
                    </div> 
                </div>
            </div>
        </section><!--end menu-->

        <%@include file="footer.jsp" %>    
        <script src="public/default/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="public/default/js/jquery.smartmenus.js"></script>
        <script type="text/javascript" src="public/default/js/addons/bootstrap/jquery.smartmenus.bootstrap.js"></script>
        <script src="public/default/js/main_v1.js"></script>
    </body><div></div></html>