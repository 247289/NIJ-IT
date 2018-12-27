<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <jsp:include page="include/header.jsp" />
        <title>Admin - Quên mật khẩu</title>
    </head>

    <body class="bg-dark">

        <div class="container">
            <div class="card card-login mx-auto mt-5">
                <div class="card-header"><h4>Quên mật khẩu</h4></div>
                <div class="card-body">
                    <div class="text-center mb-4">
                        <p>Nhập email của bạn và chúng tôi sẽ gửi mật khẩu.</p>
                    </div>
                    <form>
                        <div class="form-group">
                            <div class="form-label-group">
                                <input type="email" id="inputEmail" class="form-control" placeholder="Enter email address" required="required" autofocus="autofocus">
                                <label for="inputEmail">Nhập email</label>
                            </div>
                        </div>
                        <a class="btn btn-primary btn-block" href="dangnhap.jsp">Lấy mật khẩu</a>
                    </form>
                    <div class="text-center">
                        <a class="d-block small" href="dangnhap.jsp">Về trang đăng nhập</a>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="include/footer.jsp" />

    </body>

</html>