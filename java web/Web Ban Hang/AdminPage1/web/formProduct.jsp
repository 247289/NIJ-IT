<%-- 
    Document   : formProduct
    Created on : Dec 15, 2018, 5:03:57 PM
    Author     : JERRIER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="dto.*" %>
<%@page  import="dao.DienThoaiDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            String id=request.getParameter("id");
            //out.print(id);
            DienThoai dt=DienThoaiDAO.GetPhone(request.getParameter("id"));
            AlbumAnh ha=dt.getAlbumAnh();
            NhaSanXuat ns=dt.getNsx();
            DanhMuc d=dt.getDanhmuc();
               // DienThoai dt=new DienThoai();
                
        %>
        <div class="cover_page"></div>
        <div class="form">
            <div class="title">
                <h2 style="text-align: center; width: 100%">Thông tin sản phẩm</h2>
                <!--                <div class="close" id="exit_update_form" onclick="closed()"></div>-->
            </div>
            <div class="container">
                <div id="contentSP">
                    <form action="/updatePhone" method="post">
                        <input type="hidden" value="<%=dt.getId()%>" name="id">
                        <table style="width:100%;" class="table table-bordered" id="dataTable1"  cellspacing="0">
                            <tr>
                                <td>TÊN SẢN PHẨM</td>
                                <td><input value="<%=dt.getTen()%>" type="text" name="ten"></td>
                            </tr>
                            <tr>
                                <td>Danh mục</td>
                                <td><input value="<%=dt.getDanhmuc().getTen()%>" type="text" disabled="true"></td>
                            </tr>
                            <tr>
                                <td>SỐ LƯỢNG</td>
                                <td><input value="<%= dt.getSoluong()  %>" type="number" name="soluong"></td>
                            </tr>
                            <tr>
                                <td>GIÁ SẢN PHẨM</td>
                                <td><input value="<%= (int)dt.getGia()%>" type="number" name="gia"></td>
                            </tr>
                            <tr>
                                <td>TRỌNG LƯỢNG</td>
                                <td><input value="<%= dt.getTrongluong()%>" type="text" name="trongluong"></td>
                            </tr>
                            <tr>
                                <td>ROM</td>
                                <td><input value="<%= dt.getROM()%>" type="text" name="rom"></td>
                            </tr>
                            <tr>
                                <td>RAM</td>
                                <td><input value="<%= dt.getRAM()%>" type="text" name="ram"></td>
                            </tr>
                            <tr>
                                <td>Thẻ nhớ</td>
                                <td><input value="<%= dt.getThenho()%>" type="text" nmae="thenho"></td>
                            </tr>
                            <tr>
                                <td>Camera trước</td>
                                <td><input value="<%= dt.getCamera_truoc()%>" type="text" name="ctruoc"></td>
                            </tr>
                            <tr>
                                <td>Camera sau</td>
                                <td><input value="<%= dt.getCamera_sau()%>" type="text" name="csau"></td>
                            </tr>                        
                            <tr>
                                <td>PIN</td>
                                <td><input value="<%= dt.getPin()%>" type="text" name="pin"></td>
                            </tr>
                            <tr>
                                <td>BẢO HÀNH</td>
                                <td><input value="<%= dt.getBaohanh()%>" type="text" name="baohanh"></td>
                            </tr>
                            <tr>
                                <td>Bluetooth</td>
                                <td><input value="<%= dt.getBluetooth()%>" type="text" name="bluetooth"></td>
                            </tr>
                            <tr>
                                <td>Hãng</td>
                                <td><input value="<%=dt.getNsx().getTen() %>" type="text" disabled="true"></td>
                            </tr>
                            <tr>
                                <td>CPU</td>
                                <td><input value="<%= dt.getCPU()%>" type="text" name="cpu"></td>
                            </tr>
                            <tr>
                                <td>Màn hình</td>
                                <td><input value="<%= dt.getManhinh()%>" type="text" name="manhinh"></td>
                            </tr>
                            <tr>
                                <td>Hình ảnh 1</td>
                                <td>
                                    <input value="<%=dt.getAlbumAnh().getAnh1()%>" type="text" name="hinh">
                                    <img src="<%=dt.getAlbumAnh().getAnh1()%>">
                                </td>
                            </tr>
                            <tr>
                                <td>Hình ảnh 2</td>
                                <td>
                                    <input value="<%=dt.getAlbumAnh().getAnh2()%>" type="text" name="hinh">
                                    <img src="<%=dt.getAlbumAnh().getAnh2()%>">
                                </td>
                            </tr>
                            <tr>
                                <td>Hình ảnh 3</td>
                                <td>
                                    <input value="<%=dt.getAlbumAnh().getAnh3()%>" type="text"name="hinh">
                                    <img src="<%=dt.getAlbumAnh().getAnh3()%>">
                                </td>
                            </tr>
                            <tr>
                                <td>Hình ảnh 4</td>
                                <td>
                                    <input value="<%=dt.getAlbumAnh().getAnh4()%>" type="text" name="hinh">
                                    <img src="<%=dt.getAlbumAnh().getAnh4()%>">
                                </td>
                            </tr>
                            <tr>
                                <td>Trạng thái</td>
                                <td><input style="margin-left: -191px;height: 20px;" value="<%= dt.getStatus()%>" type="checkbox" <%= (dt.getStatus()== 0)?"":"checked" %> disabled="true"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="text-align: left" colspan="10">
                                    <input type="submit" value="lưu" style="width: 80px">
                                    <input type="button" onclick="return closed()" style="width: 80px" value="hủy"/>
                                </td>
                                <!--                                <td><div class="close" id="exit_update_form" onclick="closed()">Hủy</div></td>
                                                                <td><div class="close" id="exit_update_form" onclick="closed()">Lưu</div></td>-->
                            </tr>

                        </table>
                    </form>
                </div>
            </div>
        </div>
    </body>
    <script src="resources/js/status.js" type="text/javascript"></script>
</html>
