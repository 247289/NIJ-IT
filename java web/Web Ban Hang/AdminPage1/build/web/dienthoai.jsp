<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.DienThoai" %>
<%@page import="dto.AlbumAnh" %>
<%@page import="dao.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="include/header.jsp"/>
        <title>Trang quản lý</title>
    </head>

    <body id="page-top">
        <% 
            DienThoaiDAO dtDAO = new DienThoaiDAO();            
            AlbumAnhDAO aaDAO = new AlbumAnhDAO();            
        %>

        <jsp:include page="include/body1.jsp"/>

        <div id="wrapper">
            <jsp:include page="include/body2.jsp"/>
            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Đường dẫn-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.jsp">Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item">Sản phẩm</li>
                        <li class="breadcrumb-item active">Điện thoại</li>
                    </ol>

                    <!-- Bảng dữ liệu -->
                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            Danh sách điện thoại</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <input onclick="InsertPhone()" type="button" style="border:1px solid black; padding: 5px; width: fit-content;margin-bottom: 5px;" value="Create"/>

                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Ảnh</th>
                                            <th>Số lượng</th>
                                            <th>Giá</th>
                                            <th>Trọng lượng</th>
                                            <th>Pin</th>
                                            <th>Bảo hành</th>
                                            <th>Hãng</th>
                                            <th>Trạng thái</th>
                                            <th>Sửa</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Ảnh</th>
                                            <th>Số lượng</th>
                                            <th>Giá</th>
                                            <th>Trọng lượng</th>
                                            <th>Pin</th>
                                            <th>Bảo hành</th>
                                            <th>Hãng</th>
                                            <th>Trạng thái</th>
                                            <th>Sửa</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <%
                                            for (int i = 0; i < dtDAO.listDienThoai().size(); i++){
                                                DienThoai dt = dtDAO.listDienThoai().get(i);                                                    
                                                AlbumAnh aa = aaDAO.listAnh().get(i);                                            
                                        %>
                                        <tr>
                                            <td><%=i+1 %></td>
                                            <td><%=dt.getTen() %></td>                                            
                                            <td><img src="<%=aa.getAnh1() %>" width="100px" height="100px"/></td>
                                            <td><%=dt.getSoluong() %></td>
                                            <td><%=(int)dt.getGia() %></td>
                                            <td><%=dt.getTrongluong() %></td>
                                            <td><%=dt.getPin() %></td>
                                            <td><%=dt.getBaohanh() %></td>
                                            <td><%=dt.getId_nhasanxuat() %></td>
                                            <td><input type="checkbox" value="<%=dt.getStatus()%>" <%= (dt.getStatus()== 0)?"":"checked" %> onchange="changeStatus(this.value, this,<%=dt.getId()%>)" name="sta"></td>
                                            <td align="center" valign="center"><div class="update" onclick="CheckUpdate(<%=dt.getId() %>)"/></td>
                                        </tr>
                                        <% } %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer small text-muted">Cập nhật vào 11:59 PM</div>
                    </div>

                </div>
                <jsp:include page="include/body3.jsp"/>
            </div>
        </div>
        <jsp:include page="include/footer.jsp"/>
        <div id="popup" style="display: none">

        </div>
        <div id="insertFrom" style="display: none">
            <%@include file="insertPhone.jsp" %>%>
        </div>
    </body>
    <script src="resources/js/status.js" type="text/javascript"></script>
    <script>
        $(function(){
          $('insertForm').keyup(function(e){
              if(e.keyCode === '27'){
                alert("Đã bắt ESC");
              }       
          });
        });
    </script>
</html>
