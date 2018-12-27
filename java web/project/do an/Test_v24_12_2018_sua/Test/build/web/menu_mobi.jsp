<%-- 
    Document   : menu_mobi
    Created on : 22-12-2018, 01:05:56
    Author     : daomi
--%>
<script type="text/javascript" src="public/default/js/jquery-1.9.1.min.js"></script> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="header Fixed"><a href="#menu" class="menu_mobile" title="#">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </a>
    <span class="sologan_mobile">
        <a href="#" title="#"><i class="fa fa-volume-control-phone"></i> (012)234.67898 - 0123456789</a>
        <a href="gio_hang.jsp" title="Gi? hàng"><img src="public/default/images/icon-cart.png"></a>
    </span>
</div>
<div id="menu">
    <ul>

        <li><a href="ao_nam.jsp" title="áo nam"><img class="img-thumbnail" alt="Áo nam" src="public/default/img/aonam.png">Áo nam</a>
            <ul>
                <li><a href="ao-thun-nam" title="Áo Thun Nam">Áo Thun Nam</a>

                </li>
                <li><a href="ao-so-mi-nam" title="Áo S? mi Nam">Áo Sơ mi Nam</a>

                </li>
                <li><a href="ao-khoac-nam" title="Áo Khoác Nam">Áo Khoác Nam</a>

                </li>
                <li><a href="ao-vest-nam" title="Áo Vest Nam">Áo Vest Nam</a>

                </li>
                <li><a href="ao-len-nam" title="Áo Len Nam">Áo Len Nam</a>

                </li>
            </ul>
        </li>
        <li><a href="quan_nam.jsp" title="Quần nam"><img class="img-thumbnail" alt="Quần nam" src="public/default/img/quannam.png">Quần nam</a>
            <ul>
                <li><a href="quan-jeans-nam" title="Quần Jeans Nam">Quần Jeans Nam</a>

                </li>
                <li><a href="quan-short-nam" title="Quần Short Nam">Quần Short Nam</a>

                </li>
                <li><a href="quan-kaki-nam" title="Quần Kaki Nam">Quần Kaki Nam</a>

                </li>
                <li><a href="quan-tay-nam" title="Quần Tây Nam">Quần Tây Nam</a>

                </li>
            </ul>
        </li>
        <li><a href="giay_dep_nam.jsp" title="Giày dép nam"><img class="img-thumbnail" alt="Giày dép nam" src="public/default/img/giaydepnam.png">Giày dép nam</a>
            <ul>
                <li><a href="giay-nam" title="Giày Nam">Giày Nam</a>

                </li>
                <li><a href="dep-nam" title="Dép Nam">Dép Nam</a>

                </li>
            </ul>
        </li>
        <li><a href="phu_kien.jsp" title="Ph? ki?n"><img class="img-thumbnail" alt="Ph? ki?n" src="public/default/img/phukien.png">Phụ kiện</a>
            <ul>
                <li><a href="non-nam" title="Nón Nam">Nón Nam</a>

                </li>
                <li><a href="tui-xach" title="Túi Xách">Túi Xách</a>

                </li>
                <li><a href="that-lung-nam" title="Thắt L?ng Nam">Thắt Lưng Nam</a>

                </li>
                <li><a href="ca-vat-nam" title="Cà V?t Nam">Cà V?t Nam</a>

                </li>
                <li><a href="that-no-nam" title="Thắt Nơ Nam">Thắt Nơ Nam</a>

                </li>
            </ul>
        </li>
        <li><a href="tin_tuc.jsp" title="Tin t?c & s? ki?n"><img class="img-thumbnail" alt="Tin t?c & s? ki?n" src="public/default/img/tintuc.png">Tin Tức Sự Kiện</a>
        </li>
        <li><a href="khuyen_mai.jsp" title="khuy?n mãi"><img class="img-thumbnail" alt="Khuy?n mãi" src="public/default/img/sale.png">Khuyễn mãi</a></li>

    </ul>
</div>
<script type="text/javascript">
    // menu ?n 
    $(function () {
        var $menu = $('div#menu'),
                $html = $('html, body');
        $menu.mmenu({
            dragOpen: true
        });
        var $anchor = false;
        $menu.find('li > a').on(
                'click',
                function (e) {
                    $anchor = $(this);
                }
        );
        var api = $menu.data('mmenu');
        api.bind('closed',
                function () {
                    if ($anchor) {
                        var href = $anchor.attr('href');
                        $anchor = false;
                        if (href.slice(0, 1) == '#') {
                            $html.animate({
                                scrollTop: $(href).offset().top
                            });
                        }
                    }
                }
        );
    });</script>
