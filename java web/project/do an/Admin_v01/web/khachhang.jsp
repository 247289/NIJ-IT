<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.*" %>
<%@page import="dto.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="include/header.jsp"/>
        <title>Trang quản lý</title>
    </head>

    <body id="page-top">
        <%
            KhachHangDAO khDAO = new KhachHangDAO();
        %>
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
                        <li class="breadcrumb-item">Quản lý tài khoản</li>
                        <li class="breadcrumb-item active">Khách hàng</li>
                    </ol>

                    <!-- Bảng dữ liệu -->
                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-user"></i>
                            Danh sách khách hàng</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên nhân viên</th>
                                            <th>Số điện thoại</th>
                                            <th>Email</th>
                                            <th>Địa chỉ 1</th>                                            
                                            <th>Địa chỉ 2</th>                                            
                                            <th>Địa chỉ 3</th>                                            
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <%
                                            for (int i = 0; i < khDAO.listKhachHang().size(); i++){
                                                KhachHang kh = khDAO.listKhachHang().get(i);
                                        %>
                                        <tr>
                                            <td><%=i+1 %></td>
                                            <td><%=kh.getTen() %></td>
                                            <td><%=kh.getSdt() %></td>
                                            <td><%=kh.getEmail() %></td>                                             
                                            <td><%=kh.getNguoinhan().getDiachi1() %></td>                                              
                                            <td><%=kh.getNguoinhan().getDiachi2() %></td>                                              
                                            <td><%=kh.getNguoinhan().getDiachi3() %></td>                                              
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
    </body>
</html>
