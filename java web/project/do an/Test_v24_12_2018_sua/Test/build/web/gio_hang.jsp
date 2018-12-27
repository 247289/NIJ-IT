<%@page import="DAO.DataHoadon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String repage = (String) request.getSession().getAttribute("page");
    request.getSession().setAttribute("prePage", repage);
    if (!repage.startsWith("gio_hang.jsp")&!repage.startsWith("thanh_toan.jsp")) {
        request.getSession().setAttribute("prePage1", repage);
    }
    request.getSession().setAttribute("page", "gio_hang.jsp");
    Vector<Product> pros = (Vector<Product>) request.getSession().getAttribute("giohang");
    Comsumer com1 = (Comsumer) request.getSession().getAttribute("user");
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
        <link href="public/default/css/main.css" rel="stylesheet" type="text/css">
        <link href="public/default/css/main_menu.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="public/default/slide-product/owl.carousel.css">
        <link href="public/default/css/main_v2.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="public/default/js/jquery-1.9.1.min.js"></script> 

    </head>
    <body>
        <%@include file="header.jsp" %>
        <section class="wapper">
            <div class="container">
                <div class="row">
                    <div class="title_cart">Giỏ hàng của bạn</div>
                </div>
                <%                    if (pros == null | pros.size() == 0) {
                        out.print("Hiện chưa có sản phẩm trong giỏ hàng");
                    } else {
                        for (Product p : pros) {
                %>
                <div class="row">
                    <div class="col-md-12 col-xs-12 cart">
                        <form action="#" method="post" id="buy_product"> 

                            <input type="hidden" name="ci_csrf_token" value="">     
                            <table class="cart_product">
                                <tbody>                                            
                                <input type="hidden" value="#">
                                <tr class="tr">
                                    <td><a href="#" class="img-giohang"><img class="img-thumbnail" src="<%=p.getHinhAnh().split(";")[0]%>"></a></td>
                                    <td>
                                        <div class="name-cart"><%=p.getTenSP()%></div>
                                        <div class="code-cart">(MSP: <%=p.getMaSP()%> )</div>
                                        <div class="price-cart"><%=p.getGia()%> VNĐ</div>
                                        <div class="mausac">
                                            <div class="kichthuoc-cart"></div>
                                            <ul class="item-kt ul-color">
                                                <li style="background-color:#<%=p.getMau()%>;"></li>
                                            </ul>
                                        </div>
                                        <div class="kichthuoc-cart"></div>
                                        <ul class="item-kt" style="width:100px">
                                            <%
                                                for (String x : p.getKichCo().split(",")) {
                                            %>
                                            <li style="display:inline;border:none;"><%= x%></li>
                                                <%
                                                    }
                                                %>
                                        </ul>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="name-cart sluong">Số lượng</div>
                                        <div class="number-cart">
                                            <div class="bt_quantity_update quantity_down" onclick="sub(<%=p.getMaSP()%>,<%=(long)p.getGia()%>,<%=com1==null?0:com1.getDiemso() %>)"><a>-</a></div>
                                            <div class="product-quantity"><input style="height:30px;width:30px;display: inline" name="qty" type="text" id="<%=p.getMaSP()%>" size="10" class="qty" value="<%=p.getSoluong()%>"></div>
                                            <div class="bt_quantity_update quantity_up" onclick="add(<%=p.getMaSP()%>,<%=(long)p.getGia()%>,<%=com1==null?0:com1.getDiemso() %>)"><a>+</a></div>
                                        </div> 
                                        <script type="text/javascript">
//                                            var cong_tru = parseInt($('.product-quantity input.qty').val());
//                                            $('.quantity_down').click(function () {
//                                                if (cong_tru > 0) {
//                                                    if (cong_tru == 1) {
//                                                        $('#addtocart').attr('disabled', 'disabled');
//                                                    }
//                                                    cong_tru -= 1;
//                                                } else {
//                                                    cong_tru = 0;
//                                                }
//                                                $('.product-quantity input.qty').val(cong_tru);
//                                            });
//                                            $('.quantity_up').click(function () {
//                                                $('.add-to-cart').removeAttr('disabled');
//                                                if (cong_tru < 100) {
//                                                    cong_tru += 1;
//                                                } else {
//                                                    cong_tru = 100;
//                                                }
//                                                $('.product-quantity input.qty').val(cong_tru)
//                                            });
                                        </script>                          
                                    </td>  
                                    <td>
                                    </td>                         
                                    <td class="delete" onclick="deleteItem(<%=p.getMaSP()%>)"><a href="#"><i class="fa fa-trash-o"></i><br>Xóa</a></td>
                                </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
                <%
                        }
                    }
                %>
                <div class="row">
                    <div class="total">
                        <div class="sum-cart">Tổng số tiền trong giỏ hàng : <span id="tongtien"><%= (long)DataHoadon.getTonggiatriGioHang(pros,com1==null?0:com1.getDiemso(),0) %></span> VNĐ</div>
                        <div class="finish"><a class="btn btn-danger" href="<%=(com1==null)?"form/form.jsp":"thanh_toan.jsp"%> ">Thanh toán</a>
                            <a class="btn btn-danger" href="<%= request.getSession().getAttribute("prePage1")%>">Tiếp tục mua hàng</a></div>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp"%>

    </body>
</html>
<script src="js/addToCart.js" type="text/javascript"></script>
