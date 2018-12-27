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
            NhanVienDAO nvDAO = new NhanVienDAO();
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
                        <li class="breadcrumb-item active">Nhân viên</li>
                    </ol>

                    <!-- Bảng dữ liệu -->
                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-user-tie"></i>
                            Danh sách nhân viên
                            <input onclick="InsertPhone()" type="button" class="btn btn-secondary" style="padding: 5px; width: fit-content; float: right;" value="Thêm mới">
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">

                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên nhân viên</th>
                                            <th>Số điện thoại</th>
                                            <th>Email</th>
                                            <th>Ngày sinh</th>                                            
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <%
                                            for (int i = 0; i < nvDAO.listNhanVien().size(); i++){
                                                NhanVien nv = nvDAO.listNhanVien().get(i);                                            
                                        %>
                                        <tr>
                                            <td><%=i+1 %></td>
                                            <td><%=nv.getTen() %></td>
                                            <td><%=nv.getSdt() %></td>
                                            <td><%=nv.getEmail() %></td>
                                            <td><%=nv.getNgaysinh() %></td>
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
        <div id="insertFrom" style="display: none">
            <%@include file="insertNhanvien.jsp" %>%>
        </div>
    </body>
</html>
