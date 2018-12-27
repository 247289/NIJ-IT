<%@page import="DAO.Data"%>
<%@page import="model.Product"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Phái Mạnh Shop</title>
        <link href="default.jsp" rel="canonical" />
        <link rel="icon" href="public/default/images/logo_ao.png" type="image/gif">
        <link rel="stylesheet" href="public/default/css/bootstrap.css">
        <link rel="stylesheet" href="public/default/css/font-awesome.css">
        <link href="public/default/css/main.css" rel="stylesheet" type="text/css">
        <link href="public/default/css/main_menu.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="public/default/slide-product/owl.carousel.css">
        <link href="public/default/css/main_v2.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="public/default/js/jquery-1.9.1.min.js"></script> 
    </head>
    <body>-->

        <form action="#" method="post" id="buy_product"> 

            <input type="hidden" name="ci_csrf_token" value="">     
            <table class="cart_product">
                <tbody>                                            
                <input type="hidden" value="#">
                <tr class="tr">
                    <td><a href="#" class="img-giohang"><img class="img-thumbnail" src="anh"></a></td>
                    <td>
                        <div class="name-cart">tên</div>
                        <div class="code-cart">(MSP: )</div>
                        <div class="price-cart"> VNĐ</div>
                        <div class="mausac">
                            <div class="kichthuoc-cart"></div>
                            <ul class="item-kt ul-color">
                                <li style="background-color:#00C5CD;"></li>
                            </ul>
                        </div>
                        <div class="kichthuoc-cart"></div>
                        <ul class="item-kt">
                            <li>28</li>
                        </ul>
                        </div>
                    </td>
                    <td>
                        <div class="name-cart sluong">Số lượng</div>
                        <div class="number-cart">
                            <div class="bt_quantity_update quantity_down"><a href="#">-</a></div>
                            <div class="product-quantity"><input name="qty" type="text" id="qty" size="10" class="qty" value="1"></div>
                            <div class="bt_quantity_update quantity_up"><a href="#">+</a></div>
                        </div> 
                        <script type="text/javascript">
                            var cong_tru = parseInt($('.product-quantity input.qty').val());
                            $('.quantity_down').click(function () {
                                if (cong_tru > 0) {
                                    if (cong_tru == 1) {
                                        $('#addtocart').attr('disabled', 'disabled');
                                    }
                                    cong_tru -= 1;
                                } else {
                                    cong_tru = 0;
                                }
                                $('.product-quantity input.qty').val(cong_tru);
                            });
                            $('.quantity_up').click(function () {
                                $('.add-to-cart').removeAttr('disabled');
                                if (cong_tru < 100) {
                                    cong_tru += 1;
                                } else {
                                    cong_tru = 100;
                                }
                                $('.product-quantity input.qty').val(cong_tru)
                            });
                        </script>                          
                    </td>  
                    <td>
                    </td>                         
                    <td class="delete"><a href="#"><i class="fa fa-trash-o"></i><br>Xóa</a></td>
                </tr>
                </tbody>
            </table>
        </form>
        <div class="total">
            <div class="sum-cart">Tổng số tiền trong giỏ hàng : <span>495,000 VNĐ</span></div>
            <div class="finish"><a class="btn btn-danger" href="#">Thanh toán</a>
                <a class="btn btn-danger" href="#">Tiếp tục mua hàng</a></div>
        </div><!--end total-->
<!--    </body>
</html>-->
