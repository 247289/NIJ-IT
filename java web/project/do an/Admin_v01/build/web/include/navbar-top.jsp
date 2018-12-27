<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="dto.*" %>
<% TaiKhoan tk = (TaiKhoan)session.getAttribute("tendangnhap"); %>        

<nav class="navbar navbar-expand navbar-dark bg-dark static-top  ">

    <a class="navbar-brand mr-1" href="../index.jsp"><h2>Trang Quản Trị</h2></a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
    </button>

    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group" style="margin-right: 40px;">
            <input type="text" class="form-control" placeholder="Tìm kiếm..." aria-label="Search" aria-describedby="basic-addon2">
            <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </form>

    <ul class="navbar-nav ml-auto ml-md-0" style="margin-top: 9px;">
        <h4>
            <li class="badge badge-secondary">
                <i class="fas fa-user-circle fa-fw" style="font-size: 20px;"></i>
                <% if(tk == null){
                    RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/dangnhap.jsp");
                    dispatch.forward(request, response);

                %>       
                <% } else { %> <span>Xin chào, <%=tk.getTentaikhoan() %> !</span> <% } %>
            </li>
        </h4>
    </ul>

</nav>
