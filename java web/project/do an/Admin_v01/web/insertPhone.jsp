
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
                <h2 style="text-align: center; width: 100%">Thêm sản phẩm</h2>                
            </div>
            <div class="container">
                <div id="contentSP">
                    <form action="/InsertPhone" method="post">
                        <table style="width:100%;"  id="dataTable1"  cellspacing="0">
                            <tr>
                                <th>Tên sản phẩm</th>
                                <td><input value="" class="form-control" type="text" name="ten"></td>
                            </tr>
                            <tr>
                                <th>Danh mục</th>
                                <td>
                                   <select class="require require200" style="margin-top: 10px;" onchange="filter()" name='id_dm'>
                                        <%
                                            ArrayList<DanhMuc> ldm = (ArrayList<DanhMuc>) new DienThoaiDAO().GetNameDM();
                                            for (int i=0; i<ldm.size();i++) {
                                                DanhMuc _dm = ldm.get(i);
                                        %>
                                        <option value="<%=_dm.getId()%>" style="height: 30px;"><%=_dm.getTen()%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>Số lượng</th>
                                <td><input value="" class="form-control" type="number" name="soluong"></td>
                            </tr>
                            <tr>
                                <th>Giá</th>
                                <td><input value="" class="form-control" type="number" name="gia"></td>
                            </tr>
                            <tr>
                                <th>Trọng lượng</th>
                                <td><input value="" class="form-control" type="text" name="trongluong"></td>
                            </tr>
                            <tr>
                                <th>ROM</th>
                                <td><input value="" class="form-control" type="text" name="rom"></td>
                            </tr>
                            <tr>
                                <th>RAM</th>
                                <td><input value="" class="form-control" type="text" name="ram"></td>
                            </tr>
                            <tr>
                                <th>Thẻ nhớ</th>
                                <td><input value="" class="form-control" type="text" nmae="thenho"></td>
                            </tr>
                            <tr>
                                <th>Camera trước</th>
                                <td><input value="" class="form-control" type="text" name="ctruoc"></td>
                            </tr>
                            <tr>
                                <th>Camera sau</th>
                                <td><input value="" class="form-control" type="text" name="csau"></td>
                            </tr>                        
                            <tr>
                                <th>PIN</th>
                                <td><input value="" class="form-control" type="text" name="pin"></td>
                            </tr>
                            <tr>
                                <th>Bảo hành</th>
                                <td><input value="" class="form-control" type="text" name="baohanh"></td>
                            </tr>
                            <tr>
                                <th>Bluetooth</th>
                                <td><input value="" class="form-control" type="text" name="bluetooth"></td>
                            </tr>
                            <tr>
                                <th>Hãng</th>
                                <td>
                                    <select class="require require200" style="margin-top: 10px;" onchange="filter()" name='id_nsx'>
                                        <%
                                            ArrayList<NhaSanXuat> nsx = (ArrayList<NhaSanXuat>) new DienThoaiDAO().GetNameNSX();
                                            for (NhaSanXuat t : nsx) {
                                        %>
                                        <option value="<%=t.getId()%>" style="height: 30px;"><%=t.getTen()%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>CPU</th>
                                <td><input value="" class="form-control" type="text" name="cpu"></td>
                            </tr>
                            <tr>
                                <th>Màn hình</th>
                                <td><input value="" class="form-control" type="text" name="manhinh"></td>
                            </tr>
                            <tr>
                                <th>Hình ảnh 1</th>
                                <td>
                                    <input value="" class="form-control" type="text" name="hinh">
                                    <img src="">
                                </td>
                            </tr>
                            <tr>
                                <th>Hình ảnh 2</th>
                                <td>
                                    <input value="" class="form-control" type="text" name="hinh">
                                    <img src="">
                                </td>
                            </tr>
                            <tr>
                                <th>Hình ảnh 3</th>
                                <td>
                                    <input value="" class="form-control" type="text"name="hinh">
                                    <img src=">">
                                </td>
                            </tr>
                            <tr>
                                <th>Hình ảnh 4</th>
                                <td>
                                    <input value="" class="form-control" type="text" name="hinh">
                                    <img src="">
                                </td>
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
                                    <input type="button" class="btn btn-secondary" name="huy" onclick="return closed1()" style="width: 80px" value="Hủy"/>
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
