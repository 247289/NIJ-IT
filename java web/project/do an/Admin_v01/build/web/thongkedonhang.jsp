<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="include/header.jsp"/>
        <title>Trang quản lý</title>
    </head>

    <body id="page-top">
        <jsp:include page="include/navbar-top.jsp"/>

        <div id="wrapper">
            <jsp:include page="include/navbar-left.jsp"/>
            <div id="content-wrapper">

                <div class="container-fluid">
                    
                    <!-- Đường dẫn-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.jsp">Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item active">Quản lý đơn hàng</li>
                    </ol>

                    <!-- Bảng dữ liệu -->
                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-clipboard-list"></i>
                            Quản lý đơn hàng</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên khách hàng</th>
                                            <th>Tên nhân viên</th>
                                            <th>Ngày lập</th>
                                            <th>Tổng giá</th>
                                            <th>Tình trạng</th>
                                            <th>Ghi chú</th>                                           
                                            <th>Chi tiết</th>                                          
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                        <%
                                            for (int i = 0; i < DonHangDAO.listDonHang().size(); i++){
                                                DonHang dh = DonHangDAO.listDonHang().get(i);
                                        %>
                                        <tr>
                                            <td><%=i+1 %></td>
                                            <td><%=dh.getKhachhang().getTen() %></td>
                                            <td><%=dh.getNhanvien().getTen() %></td>
                                            <td><%=dh.getNgaylap() %></td>
                                            <td><%=dh.getTonggia() %></td>
                                            <td><%=dh.getTinhtrang() %></td>
                                            <td><%=dh.getGhichu() %></td>                                              
                                            <td align="center" valign="center"><div class="fas fa-fw fa-edit" style="font-size: 30px;" onclick="ViewDonHang(<%=dh.getId() %>)"/></td>                                              
                                        </tr>
                                        <% } %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <jsp:include page="include/footer.jsp"/>
        <div id="popup" style="display: none">

        </div>
        
        <script src="resources/js/status.js" type="text/javascript"></script>
    </body>
</html>
