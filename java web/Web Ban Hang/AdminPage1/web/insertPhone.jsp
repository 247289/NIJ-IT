<%-- 
    Document   : formProduct
    Created on : Dec 15, 2018, 5:03:57 PM
    Author     : JERRIER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<%@page import="java.util.*" %>
<%--<%@include file="controller.InsertPhone" %>--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       
        <div class="cover_page"></div>
        <div class="form">
            <div class="title">
                <h2 style="text-align: center; width: 100%">Thông tin sản phẩm</h2>
                <!--                <div class="close" id="exit_update_form" onclick="closed()"></div>-->
            </div>
            <div class="container">
                <div id="contentSP">
                    <form action="/insertPhone" method="post">
                        <table style="width:100%;" class="table table-bordered" id="dataTable1"  cellspacing="0">
                            <tr>
                                <td>Tên sản phẩm</td>
                                <td><input vvalue="" type="text" name="ten"></td>
                            </tr>
                            <tr>
                                <td>Danh mục</td>
                                <td>
                                    <select class="require require200" onchange="filter()" id='id_dm'>
                                        <option value="0">Tất cả</option>
                                        <%
                                            ArrayList<DanhMuc> dm = (ArrayList<DanhMuc>) new DienThoaiDAO().GetNameDM();
                                            for (DanhMuc t : dm) {
                                        %>
                                        <option value="<%=t.getId()%>" style="height: 30px;"><%=t.getTen()%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Số lượng</td>
                                <td><input value="" type="number" name="soluong"></td>
                            </tr>
                            <tr>
                                <td>Gía phần mềm</td>
                                <td><input value="" type="number" name="gia"></td>
                            </tr>
                            <tr>
                                <td>Trọng lượng</td>
                                <td><input value="" type="text" name="trongluong"></td>
                            </tr>
                            <tr>
                                <td>ROM</td>
                                <td><input value="" type="text" name="rom"></td>
                            </tr>
                            <tr>
                                <td>RAM</td>
                                <td><input value="" type="text" name="ram"></td>
                            </tr>
                            <tr>
                                <td>Thẻ nhớ</td>
                                <td><input value="" type="text" nmae="thenho"></td>
                            </tr>
                            <tr>
                                <td>Camera trước</td>
                                <td><input value="" type="text" name="ctruoc"></td>
                            </tr>
                            <tr>
                                <td>Camera sau</td>
                                <td><input value="" type="text" name="csau"></td>
                            </tr>                        
                            <tr>
                                <td>PIN</td>
                                <td><input value="" type="text" name="pin"></td>
                            </tr>
                            <tr>
                                <td>Bảo hành</td>
                                <td><input value="" type="text" name="baohanh"></td>
                            </tr>
                            <tr>
                                <td>Bluetooth</td>
                                <td><input value="" type="text" name="bluetooth"></td>
                            </tr>
                            <tr>
                                <td>Hãng</td>
                                <td>
                                    <select class="require require200" onchange="filter()" id='id_nsx'>
                                        <option value="0">Tất cả</option>
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
                                <td>CPU</td>
                                <td><input value="" type="text" name="cpu"></td>
                            </tr>
                            <tr>
                                <td>Màn hình</td>
                                <td><input value="" type="text" name="manhinh"></td>
                            </tr>
                            <tr>
                                <td>Hình ảnh 1</td>
                                <td>
                                    <input value="" type="text" name="hinh">
                                    <img src="">
                                </td>
                            </tr>
                            <tr>
                                <td>Hình ảnh 2</td>
                                <td>
                                    <input value="" type="text" name="hinh">
                                    <img src="">
                                </td>
                            </tr>
                            <tr>
                                <td>Hình ảnh 3</td>
                                <td>
                                    <input value="" type="text"name="hinh">
                                    <img src=">">
                                </td>
                            </tr>
                            <tr>
                                <td>Hình ảnh 4</td>
                                <td>
                                    <input value="" type="text" name="hinh">
                                    <img src="">
                                </td>
                            </tr>
                            <tr>
                                <td>Trạng thái</td>
                                <td>
                                    <input style="margin-left: -191px;height: 20px;" value="" type="checkbox" disabled="true">
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="text-align: left" colspan="10">
                                    <input type="submit" value="lưu" style="width: 80px">
                                    <input type="button" onclick="return closed1()" style="width: 80px" value="hủy"/>
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
