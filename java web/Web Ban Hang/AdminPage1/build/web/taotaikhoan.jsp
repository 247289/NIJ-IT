<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <jsp:include page="include/header.jsp" />
        <title>Admin - Tạo tài khoản</title>
    </head>

    <body class="bg-dark">

        <div class="container">
            <div class="card card-register mx-auto mt-5">
                <div class="card-header">Tạo tài khoản mới</div>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <input type="text" id="firstName" class="form-control" placeholder="First name" required="required" autofocus="autofocus">
                                        <label for="firstName">Tên</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <input type="text" id="lastName" class="form-control" placeholder="Last name" required="required">
                                        <label for="lastName">Họ</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required">
                                <label for="inputEmail">Email</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                                        <label for="inputPassword">Mật khẩu</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <input type="password" id="confirmPassword" class="form-control" placeholder="Confirm password" required="required">
                                        <label for="confirmPassword">Xác nhận mật khẩu</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="btn btn-primary btn-block" href="dangnhap.html">Tạo mới</a>
                    </form>
                    <div class="text-center">
                        <a class="d-block small mt-3" href="dangnhap.html">Về trang đăng nhập</a>
                        <a class="d-block small" href="quenmatkhau.html">Quên mật khẩu?</a>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="include/footer.jsp" />

    </body>

</html>
