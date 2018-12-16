<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Danh mục bên trái -->
<ul class="sidebar navbar-nav">
    <li class="modal-header" style="color: #69c">
        <span>DANH MỤC</span>
    </li>
    <li class="nav-item active">
        <a class="nav-link" href="../index.jsp">
            <i class="fas fa-fw fa-home"></i>
            <span>Trang chủ</span>
        </a>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="../product.jsp" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-folder"></i>
            <span>Sản phẩm</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="../dienthoai.jsp">Điện thoại</a>
            <a class="dropdown-item" href="../tablet.jsp">Tablet</a>
            <a class="dropdown-item" href="../phukien.jsp">Phụ kiện</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="../khuyenmai.jsp">Khuyến mãi</a>
            <a class="dropdown-item" href="../khac.jsp">Khác</a>
        </div>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../nhanvien.jsp">
            <i class="fas fa-fw fa-user-circle"></i>
            <span>Nhân viên</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../khachhang.jsp">
            <i class="fas fa-fw fa-user"></i>
            <span>Khách hàng</span>
        </a>
    </li>

    <li class="modal-header" style="color: #69c">
        <span>QUẢN LÝ ĐƠN HÀNG</span>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../donhang.jsp">
            <i class="fa fa-fw fa-list-alt"></i>
            <span>Danh sách đơn hàng</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../thongkedonhang.jsp">
            <i class="fa fa-fw fa-chart-area"></i>
            <span>Thống kê đơn hàng</span>
        </a>
    </li>

    <li class="modal-header" style="color: #69c">
        <span>DANH MỤC KHÁC</span>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../danhmuc.jsp">
            <i class="fas fa-fw fa-clipboard-list"></i>
            <span>Danh mục sản phẩm</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../nhasanxuat.jsp">
            <i class="fas fa-fw fa-warehouse"></i>
            <span>Nhà sản xuất</span>
        </a>
    </li>

    <li class="modal-header" style="color: #69c">
        <span>HỆ THỐNG</span>
    <li class="nav-item">
        <a class="nav-link" href="../hethong.jsp">
            <i class="fas fa-fw fa-desktop"></i>
            <span>Quản lý hệ thống</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="../taikhoan.jsp">
            <i class="fas fa-fw fa-address-book"></i>
            <span>Quản lý tài khoản</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../thongtin.jsp">
            <i class="fas fa-fw fa-info"></i>
            <span>Thông tin</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="../dangnhap.jsp">
            <i class="fas fa-fw fa-sign-out-alt"></i>
            <span>Đăng xuất</span>
        </a>
    </li>
</ul>