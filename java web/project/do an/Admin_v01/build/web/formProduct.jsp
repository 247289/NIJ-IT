

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="dto.*" %>
<%@page  import="dao.*" %>
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
            <div class="fas fa-fw fa-times" id="exit" style="float: right; font-size: 40px" onclick="return closed()"></div>
            <div class="title">
                <h2 style="text-align: center; width: 100%">Thông tin sản phẩm</h2>
                <!--                <div class="close" id="exit_update_form" onclick="closed()"></div>-->
            </div>
            <div class="container">
                <div id="contentSP">
                    <form action="/UpdatePhone" method="post">
                        <input type="hidden" value="<%=dt.getId()%>" name="id">
                        <table style="width:100%;"  id="dataTable1"  cellspacing="0">
                            <tr>
                                <th>Tên sản phẩm</th>
                                <td><input value="<%=dt.getTen()%>" class="form-control" type="text" name="ten"></td>
                            </tr>
                            <tr>
                                <th>Danh mục</th>
                                <td><input value="<%=dt.getDanhmuc().getTen()%>" class="form-control" type="text" disabled="true"></td>
                            </tr>
                            <tr>
                                <th>Số lượng</th>
                                <td><input value="<%= dt.getSoluong()  %>" class="form-control" type="number" name="soluong"></td>
                            </tr>
                            <tr>
                                <th>Giá sản phẩm</th>
                                <td><input value="<%= (int)dt.getGia()%>" class="form-control" type="number" name="gia"></td>
                            </tr>
                            <tr>
                                <th>Trọng lượng</th>
                                <td><input value="<%= dt.getTrongluong()%>" class="form-control" type="text" name="trongluong"></td>
                            </tr>
                            <tr>
                                <th>ROM</th>
                                <td><input value="<%= dt.getROM()%>" type="text" class="form-control" name="rom"></td>
                            </tr>
                            <tr>
                                <th>RAM</th>
                                <td><input value="<%= dt.getRAM()%>" class="form-control" type="text" name="ram"></td>
                            </tr>
                            <tr>
                                <th>Thẻ nhớ</th>
                                <td><input value="<%= dt.getThenho()%>" class="form-control" type="text" nmae="thenho"></td>
                            </tr>
                            <tr>
                                <th>Camera trước</th>
                                <td><input value="<%= dt.getCamera_truoc()%>" class="form-control" type="text" name="ctruoc"></td>
                            </tr>
                            <tr>
                                <th>Camera sau</th>
                                <td><input value="<%= dt.getCamera_sau()%>" class="form-control" type="text" name="csau"></td>
                            </tr>                        
                            <tr>
                                <th>PIN</th>
                                <td><input value="<%= dt.getPin()%>" class="form-control" type="text" name="pin"></td>
                            </tr>
                            <tr>
                                <th>Bảo hành</th>
                                <td><input value="<%= dt.getBaohanh()%>" class="form-control" type="text" name="baohanh"></td>
                            </tr>
                            <tr>
                                <th>Bluetooth</th>
                                <td><input value="<%= dt.getBluetooth()%>" class="form-control" type="text" name="bluetooth"></td>
                            </tr>
                            <tr>
                                <th>Hãng</th>
                                <td><input value="<%=dt.getNsx().getTen() %>" class="form-control" type="text" disabled="true"></td>
                            </tr>
                            <tr>
                                <th>CPU</th>
                                <td><input value="<%= dt.getCPU()%>" class="form-control" type="text" name="cpu"></td>
                            </tr>
                            <tr>
                                <th>Màn hình</th>
                                <td><input value="<%= dt.getManhinh()%>" class="form-control" type="text" name="manhinh"></td>
                            </tr>
                            <tr>
                                <th>Hình ảnh 1</th>
                                <td>
                                    <input value="<%=dt.getAlbumAnh().getAnh1()%>" class="form-control" type="text" name="hinh">
                                    <img src="<%=dt.getAlbumAnh().getAnh1()%>">
                                </td>
                            </tr>
                            <tr>
                                <th>Hình ảnh 2</th>
                                <td>
                                    <input value="<%=dt.getAlbumAnh().getAnh2()%>" class="form-control" type="text" name="hinh">
                                    <img src="<%=dt.getAlbumAnh().getAnh2()%>">
                                </td>
                            </tr>
                            <tr>
                                <th>Hình ảnh 3</th>
                                <td>
                                    <input value="<%=dt.getAlbumAnh().getAnh3()%>" class="form-control" type="text"name="hinh">
                                    <img src="<%=dt.getAlbumAnh().getAnh3()%>">
                                </td>
                            </tr>
                            <tr>
                                <th>Hình ảnh 4</th>
                                <td>
                                    <input value="<%=dt.getAlbumAnh().getAnh4()%>" class="form-control" type="text" name="hinh">
                                    <img src="<%=dt.getAlbumAnh().getAnh4()%>">
                                </td>
                            </tr>
                            <tr>
                                <th>Trạng thái</th>
                                <td><input style="margin-left: -191px;height: 20px;" value="<%= dt.getStatus()%>" type="checkbox" <%= (dt.getStatus()== 0)?"":"checked" %> disabled="true"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td style="text-align: left" colspan="10">
                                    <input type="submit" class="btn btn-secondary" value="Lưu" style="width: 80px">
                                    <input type="button" class="btn btn-secondary" onclick="return closed()" style="width: 80px" value="Hủy"/>
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
