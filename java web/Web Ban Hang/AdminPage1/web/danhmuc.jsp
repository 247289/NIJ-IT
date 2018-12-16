<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dto.DanhMuc" %>
<%@page import="dao.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="include/header.jsp"/>
        <title>Trang quản lý</title>
    </head>

    <body id="page-top">

        <% 
            DanhMucDAO dmDAO = new DanhMucDAO();            
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
                        <li class="breadcrumb-item active">Danh mục sản phẩm</li>
                    </ol>

                    <!-- Bảng dữ liệu -->
                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            Danh mục sản phẩm</div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên danh mục</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <%
                                            for (int i = 0; i < dmDAO.listDanhMuc().size(); i++){
                                                DanhMuc dm = dmDAO.listDanhMuc().get(i);
                                        %>
                                        <tr>
                                            <td><%=i+1 %></td>
                                            <td><%=dm.getTen() %></td>

                                        </tr>
                                        <% } %>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                        <%
                            DateTime d = new DateTime();
                        %>
                        <div class="card-footer small text-muted">Cập nhật vào <%=d.getDateTime() %></div>
                    </div>

                </div>
                <jsp:include page="include/body3.jsp"/>
            </div>
        </div>
        <jsp:include page="include/footer.jsp"/>
    </body>
</html>
