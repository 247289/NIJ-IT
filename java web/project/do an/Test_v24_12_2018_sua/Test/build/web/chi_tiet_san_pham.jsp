<%@page import="DAO.Data"%>
<%@page import="model.Product"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String repage = (String) request.getSession().getAttribute("page");
    request.getSession().setAttribute("prePage", repage);
    if (!repage.startsWith("chi_tiet_san_pham") & !repage.startsWith("gio_hang.jsp") & !repage.startsWith("thanh_toan.jsp")) {
        request.getSession().setAttribute("prePage3", repage);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Phái Mạnh Shop</title>
        <link href="default.jsp" rel="canonical" />
        <link rel="icon" href="public/default/images/logo_ao.png" type="image/gif">
        <link rel="stylesheet" href="public/default/css/bootstrap.css">
        <link rel="stylesheet" href="public/default/css/font-awesome.css">
        <link href="public/default/css/main_v2.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="public/default/js/jquery-1.9.1.min.js"></script>
        <link href="public/default/css/main_menu.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="public/default/slide-product/owl.carousel.css">
        <link rel="stylesheet" href="public/default/slide-product/owl.theme.css" >
        <!--product-->
        <link href="public/default/magiczoomplus/magiczoomplus.css" rel="stylesheet" type="text/css" media="screen"/>
        <script type="text/javascript" language="javascript" src="public/default/magiczoomplus/jquery.carouFredSel-6.2.0-packed.js"></script>
        <script type="text/javascript" language="javascript">
            $(function () {
                $('#foo3').carouFredSel({
                    /*width: 380,*/
                    height: 'auto',
                    prev: '#prev13',
                    next: '#next13',
                    auto: true,
                    scroll: 1
                });
            });
        </script>
        <style type="text/css" media="all">
            .list_carousel {
                width: 100%; height:148px;
                position:relative;
                float:left;
                overflow:hidden;
            }
            .list_carousel ul {
                margin: 0;
                width: 100%;
                padding: 0;
                list-style: none;
                display: block;
            }
            .list_carousel li {
                display:inline-block;
                padding: 0px 10px;
            }
            .list_carousel li img{
                float: left; width:96px;  border:solid 1px #949494;
            }
            .list_carousel li a{ text-decoration:none;}
            .list_carousel li a h3{ color:#835410; text-align:center; font-weight:500; margin-top:10px; font-size:16px; margin-bottom:10px; text-transform:uppercase;}
            .list_carousel li:hover{
            }
            .list_carousel.responsive {
                width: auto;
                margin-left: 0;
            }
            .clearfix {
                float: none;
                clear: both;
            }
            .pager {
                float: left;
                width: 320px;
                text-align: center;
            }
            .pager a {
                margin: 0 5px;
                text-decoration: none;
            }
            .pager a.selected {
                text-decoration: underline;
            }
            .timer{
                background-color: #999;
                height: 6px;
                width: 0px;
            }
            .select_option{
                background:transparent;
                border:1px solid #ca0000;
            }
            .prev13{ width: 10px; height:10px; position: absolute; z-index: 10; background:url(public/default/images/leftArrow.png) no-repeat; top: 50px; left: 0px;}
            .next13{ width: 10px; height:10px; position: absolute; z-index: 10; background: url(public/default/images/rightArrow.png) no-repeat; top: 50px; right: 0px;}
            .caroufredsel_wrapper,#foo3{ width:100% !important; text-align:center !important;}
            .app-figure{ margin-bottom:50px !important; position:relative;}
            .app-figure:before,.app-figure:after{position:absolute;z-index:1000;content:'';}
            .app-figure:before{ width:50%;  bottom:-25px; left:25%; height:1px;  background-color:#e5e5e5; }
            .app-figure:after{ width:39px; height:11px; padding:0 8px; bottom:-30px; left:45%; background:#fff url(public/default/images/icon-line-detail.png) no-repeat center center;}
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%            Product p = new Data().getProduct(request.getParameter("masp"));
            request.getSession().setAttribute("page", "chi_tiet_san_pham.jsp?masp=" + p.getMaSP());
            String[] ha = p.getHinhAnh().split(";");
            String[] kt = p.getKichCo().split(",");
            int count = ha.length;
            int count_kt = kt.length;
        %>
        <section class="wapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 col-xs-12 right-item">
                        <div class="hinhanh">
                            <div class="frame_images" >
                                <div class="app-figure" id="zoom-fig">
                                    <a id="Zoom-1" class="MagicZoom" title="#">
                                        <img src="<%=ha[0]%>" title="#" alt="#" id="AnhLon" style="height: 388px;width: 300px;min-height: 388px;min-width: 300px"/></a>
                                </div>

                                <div class="selectors">

                                    <div class="list_carousel">
                                        <a href="#prev13" id="prev13" class="prev13"></a>
                                        <a href="#next13" id="next13" class="next13"></a>

                                        <ul id="foo3">
                                            <%
                                                if (count > 4) {
                                                    for (int i = 1; i < count; i++) {
                                            %>
                                            <li>
                                                <a><img src="<%=ha[i]%>"  onclick="chuyenAnh(this.src)"/></a>
                                            </li>
                                            <%
                                                }
                                            } else if (count <= 4) {
                                                for (int i = 1; i < count; i++) {
                                            %>
                                            <li>
                                                <a><img src="<%=ha[i]%>"  onclick="chuyenAnh(this.src)"/></a>
                                            </li>
                                            <%
                                                    }
                                                }
                                            %>

                                        </ul>
                                    </div>
                                </div><!--end selectors-->
                            </div><!--end frame_images-->
                        </div><!--end hinhanh-->
                        <div class="tomtat">
                            <form method="post" >
                                <input type="hidden" name="ci_csrf_token" value="" />
                                <input name="idsp" type="hidden" value="8202" />
                                <h1><%=p.getTenSP()%></h1>
                                <div class="code">MSP : <span><%=p.getMaSP()%></span></div>
                                <div class="price-detail"><%=p.getGia()%> VNĐ</div>

                                <div class="kichthuoc">
                                    Kích thước
                                    <ul id="list_kt">
                                        <select>
                                            <%
                                                for (int i = 0; i < count_kt; i++) {
                                            %>
                                            <option style="height: 50px;background:transparent;border:1px solid #ca0000;"><%=kt[i]%></option>
                                            <%
                                                }
                                            %>                                    
                                        </select>
                                    </ul>
                                </div>
                                <div class="kichthuoc">
                                    Màu sắc
                                    <ul id="list_ms">
                                        <li class="color selected" style="background-color:#<%=p.getMau()%>;" id="ms_5"></li>
                                        <input type="hidden" name="color" id="id_mausac">
                                    </ul>
                                </div>
                                <div class="kichthuoc">
                                    Số lượng
                                    <div class="th_left">
                                        <div class="bt_quantity_update quantity_down" onclick="giam()">-</div>
                                        <div class="product-quantity"><input name="qty" type="text" id="qty" size="10" class="qty" value="1"></div>
                                        <div class="bt_quantity_update quantity_up" onclick="tang()">+</div>
                                        <input type="hidden" value="1" id="soluong">
                                    </div>
                                </div>
                                <script>
                                    function chuyenAnh(str) {
                                        // alert("ok");
                                        document.getElementById("AnhLon").src = str;
                                    }
                                    function giam() {
                                        var cong_tru = parseInt($('.product-quantity input.qty').val());
                                        if (cong_tru > 0) {
                                            if (cong_tru == 1) {
                                                $('#addtocart').attr('disabled', 'disabled');
                                            }
                                            cong_tru -= 1;
                                        } else {
                                            cong_tru = 0;
                                        }
                                        $('.product-quantity input.qty').val(cong_tru);
                                        document.getElementById("soluong").value = parseInt($('.product-quantity input.qty').val());
                                    }
                                    function tang() {
                                        var cong_tru = parseInt($('.product-quantity input.qty').val());
                                        $('.add-to-cart').removeAttr('disabled');
                                        if (cong_tru < 100) {
                                            cong_tru += 1;
                                        } else {
                                            cong_tru = 100;
                                        }
                                        $('.product-quantity input.qty').val(cong_tru);
                                        document.getElementById("soluong").value = parseInt($('.product-quantity input.qty').val());
                                    }
                                </script>

                                <div class="kichthuoc" style="text-align:center;">

                                    <a href="mua_ngay.jsp?masp=<%=p.getMaSP()%>"><input name="button" id="muangay" class="btn btn-info" value=" Mua ngay "></a>
                                    <a href="<%= request.getSession().getAttribute("prePage3")%> "><input   name="button" id="muatiep" class="btn btn-info_2" value="Tiếp tục mua hàng"></a>
                                    <input type="button" name="button" id="them" class="btn btn-warning" value=" Thêm vào giỏ hàng " onclick="addToCart(<%= p.getMaSP()%>)">

                                    <!--                                    <script>
                                                                            function thanhtoan() {
                                                                                window.location.href = "thanh_toan.jsp";
                                                                            }
                                                                            function ve() {
                                                                                window.location.href = "defalut.jsp";
                                                                            }
                                                                        </script>-->
                                </div>
                                <span class="after-tt"></span>
                            </form>
                        </div><!--end tomtat-->
                        <div class="detai">
                            <div class="panel">
                                <div>
                                    <div class="panel-body">
                                        <div class="tab-content">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!--end noidung-->

                    </div><!--end right-->
                    <div class="col-md-3 col-xs-12 left-item">
                        <div class="box-left">
                            <figure class="col-md-12 col-xs-4 fixsup">
                                <div class="fig-support">
                                    <a href="#" title="#"><img src="public/default/img/giaohang.png" alt="#"></a>
                                    <figcaption>
                                        <a href="#" title="#">Giao hàng tận nơi</a><br>
                                        <span>Toàn quốc,uy tín, đảm bảo</span>
                                    </figcaption>
                                </div>
                            </figure>
                            <figure class="col-md-12 col-xs-4 fixsup">
                                <div class="fig-support">
                                    <a href="#" title="#"><img src="public/default/img/hotro.png" alt="#"></a>
                                    <figcaption>
                                        <a href="#" title="#">Hỗ trợ trực tuyến</a><br>
                                        <span>Đổi trả trong vòng 7 ngày</span>
                                    </figcaption>
                                </div>
                            </figure>
                            <figure class="col-md-12 col-xs-4 fixsup">
                                <div class="fig-support">
                                    <a href="#" title="#"><img src="public/default/img/antoan.png" alt="#"></a>
                                    <figcaption>
                                        <a href="#" title="#">An toàn khi mua sắm</a><br>
                                        <span>Hỗ trợ thanh toán khi nhận hàng</span>
                                    </figcaption>
                                </div>
                            </figure>
                        </div><!--end box-left-->
                        <div class="box-left fanpage">
                        </div><!--end box-left-->
                    </div><!--end left-->
                </div>
            </div>
        </section><!--end menu-->

        <section class="wapper goiy">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-xs-12 title_quantam title_qt"><p>Gợi ý sản phẩm <span>nên mua</span></p></div>
                    <div class="box_slide_product">
                        <section class="slide-product container unselect">
                            <button class="slider_prev prev_new"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
                            <button class="slider_next next_new"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
                            <div class="slpd slpd_new">
                                <%
                                    Vector<Product> getProducts = new Data().getProducts(0, "", "", "", 0, 1, 11);
//                                            Product p = new Product();
                                    if (getProducts.size() == 0) {
                                        out.print("không có s?n ph?m !");
                                    } else {
                                        for (int i = 0; i < getProducts.size(); i++) {
                                %> 
                                <div class="col-md3">                                              
                                    <div class="product">
                                        <% p = getProducts.get(i);%>
                                        <a class="img" href="chi_tiet_san_pham.jsp?masp=<%=p.getMaSP()%>" title="Qu?n jean nam th?i trang cao c?p-DT08"><img class="img-responsive" src="<%=p.getHinhAnh().split(";")[0]%>" alt="Qu?n jean nam th?i trang cao c?p-DT08"></a>
                                        <figcaption><h2><a href="quan-jeans-nam/#" title="Qu?n jean nam th?i trang cao c?p-DT08"><%=p.getTenSP()%></a></h2>
                                            <div class="call"><%=p.getMaSP()%></div>
                                            <div class="price"><%=p.getGia()%> VND</div>
                                        </figcaption>
                                        <div class="product-btn">
                                            <a href="chi_tiet_san_pham.jsp?masp=<%=p.getMaSP()%>" title="Qu?n jean nam th?i trang cao c?p-DT08" class="btn btn-default">Mua ngay</a>
                                            <a title="Thêm vào gi? hàng" class="btn btn-default" onclick="addToCart(<%= p.getMaSP()%>)"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div> 


                                <%
                                        }
                                    }
                                %>    


                            </div>
                        </section>
                    </div><!--end box_slide_product-->
                </div>
            </div>
        </section>
        <%@include file="footer.jsp" %>
        <script src="public/default/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="public/default/js/jquery.smartmenus.js"></script>
        <script type="text/javascript" src="public/default/js/addons/bootstrap/jquery.smartmenus.bootstrap.js"></script>
        <script src="public/default/slide-product/owl.carousel.min.js"></script>
        <script src="public/default/js/main.js"></script>

    </body>
</html>
<script src="js/addToCart.js" type="text/javascript"></script>
