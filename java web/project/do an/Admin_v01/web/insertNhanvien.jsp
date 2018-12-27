
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="cover_page"></div>
        <div class="form" >
            <div class="fas fa-fw fa-times" id="exit" style="float: right; font-size: 40px" onclick="return closed1()">             
            </div>
            <div class="title">
                <h2 style="text-align: center; width: 100%">Thêm nhân viên</h2>                
            </div>
            <div class="container">
                <div id="contentSP">
                    <form action="/InsertNhanVien" method="post">
                        <table style="width:100%;"  id="dataTable1"  cellspacing="0">
                            <tr>
                                <th>Tên nhân viên</th>
                                <td><input value="" class="form-control" type="text" name="ten"></td>
                            </tr>
                            
                            <tr>
                                <th>Số điện thoại</th>
                                <td><input value="" class="form-control" type="text" name="sdt"></td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td><input value="" class="form-control" type="text" name="email"></td>
                            </tr>
                            <tr>
                                <th>Ngày sinh</th>
                                <td><input value="" class="form-control" type="text" name="ngaysinh"></td>
                            </tr>
                            <tr>
                                <th>Quyền</th>
                                <td><input value="2" class="form-control" type="text" name="quyen" readonly="true"></td>
                            </tr>
                            
                            <tr>
                                <th>Tên tài khoản</th>
                                <td><input value="" class="form-control" type="text" name="taikhoan"></td>
                            </tr>
                            <tr>
                                <th>Mật khẩu</th>
                                <td><input value="" class="form-control" type="text" name="matkhau"></td>
                            </tr>
                            <tr>
                                <th>Trạng thái</th>
                                <td>
                                    <input style="margin-left: -191px;height: 20px;" value="" type="checkbox" name="trangthai" disabled="true">
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="text-align: left" colspan="10">
                                    <input type="submit" class="btn btn-secondary" name="luu" value="Thêm" style="width: 80px">
                                </td>
                            </tr>

                        </table>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script src="resources/js/status.js" type="text/javascript"></script>

</html>
