<%@page import="model.Suplier"%>
<%@page import="java.util.Vector"%>
<%@page import="DAO.*"%>
<%@page import="model.*"%>
<%
    String repage = (String) request.getSession().getAttribute("page");
    request.getSession().setAttribute("prePage", repage);
    if (!repage.startsWith("gio_hang.jsp") & !repage.startsWith("thanh_toan.jsp")) {
        request.getSession().setAttribute("prePage1", repage);
    }
    request.getSession().setAttribute("page", "thanh_toan.jsp");
    Vector<Product> pros = (Vector<Product>) request.getSession().getAttribute("giohang");
    Comsumer com1 = (Comsumer) request.getSession().getAttribute("user");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Thanh toán</title>
        <link rel="icon" href="public/default/images/logo_ao.png" type="image/gif">
        <link rel="stylesheet" href="public/default/css/bootstrap.css">
        <link rel="stylesheet" href="public/default/css/font-awesome.css">
        <link href="public/default/css/main_menu.css" rel="stylesheet" type="text/css">
        <link href="public/default/css/main_cart.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="public/default/js/jquery-1.9.1.min.js"></script>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <style>
            .gia{
                color: #ca0000;
            }
            span{
                color: #ca0000;
                display: none;
            }
            .ten{
                font-size: 18px;
                display: block;
            }
        </style>
    </head>
    <body>
        <%

        %>
        <header class="navbar-fixedtop">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-4 col-xs-6 logo"><a href="default.jsp"><img class="img-thumbnail" src="public/default/img/logo5.png" title="logo" alt="logo"></a></div>        
                </div><!--end row-->
            </div><!--end container-->
        </header><!--end header-->
        <section class="wapper">
            <div class="container">

                <div class="row">
                    <div class="col-md-12 col-xs-12"><div class="line-height"></div></div>

                    <form action="ThanhToan" method="post" id="formTruong"> 
                        <input type="hidden" name="ci_csrf_token" value=""> 
                        <div class="col-md-6 col-xs-12 left-cart">    
                            <div class="box-left">
                                <div class="title_thanhtoan">Thông tin người nhận</div> 

                                <div class="form-group ">
                                    <input type="text" class="form-control name" name="fullname_nn" id="fullname" value="" placeholder="Họ tên">
                                    <span id="error_name">Họ tên không hợp lệ !</span>
                                </div>
                                <div class="form-group ">
                                    <input type="text" class="form-control name" name="phone_nn" id="phone" value="" placeholder="Số điện thoại">
                                    <span id="error_phone">Số điện thoại không hợp lệ !</span>
                                </div>
                                <div class="form-group ">
                                    <input type="text" class="form-control name" name="email_nn" id="email" value="" placeholder="Email">
                                    <span id="error_email">Email không hợp lệ !</span>
                                </div>        
                            </div><!--end box-left thông tin người nhận-->
                            <div class="box-left box-giaohang">
                                <div class="title_thanhtoan">Thông tin giao hàng</div>
                                <div class="form-group ">
                                    <input type="text" class="form-control name" name="address_nn" value="" id="address" placeholder="Địa chỉ liên hệ">
                                    <span id="error_address">Địa chỉ không hợp lệ !</span>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6 col-xs-6 district">
                                        <select onchange="fillData(this.value)" id="tinhthanh" class="form-control city" name="city">

                                            <option value="\'\',\'\'" label="Chọn tỉnh"></option>
                                            <%                                                Vector<Tinh> tinhs = Data.getTinhs();
                                                for (Tinh t : tinhs) {
                                            %>
                                            <option value="<%=t.getMaTinh()%>,<%=t.getTentinh()%>" label="<%=t.getTentinh()%>"></option>
                                            <%
                                                }
                                            %>
                                        </select>      
                                        <!--</select>-->
                                    </div>
                                    <div class="col-sm-6 col-xs-6 district">
                                        <select class="form-control city" id="huyen" name="district" onchange="fillData1(this.value)"></select>
                                    </div>               
                                </div>
                                <div class="form-group">
                                    <textarea id="note" class="form-control note" rows="5" name="content" placeholder="Ghi chú"></textarea>
                                    <span id="error_note">Cho chúng tôi biết bạn có thể nhận hàng vào lúc nào !</span>
                                </div>
                            </div><!--end box-left thông tin giao hàng--> 
                        </div><!--end col-md-6-->
                        <div class="col-md-6 col-xs-12">

                            <div class="right-cart">
                                <div class="title_thanhtoan">
                                    <div class="">Phương thức thanh toán</div>
                                    <br>
                                    <div class="form-group ">
                                        <p><input type="radio" class="pttt" name="pttt" value="1" checked=""> Thanh toán khi nhận hàng</p>
                                        <p><input type="radio" class="pttt" name="pttt" value="2" disabled> Thanh toán trực tuyến</p>
                                    </div>
                                </div>
                            </div><!--end box-left thanh toán-->  

                            <div class="right-bottom">
                                <div class="apdung" id="form_kh">

                                    <input type="text" name="email_kh" id="email_kh" placeholder="Mã giảm giá (nếu có)" class="form-control">
                                    <input type="hidden" value="5" name="code" id="code">
                                    <input type="submit" name="submit_kh" id="submit_kh" value="Áp dụng">  
                                </div><!--end apdung-->
                                <div class="tamtinh">
                                    <p>Tạm tính</p>
                                    <abc class="gia" id="tamtinh"><%= (long) DataHoadon.getTonggiatriGioHang(pros, com1 == null ? 0 : com1.getDiemso(), 0)%></abc> VNĐ
                                    <p>Phí vận chuyển</p>
                                    <input type="hidden" value="1000000" name="phi" id="phi2">
                                    <abc class="gia" id="phi">1000000</abc> VNĐ
                                </div><!--end tamtinh-->
                                <div class="tamtinh total">
                                    <p>Tổng cộng</p><abc class="gia" id="tongcong"><%= (long) DataHoadon.getTonggiatriGioHang(pros, com1 == null ? 0 : com1.getDiemso(), 0) + 1000000%></abc> VNĐ
                                </div><!--end tamtinh-->
                                <div class="mua_hang">
                                    <div class="finish">
                                        <!--<input type="button" onclick="return submit()" class="btn btn-danger" value="Thanh toán">-->
                                        <a onclick="return submit()" class="btn btn-danger">Thanh toán</a>
                                        <a class="btn btn-danger" href="<%= request.getSession().getAttribute("prePage1")%>">Tiếp tục mua hàng</a>
                                    </div></div>
                            </div><!--end right-bottom-->
                        </div>
                        <!--</div>-->
                    </form><!--end col-md-6--> 
                    <div class="col-md-12 col-xs-12 footer">
                        <p><b class="ten">Phái Mạnh Shop</b> Rất hân hạnh được phục vụ quý khách!</p>
                    </div>
                </div><!--end row-->
            </div><!--end container-->
        </section>
        <script src="public/default/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="public/default/js/jquery.smartmenus.js"></script>
        <script type="text/javascript" src="public/default/js/addons/bootstrap/jquery.smartmenus.bootstrap.js"></script>
        <script src="public/default/slide-product/owl.carousel.min.js"></script>
        <script src="public/default/js/main.js"></script>
        <div>	
        </div>
    </body>
    <script type="text/javascript">
                                            function submit() {
                                                //alert("hello");
                                                sai = 0;
                                                //kiểm tra name
                                                var name = document.getElementById('fullname').value;
                                                var regex_name = /^[^\d]{5,50}$/i;
                                                var test_name = regex_name.test(name);
                                                if (test_name == false) {
                                                    document.getElementById('error_name').style.display = 'block';
                                                    document.getElementById('fullname').focus();
                                                    document.getElementById('fullname').style.outline = '2px solid red';
                                                    sai = 1;
                                                } else {
                                                    document.getElementById('error_name').style.display = 'none';
                                                    document.getElementById('fullname').style.outline = '1px solid green'
                                                }
                                                //kiểm tra số điện thoại
                                                var address = document.getElementById('phone').value;
                                                var regex_address = /^[0-9]{9,13}$/;
                                                var test_address = regex_address.test(address);
                                                if (test_address == false) {
                                                    document.getElementById('error_phone').style.display = 'block';
                                                    document.getElementById('phone').focus();
                                                    document.getElementById('phone').style.outline = '2px solid red';
                                                    sai = 1;
                                                } else {
                                                    document.getElementById('error_phone').style.display = 'none';
                                                    document.getElementById('phone').style.outline = '1px solid green'
                                                }
                                                //kiểm tra địa chỉ email
                                                var address = document.getElementById('email').value;
                                                var regex_address = /^[a-z][a-z0-9_\.]{5,32}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$/i;
                                                var test_address = regex_address.test(address);
                                                if (test_address == false) {
                                                    document.getElementById('error_email').style.display = 'block';
                                                    document.getElementById('email').focus();
                                                    document.getElementById('email').style.outline = '2px solid red';
                                                    sai = 1;
                                                } else {
                                                    document.getElementById('error_email').style.display = 'none';
                                                    document.getElementById('email').style.outline = '1px solid green'
                                                }
                                                //kiểm tra địa chỉ
                                                var address = document.getElementById('address').value;
                                                var regex_address = /^.{5,}$/i;
                                                var test_address = regex_address.test(address);
                                                if (test_address == false) {
                                                    document.getElementById('error_address').style.display = 'block';
                                                    document.getElementById('address').focus();
                                                    document.getElementById('address').style.outline = '2px solid red';
                                                    sai = 1;
                                                } else {
                                                    document.getElementById('error_address').style.display = 'none';
                                                    document.getElementById('address').style.outline = '1px solid green'
                                                }
                                                //kiểm tra ghi chú
                                                var address = document.getElementById('note').value;
                                                var regex_address = /^.{5,}$/i;
                                                var test_address = regex_address.test(address);
                                                if (test_address == false) {
                                                    document.getElementById('error_note').style.display = 'block';
                                                    document.getElementById('note').focus();
                                                    document.getElementById('note').style.outline = '2px solid red';
                                                    sai = 1;
                                                } else {
                                                    document.getElementById('error_note').style.display = 'none';
                                                    document.getElementById('note').style.outline = '1px solid green'
                                                }
                                                if (sai == 1) {
                                                    return false;
                                                } else {
                                                    var name = encodeURI(document.getElementById("fullname").value);
                                                    var diachigh = encodeURI(document.getElementById("address").value);
                                                    var ghichi = encodeURI(document.getElementById("note").value);
                                                    var dienthoai = document.getElementById("phone").value;
                                                    var email = document.getElementById("email").value;
                                                    var pttts = document.getElementsByClassName("pttt");
                                                    var pttt = 1;
                                                    if (pttts[0].checked == true) {
                                                        pttt = 1;
                                                    } else {
                                                        pttt = 2;
                                                    }
                                                    var code = document.getElementById("code").value;
                                                    var phi = document.getElementById("phi2").value;
                                                    //alert("hello");
                                                    window.location.href = "ThanhToan?fullname_nn=" + name + "&address_nn=" + diachigh +"&phone_nn=" + dienthoai + "&email_nn=" + email + "&content=" + ghichi + "&pttt=" + pttt + "&code=" + code + "&phi=" + phi;

                                                    //window.location = "thanh_toan.jsp";
                                                    //document.getElementById("formTruong").submit();
                                                    return true;
                                                }
                                            }
                                            function fillData(str) {
                                                var ma = str.split(',')[0];
                                                var ten = str.split(',')[1];
                                                var xhttp = new XMLHttpRequest();
                                                xhttp.onreadystatechange = function () {
                                                    if (this.readyState == 4 && this.status == 200) {
                                                        document.getElementById("huyen").innerHTML = this.responseText;
                                                    }
                                                };
                                                xhttp.open("GET", "abc.jsp?matinh=" + ma, true);
                                                xhttp.send();
                                            }
                                            function fillData1(str) {
                                                var ma = str.split(',')[0];
                                                var ten = str.split(',')[1];
                                                var phi = str.split(',')[2];
                                                document.getElementById("phi").innerHTML = parseInt(phi);
                                                document.getElementById("phi2").value = phi;
                                                var x = parseInt(document.getElementById("phi").innerHTML);
                                                var y = parseInt(document.getElementById("tamtinh").innerHTML);
                                                //alert(x+y);
                                                document.getElementById("tongcong").innerHTML = x + y;
                                            }

    </script>
</html>