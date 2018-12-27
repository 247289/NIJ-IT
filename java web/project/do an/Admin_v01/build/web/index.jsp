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
            <div id="content-wrapper" >

                <div class="container-fluid">

                    <!-- Đường dẫn-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">Trang chủ</li>                        
                    </ol>

                    <div class="row ">
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-primary o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-mobile-alt"></i>
                                    </div>
                                    <div class="mr-5"> Điện thoại</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="dienthoai.jsp">
                                    <span class="float-left">Chi tiết</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-warning o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-tablet-alt"></i>
                                    </div>
                                    <div class="mr-5"> Tablet</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="tablet.jsp">
                                    <span class="float-left">Chi tiết</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-info o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-tablet-alt"></i>
                                    </div>
                                    <div class="mr-5"> Phụ kiện</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="phukien.jsp">
                                    <span class="float-left">Chi tiết</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-success o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-shopping-cart"></i>
                                    </div>
                                    <div class="mr-5"> Đơn hàng</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="thongkedonhang.jsp">
                                    <span class="float-left">Chi tiết</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3 ">
                            <div class="card text-white bg-danger o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-user-alt"></i>
                                    </div>
                                    <div class="mr-5"> Khách hàng</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="khachhang.jsp">
                                    <span class="float-left">Chi tiết</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-secondary o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-user-tie"></i>
                                    </div>
                                    <div class="mr-5"> Nhân viên</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="nhanvien.jsp">
                                    <span class="float-left">Chi tiết</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="card mb-3 " >
                        <div class="card-header">
                            <i class="fas fa-chart-area"></i>
                            Biểu đồ danh thu theo năm
                        </div>
                        <div class="card-body">
                            <canvas id="myAreaChart" width="1467" height="440" class="chartjs-render-monitor" ></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="include/footer.jsp"/>


    </body>
    <script src="resources/js/status.js" type="text/javascript"></script>
    <!--    <script>
            $(function () {
                $('#insertForm').keyup(function (e) {
                    alert("ok");
                    if (e.keyCode === '27') {
                        alert("Đã bắt ESC");
                    }
                });
            });
        </script>-->
</html>
