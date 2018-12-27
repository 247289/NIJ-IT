<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Phái Mạnh Shop</title>
        <link rel="icon" href="img/logo_ao.png" type="image/gif">
        <link rel="stylesheet" type="text/css" href="form.css">
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <script type="text/JavaScript" src="form.js"></script>
    </head>
    <body>
        <%
            String repage = (String) request.getSession().getAttribute("page");
            request.getSession().setAttribute("prePage", repage);
        %>
        <div class="login-wrap">
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">ĐĂNG NHẬP</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">ĐĂNG KÍ</label>
                <div class="login-form">
                    <form id="form1" method="POST"  class="sign-in-htm" action="../LoginComsumer">
                        <div class="group">
                            <label  for="ten_dang_nhap" class="label">Tên đăng nhập</label>
                            <input name="ten_dang_nhap" id="ten_dang_nhap" placeholder="Nhập email hoặc số điện thoại" type="text" class="input"><span class="span" id="loi_ten_dang_nhap"></span>
                        </div>
                        <div class="group">
                            <label  class="label">Mật khẩu</label>
                            <input name="mat_khau_dang_nhap" id="mat_khau_dang_nhap" placeholder="Mật khẩu" type="password" class="input" data-type="password" ><span class="span" id="loi_mat_khau_dang_nhap"></span>
                        </div>
                        <div class="group">
                            <input id="check" type="checkbox" class="check" checked>
                            <label><span class="icon"></span>Nhớ mật khẩu</label>
                        </div>
                        <div class="group">
                            <input type="submit" class="button" value="ĐĂNG NHẬP" onclick="return check1()">
                        </div>
                        <div class="hr"></div>
                        <div class="foot-lnk">
                            <a href="#forgot">Quên mật khẩu ?</a>
                        </div>
                    </form><!-- end form -->

                    <form method="POST" action="../InnsertComsumer" class="sign-up-htm">
                        <div class="group">
                            <label class="label">Họ và tên</label>
                            <input name="hoten" id="ho_ten" placeholder="Họ và tên" type="text" class="input"><span class="span" id="loi_ho_ten"></span>
                        </div>
                        <div class="group">
                            <label class="label">Số điện thoại</label>
                            <input name="sdt" id="phone" placeholder="Số điện thoại" type="number" class="input"><span class="span" id="loi_phone"></span>
                        </div>
                        <!-- <div class="group">
                                <label  class="label">Ngày sinh</label>
                                <input id="date" placeholder="DD/MM/YYYY or DD-MM-YYYY" type="text" class="input"><span class="span" id="loi_date"></span><br>
                        </div> -->

                        <div class="group">
                            <table>
                                <tr>
                                    <td>
                                        <label name="gioi_tinh" id="them" >GIỚI TÍNH :</label>
                                        <label>
                                            <input id="nam" type="radio" name="gt" value="1"/>Nam
                                        </label>
                                        <label>
                                            <input id="nu" name="gt" type="radio" class="" value="0"/>Nữ
                                        </label>
                                        <br/>
                                        <span id="sai_gt"></span>
                                    </td>

                                    <!-- <td><br>
                                    <label id="them">NGH? NGHI?P</label>
                                    <select class="checkbox" style=" color: rgba(248 ,248 ,255, .9); background:rgba(248 ,248 ,255, .1);border:1px solid rgba(255,255,255, .7);-moz-border-radius: 20px;-webkit-border-radius: 20px;-ms-border-radius: 20px;-o-border-radius: 20px; border-radius: 20px;">
                                            <option class="checkbox">Sinh viên</option>
                                            <option class="checkbox">H?c sinh</option>
                                            <option class="checkbox">?ã ?i làm</option>
                                    </select>
                                    </td> -->
                                </tr></table>
                        </div>
                        <div class="group">
                            <label  class="label">Mật khẩu</label>
                            <input id="mat_khau_1" placeholder="Mật khẩu từ 6-8 kí tự không chữa các kí tự đặc biệt" type="password" class="input" data-type="password"><span id="loi_mat_khau_1"></span>
                        </div>
                        <div class="group">
                            <!-- <label  class="label">Nh?p l?i m?t kh?u</label> -->
                            <input name="mk" id="mat_khau_2" placeholder="Nhập lại mật khẩu" type="password" class="input" data-type="password"><span id="loi_mat_khau_2"></span><span style="color: #33CC00;font-size: 15px;font-style: italic;" id="dung"></span><span style="color: #FFFF00; font-size: 15px;font-style: italic;" id="sai"></span>
                        </div>
                        <div class="group">
                            <label class="label">Email</label>
                            <input name="email" id="email" placeholder="vidu@gmail.com" type="text" class="input"><span id="loi_email"></span>
                        </div>
                        <!-- <div class="group">
                                <label class="label">S? thích</label>
                                <label> <input id="st1" type="checkbox" class="checkbox">Java</label>
                                <label> <input id="st2" type="checkbox" class="checkbox">PHP</label>
                                <label> <input id="st3" type="checkbox" class="checkbox">C#</label>
                                <label> <input id="st4" type="checkbox" class="checkbox">Python</label>
                                <label> <input id="st5" type="checkbox" class="checkbox">JavaScript</label>
                                <label> <input id="st6" type="checkbox" class="checkbox">Swift</label>
                                <label> <input id="st7" type="checkbox" class="checkbox">Ruby</label>
                        </div><span id="so_thich"></span> -->
                        <div class="group">
                            <label class="label">Địa chỉ</label>
                            <textarea name="diachi" placeholder="Nhập địa chỉ của bạn" id="address" class="input"></textarea><span id="loi_address"></span>
                        </div>
                        <div class="group">
                            <input type="submit" class="button" onclick="return kiem_tra()" value="Đăng kí">
                        </div>

                    </form> <!-- end sign-up-htm -->
                </div><!--  end login-form -->
            </div> <!-- end login-html -->
        </div> <!-- end login-wrap -->

    </body>
</html>