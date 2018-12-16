<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="include/header.jsp"/>
        <title>Trang quản lý</title>
    </head>

    <body id="page-top">
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
                        <li class="breadcrumb-item active">Admin</li>
                    </ol>

                    <!-- Bảng dữ liệu -->
                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            Danh sách điện thoại</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Hãng</th>
                                            <th>Giá</th>
                                            <th>Số lượng</th>
                                            <th>ROM</th>
                                            <th>RAM</th>
                                            <th>Thẻ nhớ</th>
                                            <th>Cam trước</th>
                                            <th>Cam sau</th>
                                            <th>Pin</th>
                                            <th>Bảo hành</th>
                                            <th>CPU</th>
                                            <th>Màn hình</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên sản phẩm</th>
                                            <th>Hãng</th>
                                            <th>Giá</th>
                                            <th>Số lượng</th>
                                            <th>ROM</th>
                                            <th>RAM</th>
                                            <th>Thẻ nhớ</th>
                                            <th>Cam trước</th>
                                            <th>Cam sau</th>
                                            <th>Pin</th>
                                            <th>Bảo hành</th>
                                            <th>CPU</th>
                                            <th>Màn hình</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>iphone</td>
                                            <td>apple</td>
                                            <td>1000$</td>
                                            <td>10</td>
                                            <td>32</td>
                                            <td>2</td>
                                            <td>0</td>
                                            <td>20</td>
                                            <td>30</td>
                                            <td>2000</td>
                                            <td>12 tháng</td>
                                            <td>Apple12</td>
                                            <td>5 inch</td>  
                                        </tr>
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
    </body>
</html>
