<%@page import="DAO.Data"%>
<%@page import="model.Product"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="wrapper product-hot">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-xs-12 title_quantam"><p>Sản phẩm bạn <span>quan tâm</span></p></div>
            <div class="panel">
                <div class="panel-heading">
                    <ul class="nav-tabs">
                        <li class="active"><a href="#tab1" data-toggle="tab" aria-expanded="true">Áo nam</a></li>
                        <li class=""><a href="#tab2" data-toggle="tab" aria-expanded="false">Quần nam</a></li>
                        <li class=""><a href="#tab3" data-toggle="tab" aria-expanded="false">Giày dép nam</a></li>
                        <li class=""><a href="#tab4" data-toggle="tab" aria-expanded="false">Phụ kiện</a></li>
                    </ul>
                    <div class="col-md-12 col-xs-12 line-heght"><span><img src="public/default/images/icon-line.png"></span></div>
                </div>            
                <div>
                    <div class="panel-body">
                        <div class="tab-content">
                            <div class="tab-pane fade in  active" id="tab1">
                                <section class="slide-product container unselect">
                                    <button class="slider_prev prev_hot"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
                                    <button class="slider_next next_hot"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
                                    <div class="slpd slpd_hot">

                                        <%
                                            Vector<Product> getProduct_2 = new Data().getProduct_2(0, "", "", "", 0, 3, 11);
                                            Product p2 = new Product();
                                            if (getProduct_2.size() == 0) {
                                                out.print("không có sản phẩm !");
                                            } else {
                                                for (int i = 0; i < getProduct_2.size(); i++) {
                                        %> 
                                        <div class="col-md3">                                              
                                            <div class="product">
                                                <%p2= getProduct_2.get(i);%>
                                                <a class="img" href="chi_tiet_san_pham.jsp?masp=<%=p2.getMaSP()%>" title="<%=p2.getTenSP()%>"><img class="img-responsive" src="<%=p2.getHinhAnh().split(";")[0]%>" alt="<%=p2.getTenSP()%>"></a>
                                                <figcaption><h2><a href="chi_tiet_san_pham.jsp?masp=<%=p2.getMaSP()%>" title="<%=p2.getTenSP()%>"><%=p2.getTenSP()%></a></h2>
                                                    <div class="call"><%=p2.getMaSP()%></div>
                                                    <div class="price"><%=p2.getGia()%> VNĐ</div>
                                                </figcaption>
                                                <div class="product-btn">
                                                    <a href="chi_tiet_san_pham.jsp?masp=<%=p2.getMaSP()%>" title="<%=p2.getTenSP()%>" class="btn btn-default">Mua ngay</a>
                                                    <a title="Thêm vào giỏ hàng" class="btn btn-default" onclick="addToCart(<%=p2.getMaSP()%>)"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                        </div> 
                                        <%
                                                }
                                            }
                                        %>                             

                                    </div>
                                </section>
                                <div class="col-md-12 col-xs-12" style="text-align:center;">
                                    <a href="ao_nam.jsp" class="btn btn-primary">Xem thêm</a></div>
                            </div><!--end #tab1default-->
                            <div class="tab-pane fade" id="tab2">
                                <section class="slide-product container unselect">
                                    <button class="slider_prev prev_hot"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
                                    <button class="slider_next next_hot"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
                                    <div class="slpd slpd_hot">

                                        <%
                                            Vector<Product> getProduct_3 = new Data().getProduct_3(0, "", "", "", 0, 15, 11);
                                            Product p3 = new Product();
                                            if (getProduct_3.size() == 0) {
                                                out.print("không có sản phảm !");
                                            } else {
                                                for (int i = 0; i < getProduct_3.size(); i++) {
                                        %> 
                                        <div class="col-md3">                                              
                                            <div class="product">
                                                <% p3 = getProduct_3.get(i);%>
                                                <a class="img" href="chi_tiet_san_pham.jsp?masp=<%=p3.getMaSP()%>" title="<%=p3.getTenSP()%>"><img class="img-responsive" src="<%=p3.getHinhAnh().split(";")[0]%>" alt="<%=p3.getTenSP()%>"></a>
                                                <figcaption><h2><a href="chi_tiet_san_pham.jsp?masp=<%=p3.getMaSP()%>" title="<%=p3.getTenSP()%>"><%=p3.getTenSP()%></a></h2>
                                                    <div class="call"><%=p3.getMaSP()%></div>
                                                    <div class="price"><%=p3.getGia()%> VNĐ</div>
                                                </figcaption>
                                                <div class="product-btn">
                                                    <a href="chi_tiet_san_pham.jsp?masp=<%=p3.getMaSP()%>" title="<%=p3.getTenSP()%>" class="btn btn-default">Mua ngay</a>
                                                    <a title="Thêm vào giỏ hàng" class="btn btn-default" onclick="addToCart(<%=p3.getMaSP()%>)"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                        </div> 
                                        <%
                                                }
                                            }
                                        %>                             

                                    </div>
                                </section>
                                <div class="col-md-12 col-xs-12" style="text-align:center;">
                                    <a href="quan_nam.jsp" class="btn btn-primary">Xem thêm</a></div>
                            </div><!--end #tab2default-->
                            <div class="tab-pane fade" id="tab3">
                                <section class="slide-product container unselect">
                                    <button class="slider_prev prev_hot"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
                                    <button class="slider_next next_hot"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
                                    <div class="slpd slpd_hot">

                                        <%
                                            Vector<Product> getProduct_4 = new Data().getProduct_4(0, "", "", "", 0, 19, 11);
                                            Product p4 = new Product();
                                            if (getProduct_4.size() == 0) {
                                                out.print("không có sản phẩm !");
                                            } else {
                                                for (int i = 0; i < getProduct_4.size(); i++) {
                                        %> 
                                        <div class="col-md3">                                              
                                            <div class="product">
                                                <% p4 = getProduct_4.get(i);%>
                                                <a class="img" href="chi_tiet_san_pham.jsp?masp=<%=p4.getMaSP()%>" title="<%=p4.getTenSP()%>"><img class="img-responsive" src="<%=p4.getHinhAnh().split(";")[0]%>" alt="<%=p4.getTenSP()%>"></a>
                                                <figcaption><h2><a href="chi_tiet_san_pham.jsp?masp=<%=p4.getMaSP()%>" title="<%=p4.getTenSP()%>"><%=p4.getTenSP()%></a></h2>
                                                    <div class="call"><%=p4.getMaSP()%></div>
                                                    <div class="price"><%=p4.getGia()%> VNĐ</div>
                                                </figcaption>
                                                <div class="product-btn">
                                                    <a href="chi_tiet_san_pham.jsp?masp=<%=p4.getMaSP()%>" title="<%=p4.getTenSP()%>" class="btn btn-default">Mua ngay</a>
                                                    <a title="Thêm vào giỏ hàng" class="btn btn-default" onclick="addToCart(<%=p4.getMaSP()%>)"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                        </div> 
                                        <%
                                                }
                                            }
                                        %>                             

                                    </div>
                                </section>
                                <div class="col-md-12 col-xs-12" style="text-align:center;">
                                    <a href="quan_nam.jsp" class="btn btn-primary">Xem thêm</a></div>
                            </div><!--end #tab3default-->
                            <div class="tab-pane fade" id="tab4">
                                <section class="slide-product container unselect">
                                    <button class="slider_prev prev_hot"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
                                    <button class="slider_next next_hot"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
                                    <div class="slpd slpd_hot">

                                        <%
                                            Vector<Product> getProduct_5 = new Data().getProduct_5(0, "", "", "", 0, 20, 11);
                                            Product p5 = new Product();
                                            if (getProduct_5.size() == 0) {
                                                out.print("không có sản phẩm !");
                                            } else {
                                                for (int i = 0; i < getProduct_5.size(); i++) {
                                        %> 
                                        <div class="col-md3">                                              
                                            <div class="product">
                                                <% p5 = getProduct_5.get(i);%>
                                                <a class="img" href="chi_tiet_san_pham.jsp?masp=<%=p5.getMaSP()%>" title="<%=p5.getTenSP()%>"><img class="img-responsive" src="<%=p5.getHinhAnh().split(";")[0]%>" alt="<%=p5.getTenSP()%>"></a>
                                                <figcaption><h2><a href="chi_tiet_san_pham.jsp?masp=<%=p5.getMaSP()%>" title="<%=p5.getTenSP()%>"><%=p5.getTenSP()%></a></h2>
                                                    <div class="call"><%=p5.getMaSP()%></div>
                                                    <div class="price"><%=p5.getGia()%> VNĐ</div>
                                                </figcaption>
                                                <div class="product-btn">
                                                    <a href="chi_tiet_san_pham.jsp?masp=<%=p5.getMaSP()%>" title="<%=p5.getTenSP()%>" class="btn btn-default">Mua ngay</a>
                                                    <a title="Thêm vào giỏ hàng" class="btn btn-default" onclick="addToCart(<%=p5.getMaSP()%>)"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                        </div> 
                                        <%
                                                }
                                            }
                                        %>                             

                                    </div>
                                </section>
                                <div class="col-md-12 col-xs-12" style="text-align:center;">
                                    <a href="quan_nam.jsp" class="btn btn-primary">Xem thêm</a></div>
                            </div><!--end #tab4default-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>