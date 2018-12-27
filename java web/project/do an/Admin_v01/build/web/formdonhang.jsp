
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="dto.*" %>
<%@page  import="dao.*" %>
<%@page  import="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết đơn hàng</title>
        <link href="resources/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            String id= request.getParameter("id");
            //out.print(id);
            DonHang dh=DonHangDAO.GetDonHang(id);
            KhachHang kh = dh.getKhachhang();
            NhanVien nv = dh.getNhanvien();
            NguoiNhan nn = dh.getNguoinhan();
            
            DonHangDAO dh2 = new DonHangDAO();
            ArrayList<ChiTietDonHang> list = dh2.getSPDonHang(id);
               // DienThoai dt=new DienThoai();
        %>
        <div class="cover_page"></div>
        <div class="form" >
            <div class="fas fa-fw fa-times" id="exit" style="float: right; font-size: 40px" onclick="return closed()"></div>
            <div class="title">
                <h2 style="text-align: center; width: 100%">Chi tiết đơn hàng</h2>
            </div>
            <div class="container">
                <div id="contentSP">
                    <form action="/UpdateDonHang" method="post">
                        <table style="width:100%;"  id="dataTable1"  cellspacing="0">
                            <tr>
                                <th>Mã đơn hàng</th>
                                <td><input value="<%=id %>" class="form-control" type="text" name="id" readonly="true"></td>
                            </tr>
                            <tr>
                                <th>Ngày lập</th>
                                <td><input value="<%=dh.getNgaylap() %>" class="form-control" type="text" disabled="true"></td>
                            </tr>
                            <tr>
                                <th>Tên nhân viên</th>
                                <td><input value="<%=nv.getTen() %>" class="form-control" type="text" disabled="true"></td>
                            </tr>
                            <tr>
                                <th>Tên khách hàng</th>
                                <td><input value="<%=kh.getTen() %>" class="form-control" type="text" disabled="true"></td>
                            </tr>
                            <tr>
                                <th>Địa chỉ</th>
                                <td><input value="<%=nn.getDiachi1() %>" class="form-control" type="text" disabled="true"></td>
                            </tr>

                            <tr>
                                <th >Sản phẩm (<%=list.size() %>)</th>
                                <td>
                                    <table class="table" style="text-align: center; margin-top: 10px;">
                                        <tr class="thead-light">
                                            <th scope="col">STT</th>
                                            <th scope="col" colspan="2">Sản phẩm</th>
                                            <th scope="col">Giá (VND)</th>
                                            <th scope="col">Số lượng</th>
                                        </tr>
                                        <% int tong = 0;
                                       for (int i = 0; i < list.size(); i++){
                                           ChiTietDonHang ct = list.get(i);
                                           
                                        %>
                                        <tr>
                                            <td><%=i+1 %></td>
                                            <td><img src="<%=ct.getAlbumanh().getAnh1() %>" width="80px" height="80px" /></td>
                                            <td><%=ct.getDienthoai().getTen() %></td>
                                            <td><%=ct.getDienthoai().getGia() %></td>
                                            <td><%=ct.getSoluong() %></td>
                                        </tr>
                                        <%
                                           tong+=ct.getDienthoai().getGia() * ct.getSoluong(); }
                                        %>
                                    </table>
                                </td>
                            </tr>

                            <tr>
                                <th>Tổng giá</th>
                                <td><input value="<%=tong %>" class="form-control" type="text" disabled="true"></td>
                            </tr>
                            <tr>
                                <th>Tình trạng</th>
                                <td><input value="<%=dh.getTinhtrang() %>" class="form-control" type="text" name="tinhtrang"></td>
                            </tr>
                            <tr>
                                <th>Ghi chú</th>
                                <td><input value="<%=dh.getGhichu() %>" class="form-control" type="text" name="ghichu" ></td>
                            </tr>

                            <tr>
                                <td></td>
                                <td style="text-align: left" colspan="10">
                                    <input type="submit" class="btn btn-secondary" value="Sửa" style="width: 80px">
                                    <input type="button" class="btn btn-secondary" onclick="return closed()" style="width: 80px" value="Hủy"/>
                                </td>
                            </tr>

                        </table>
                    </form>
                </div>
            </div>
        </div>
                            
    </body>
    <script src="resources/js/status.js" type="text/javascript"></script>

</html>
