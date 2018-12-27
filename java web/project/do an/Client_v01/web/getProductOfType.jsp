<%-- 
    Document   : getProductOfType
    Created on : Dec 15, 2018, 7:54:47 PM
    Author     : Admin
--%>

<%@page import="dto.SanPham"%>
<%@page import="dto.DanhMuc"%>
<%@page import="DAO.SanPhamDao"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
            String id = (String)request.getAttribute("id");
            SanPhamDao b = new SanPhamDao();
            SanPham a = b.GetPhone(id);
        %>
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="row">
                        <!-- Main Thumbnail Image Start -->
                        <div class="col-lg-5 col-md-6 col-sm-5">
                            <!-- Thumbnail Large Image start -->
                            <div class="tab-content">
                                <input type="hidden" name="id" value="<%= a.getId()%>">
                                <div id="thumb1" class="tab-pane fade show active">
                                    <img src="<%= a.getAlbumAnh().getAnh1()%>" alt="product-view">
                                </div>
                                <div id="thumb2" class="tab-pane fade">
                                    <img src="<%= a.getAlbumAnh().getAnh2()%>" alt="product-view">
                                </div>
                                <div id="thumb3" class="tab-pane fade">
                                    <img src="<%= a.getAlbumAnh().getAnh3()%>" alt="product-view">
                                </div>
                                <div id="thumb4" class="tab-pane fade">
                                    <img src="<%= a.getAlbumAnh().getAnh4()%>" alt="product-view">
                                </div>
                                <div id="thumb5" class="tab-pane fade">
                                    <img src="<%= a.getAlbumAnh().getAnh1()%>" alt="product-view">
                                </div>
                            </div>
                            <!-- Thumbnail Large Image End -->
                            <!-- Thumbnail Image End -->
                            <div class="product-thumbnail mt-20">
                                <div class="thumb-menu owl-carousel nav tabs-area" role="tablist">
                                    <a class="active" data-toggle="tab" href="#thumb1"><img src="<%= a.getAlbumAnh().getAnh1()%>" alt="product-thumbnail"></a>
                                    <a data-toggle="tab" href="#thumb2"><img src="<%= a.getAlbumAnh().getAnh2()%>" alt="product-thumbnail"></a>
                                    <a data-toggle="tab" href="#thumb3"><img src="<%= a.getAlbumAnh().getAnh3()%>" alt="product-thumbnail"></a>
                                    <a data-toggle="tab" href="#thumb4"><img src="<%= a.getAlbumAnh().getAnh4()%>" alt="product-thumbnail"></a>
                                    <a data-toggle="tab" href="#thumb5"><img src="<%= a.getAlbumAnh().getAnh1()%>" alt="product-thumbnail"></a>
                                </div>
                            </div>
                            <!-- Thumbnail image end -->
                        </div>
                        <!-- Main Thumbnail Image End -->
                        <!-- Thumbnail Description Start -->
                        <div class="col-lg-7 col-md-6 col-sm-7">
                            <div class="thubnail-desc fix mt-sm-40">
                                <h3 class="product-header"><a href="ViewSanPham.jsp?masp=<%= a.getId()%>"><%= a.getTen()%></a></h3>
                                <div class="rating-summary fix mtb-10">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                </div>
                                <div class="pro-price mtb-30">
                                    <p class="d-flex align-items-center"><span class="prev-price">5,000,000</span><span class="price"><%= a.getGia()%></span><span class="saving-price">save 8%</span></p>
                                </div>
                                <p class="mb-20 pro-desc-details">Một Chút Thông Tin</p>
                                <div class="box-quantity d-flex hot-product2">
                                    <form action="#">
                                        <input class="quantity mr-15" type="number" min="1" value="1">
                                    </form>
                                    <div class="pro-actions">
                                        <div class="actions-primary">
                                            <a href="cart.jsp" title="" data-original-title="Thêm Vào Gio Hàng"> + Thêm Vào Giỏ Hàng</a>
                                        </div>
                                        <div class="actions-secondary">
                                            <a href="ThanhToan.jsp" title="" data-original-title="Mua Hàng"><i class="lnr lnr-cart"></i> <span>Mua Hàng</span></a>
                                            <a href="YeuThich.jsp" title="" data-original-title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>Yêu Thích</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="pro-ref mt-20">
                                    <p><span class="in-stock"><i class="ion-checkmark-round"></i> Còn Hàng</span></p>
                                </div>
                                <div class="socila-sharing mt-25">
                                    <ul class="d-flex" style="font-size: 30px">
                                        <li>Share:</li>
                                        <li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true" title="Facebook" style="color: #4267B2"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus-square" aria-hidden="true" title="Google"  style="color: #EA4335"></i></a></li>

                                        <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true" title="Twitter"  style="color: #1DA1F2" ></i></a></li>
                                        <li><a href="#"><i class=" fa fa-instagram" aria-hidden="true" title="Instagram"  style="color: #D82667"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true" title="Linkein"  style="color: #0D8ABC"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Thumbnail Description End -->
                    </div>
                </div>
            </div>
        </div>
        <!--End modal-->

        
        
        
        <div class="main-product-thumbnail quick-thumb-content">
                        <div class="container">
                            <div class="modal fade" id="xiaomi2">
                            <div class="modal-dialog modal-lg modal-dialog-centered">
                                <div class="modal-content">
                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <div class="row">
                                            <!-- Main Thumbnail Image Start -->
                                            <div class="col-lg-5 col-md-6 col-sm-5">
                                                <!-- Thumbnail Large Image start -->
                                                <div class="tab-content">
                                                    <input type="hidden" name="id" value="<%= a.getId()%>">
                                                    <div id="thumb1" class="tab-pane fade show active">
                                                        <img src="<%= a.getAlbumAnh().getAnh1()%>" alt="product-view">
                                                    </div>
                                                    <div id="thumb2" class="tab-pane fade">
                                                        <img src="<%= a.getAlbumAnh().getAnh2()%>" alt="product-view">
                                                    </div>
                                                    <div id="thumb3" class="tab-pane fade">
                                                        <img src="<%= a.getAlbumAnh().getAnh3()%>" alt="product-view">
                                                    </div>
                                                    <div id="thumb4" class="tab-pane fade">
                                                        <img src="<%= a.getAlbumAnh().getAnh4()%>" alt="product-view">
                                                    </div>
                                                    <div id="thumb5" class="tab-pane fade">
                                                        <img src="<%= a.getAlbumAnh().getAnh1()%>" alt="product-view">
                                                    </div>
                                                </div>
                                                <!-- Thumbnail Large Image End -->
                                                <!-- Thumbnail Image End -->
                                                <div class="product-thumbnail mt-20">
                                                    <div class="thumb-menu owl-carousel nav tabs-area" role="tablist">
                                                        <a class="active" data-toggle="tab" href="#thumb1"><img src="<%= a.getAlbumAnh().getAnh1()%>" alt="product-thumbnail"></a>
                                                        <a data-toggle="tab" href="#thumb2"><img src="<%= a.getAlbumAnh().getAnh2()%>" alt="product-thumbnail"></a>
                                                        <a data-toggle="tab" href="#thumb3"><img src="<%= a.getAlbumAnh().getAnh3()%>" alt="product-thumbnail"></a>
                                                        <a data-toggle="tab" href="#thumb4"><img src="<%= a.getAlbumAnh().getAnh4()%>" alt="product-thumbnail"></a>
                                                        <a data-toggle="tab" href="#thumb5"><img src="<%= a.getAlbumAnh().getAnh1()%>" alt="product-thumbnail"></a>
                                                    </div>
                                                </div>
                                                <!-- Thumbnail image end -->
                                            </div>
                                            <!-- Main Thumbnail Image End -->
                                            <!-- Thumbnail Description Start -->
                                            <div class="col-lg-7 col-md-6 col-sm-7">
                                                <div class="thubnail-desc fix mt-sm-40">
                                                    <h3 class="product-header"><a href="ViewSanPham.jsp?masp=<%= a.getId()%>"><%= a.getTen()%></a></h3>
                                                    <div class="rating-summary fix mtb-10">
                                                        <div class="rating">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="pro-price mtb-30">
                                                        <p class="d-flex align-items-center"><span class="prev-price">5,000,000</span><span class="price"><%= a.getGia()%></span><span class="saving-price">save 8%</span></p>
                                                    </div>
                                                    <form name="thongtin1" class=" pb-30">
                                                        <table class="table-responsive table">
                                                            <tr>
                                                                <th>Màn Hình</th>
                                                                <td><%= a.getManhinh() %> inch</td>
                                                            </tr>
                                                            <tr>
                                                                <th>CPU</th>
                                                                <td><%= a.getCPU() %></td>
                                                            </tr>
                                                            <tr>
                                                                <th>RAM</th>
                                                                <td><%= a.getRAM() %> GB</td>
                                                            </tr>

                                                            <tr>
                                                                <th>Bảo Hành</th>
                                                                <td><%= a.getBaohanh() %> Tháng</td>
                                                            </tr>
                                                        </table>
                                                    </form>
                                                    <div class="box-quantity d-flex hot-product2">
                                                        <form action="#">
                                                            <input class="quantity mr-15" type="number" min="1" value="1">
                                                        </form>
                                                        <div class="pro-actions">
                                                            <div class="actions-primary">
                                                                <a href="cart.jsp" title="" data-original-title="Thêm Vào Gio Hàng"> + Thêm Vào Giỏ Hàng</a>
                                                            </div>
                                                            <div class="actions-secondary">
                                                                <a href="ThanhToan.jsp" title="" data-original-title="Mua Hàng"><i class="lnr lnr-cart"></i> <span>Mua Hàng</span></a>
                                                                <a href="YeuThich.jsp" title="" data-original-title="Yêu Thích"><i class="lnr lnr-heart"></i> <span>Yêu Thích</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="pro-ref mt-20">
                                                        <p><span class="in-stock"><i class="ion-checkmark-round"></i> Còn Hàng</span></p>
                                                    </div>
                                                    <div class="socila-sharing mt-25">
                                                        <ul class="d-flex" style="font-size: 30px">
                                                            <li>Share:</li>
                                                            <li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true" title="Facebook" style="color: #4267B2"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-google-plus-square" aria-hidden="true" title="Google"  style="color: #EA4335"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true" title="Twitter"  style="color: #1DA1F2" ></i></a></li>
                                                            <li><a href="#"><i class=" fa fa-instagram" aria-hidden="true" title="Instagram"  style="color: #D82667"></i></a></li>
                                                            <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true" title="Linkein"  style="color: #0D8ABC"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Thumbnail Description End -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--End modal-->
                            </div>
                        </div>
                        </div>
                      
