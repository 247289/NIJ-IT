<%@page import="DAO.Data"%>
<%@page import="model.Product"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="wrapper">
    <div class="container">
        <div class="row">
            <div class="panel">
                <div class="panel-body">
                    <div class="tab-content">

                        <div class="tab-pane fade in  active" id="tab1default">

                            <section class="slide-product container unselect">
                                <button class="slider_prev prev_hot"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
                                <button class="slider_next next_hot"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
                                <div class="slpd slpd_hot">

                                    <%
                                        Vector<Product> getProducts = new Data().getProducts(0, "", "", "", 0, 2, 11);
                                        Product p = new Product();
                                        if (getProducts.size() == 0) {
                                            out.print("không có sản phẩm !");
                                        } else {
                                            for (int i = 0; i < getProducts.size(); i++) {
                                    %> 
                                    <div class="col-md3">                                              
                                        <div class="product">
                                            <% p = getProducts.get(i);%>
                                            <a class="img" href="chi_tiet_san_pham.jsp?masp=<%=p.getMaSP()%>" title="<%=p.getTenSP()%>"><img class="img-responsive" src="<%=p.getHinhAnh().split(";")[0]%>" alt="<%=p.getTenSP()%>"></a>
                                            <figcaption><h2><a href="chi_tiet_san_pham.jsp?masp=<%=p.getMaSP()%>" title="<%=p.getTenSP()%>"><%=p.getTenSP()%></a></h2>
                                                <div class="call"><%=p.getMaSP()%></div>
                                                <div class="price"><%=p.getGia()%> VND</div>
                                            </figcaption>
                                            <div class="product-btn">
                                                <a href="chi_tiet_san_pham.jsp?masp=<%=p.getMaSP()%>" title="<%=p.getTenSP()%>" class="btn btn-default">Mua ngay</a>
                                                <a title="Thêm vào giỏ hàng" class="btn btn-default" onclick="addToCart(<%=p.getMaSP()%>)"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
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
                        </div><!--  end #tab1default-->
                        <div class="tab-pane fade" id="tab2default">
                            <section class="slide-product container unselect">
                                <button class="slider_prev prev_hot"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
                                <button class="slider_next next_hot"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
                                <div class="slpd slpd_hot">

                                    <%
                                        Vector<Product> getProduct_1 = new Data().getProduct_1(0, "", "", "", 0, 1, 11);
                                        Product p1 = new Product();
                                        if (getProduct_1.size() == 0) {
                                            out.print("không có sản phẩm !");
                                        } else {
                                            for (int i = 0; i < getProduct_1.size(); i++) {
                                    %> 
                                    <div class="col-md3">                                              
                                        <div class="product">
                                            <% p1 = getProduct_1.get(i);%>
                                            <a class="img" href="chi_tiet_san_pham.jsp?masp=<%=p1.getMaSP()%>" title="<%=p1.getTenSP()%>"><img class="img-responsive" src="<%=p1.getHinhAnh().split(";")[0]%>" alt="<%=p1.getTenSP()%>"></a>
                                            <figcaption><h2><a href="chi_tiet_san_pham.jsp?masp=<%=p1.getMaSP()%>" title="<%=p1.getTenSP()%>"><%=p1.getTenSP()%></a></h2>
                                                <div class="call"><%=p1.getMaSP()%></div>
                                                <div class="price"><%=p1.getGia()%> VND</div>
                                            </figcaption>
                                            <div class="product-btn">
                                                <a href="chi_tiet_san_pham.jsp?masp=<%=p1.getMaSP()%>" title="<%=p1.getTenSP()%>" class="btn btn-default">Mua ngay</a>
                                                <a title="Thêm vào giỏ hàng" class="btn btn-default" onclick="addToCart(<%=p.getMaSP()%>)"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
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
                                <a href="phu_kien.jsp" class="btn btn-primary">Xem thêm</a></div>
                        </div><!--end #tab2default-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>