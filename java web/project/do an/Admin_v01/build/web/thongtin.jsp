<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="dto.*" %>
<%@page  import="dao.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="include/header.jsp"/>
        <title>Trang quản lý</title>
    </head>

    <body id="page-top">

        <jsp:include page="include/navbar-top.jsp"/>

        <%
            TaiKhoan tk = (TaiKhoan)session.getAttribute("tendangnhap");
            NhanVien nv = NhanVienDAO.getNV(tk.getId_nv());
            //TaiKhoan tk2 = TaiKhoanDAO.getTaiKhoanById(tk.getId_nv()+"");
        %>

        <div id="wrapper">
            <jsp:include page="include/navbar-left.jsp"/>
            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Đường dẫn-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="index.jsp">Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item active">Thông tin tài khoản</li>
                    </ol>

                    <div class="container-fluid">
                        <div class="row">

                            <!-- cập nhật thông tin tài khoản  -->
                            <div class="card mb-3 col-xs-5 col-sm-5 col-xs-push-1" style="padding: 0">
                                <div class="container-fluid" style="padding: 0">
                                    <div class="col-xs-12">
                                        <div class="card-header ">
                                            <i class="fas fa-info-circle "></i>
                                            Thông tin tài khoản
                                        </div>
                                        <div>
                                            <form action="UpdateAccount" method="post" style="margin-left: 10px; margin-top: 10px;padding-left: 15px;padding-right: 15px"  >
                                                <div class="form-group row">
                                                    <label for="inputPassword" class="col-sm-3 col-form-label">Mã</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control"  value="<%=nv.getId()%>" readonly="true" name="id">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputPassword" class="col-sm-3 col-form-label">Họ tên</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control"  value="<%= nv.getTen() %>" name="ten">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputPassword" class="col-sm-3 col-form-label">Điện thoại</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control"  value="<%=nv.getSdt()%>" name="dt">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputPassword" class="col-sm-3 col-form-label">Email</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control"  value="<%=nv.getEmail()%>" name="email">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputPassword" class="col-sm-3 col-form-label">Ngày sinh</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control"  value="<%=nv.getNgaysinh()%>" name="ns" disabled="true">
                                                    </div>
                                                </div>

                                                <div style="text-align: center; padding-bottom: 15px "><input type="submit" onclick="" class="btn btn-secondary" value="Cập nhật"/></div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--confirm pass-->
                            <div class="card mb-3 col-xs-5 col-sm-5 col-xs-push-1" style="padding: 0;margin-left: 20px">
                                <div class="container-fluid" style="padding: 0">
                                    <div class="col-xs-12">
                                        <form action="" >
                                            <div class="card-header " style="margin-bottom: 10px">
                                                <i class="fas fa-key"></i>
                                                Đổi mật khẩu
                                            </div>
                                            <div style=" margin-left: 10px; margin-top: 10px;padding-left: 15px;padding-right: 15px" >
                                                <div class="form-group row">
                                                    <label for="inputPassword" class="col-sm-3 col-form-label">Mật khẩu cũ</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control"  value="" name="id">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputPassword" class="col-sm-3 col-form-label">Mật khẩu mới</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control"  value="" name="id">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label for="inputPassword" class="col-sm-3 col-form-label">Nhập lại mật khẩu mới</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control"  value="" name="id">
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="text-align: center; padding-bottom: 15px "><input type="submit" onclick="" class="btn btn-secondary" value="Cập nhật"/></div>
                                        </form></div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <jsp:include page="include/footer.jsp"/>
</body>
</html>
