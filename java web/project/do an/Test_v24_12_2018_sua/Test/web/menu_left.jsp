
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="menu_left">     
    <nav id="cssmenu">
        <ul style="display: block;">
            <li class="has-sub next_has"><span class="submenu-button submenu-opened"></span><a href="ao_nam.jsp" title="Áo Nam">Áo Nam</a>
                <ul class="open" style="display: none;">
                    <li class="has-sub"><span class="submenu-button"></span><a href="ao_vest_nam.jsp" title="Áo Vest Nam">Áo Vest Nam</a> </li>

                    <li class="has-sub"><span class="submenu-button"></span><a href="ao_so_mi_nam.jsp" title="Áo Sơ mi Nam">Áo Sơ mi Nam</a></li>
                    <li class="has-sub"><span class="submenu-button"></span><a href="ao_khoac_nam.jsp" title="Áo Khoác Nam">Áo Khoác Nam</a></li>

                    <li class="has-sub"><span class="submenu-button"></span><a href="ao_thun_nam.jsp" title="Áo Thun Nam">Áo Thun Nam</a></li>
                    <li class="has-sub"><span class="submenu-button"></span><a href="ao_len_nam" title="Áo Len Nam">Áo Len Nam</a>

                    </li>

                </ul>
            </li>
            <li class="has-sub"><span class="submenu-button"></span><a href="quan_nam.jsp" title="Quần Nam">Quần Nam</a>
                <ul style="display: none;">
                    <li class="has-sub"><span class="submenu-button"></span><a href="quan_jean_nam.jsp" title="Quần Jeans Nam">Quần Jeans Nam</a>

                    </li>
                    <li class="has-sub"><span class="submenu-button"></span><a href="quan_short_nam.jsp" title="Quần Short Nam">Quần Short Nam</a>

                    </li>
                    <li class="has-sub"><span class="submenu-button"></span><a href="quan_kaki_nam.jsp" title="Quần Kaki Nam">Quần Kaki Nam</a>

                    </li>
                    <li class="has-sub"><span class="submenu-button"></span><a href="quan_tay_nam.jsp" title="Quần Tây Nam">Quần Tây Nam</a>

                    </li>

                </ul>
            </li>
            <li class="has-sub"><span class="submenu-button"></span><a href="giay_dep_nam.jsp" title="Giày - Dép Nam">Giày - Dép Nam</a>
                <!--                <ul style="display: none;">
                                    <li class="has-sub"><span class="submenu-button"></span><a href="giay-nam" title="Giày Nam">Giày Nam</a>
                
                                    </li>
                                    <li class="has-sub"><span class="submenu-button"></span><a href="dep-nam" title="Dép Nam">Dép Nam</a>
                
                                    </li>
                
                                </ul>-->
            </li>
            <!--            <li class="has-sub"><span class="submenu-button"></span><a href="set-quan-ao-nam" title="Set Quần Áo Nam">Set Quần Áo Nam</a>
                            <ul style="display: none;">
                                <li class="has-sub"><span class="submenu-button"></span><a href="Thoi-trang-han-quoc" title="Set Thời Trang Nam">Set Thời Trang Nam</a>
            
                                </li>
                                <li><a href="set-thoi-trang-nu" title="Set Thời Trang Nữ">Set Thời Trang Nữ</a>
                                </li>
            
                            </ul>
                        </li>-->
            <li class="has-sub"><span class="submenu-button"></span><a href="phu_kien.jsp" title="Phụ kiện">Phụ kiện</a>
            <li class="has-sub"><span class="submenu-button"></span><a href="tin_tuc.jsp" title="Tin tức">Tin tức</a>
            <li class="has-sub"><span class="submenu-button"></span><a href="khuyen_mai.jsp" title="Khuyến mãi">Khuyến mãi</a>
                <!--                <ul style="display: none;">
                                    <li class="has-sub"><span class="submenu-button"></span><a href="non-nam" title="Nón Nam">Nón Nam</a>
                
                                    </li>
                                    <li class="has-sub"><span class="submenu-button"></span><a href="tui-xach" title="Túi Xách">Túi Xách</a>
                
                                    </li>
                                    <li class="has-sub"><span class="submenu-button"></span><a href="that-lung-nam" title="Thắt Lưng Nam">Thắt Lưng Nam</a>
                
                                    </li>
                                    <li class="has-sub"><span class="submenu-button"></span><a href="ca-vat-nam" title="Cà Vạt Nam">Cà Vạt Nam</a>
                
                                    </li>
                                    <li class="has-sub"><span class="submenu-button"></span><a href="that-no-nam" title="Thắt Nơ Nam">Thắt Nơ Nam</a>
                
                                    </li>
                                    <li class="has-sub"><span class="submenu-button"></span><a href="vo-tat-nam" title="Vớ Tất Nam">Vớ Tất Nam</a>
                
                                    </li>
                -->                   
            </li>
        </ul>
    </nav>
</div><!--end menu_left-->
<div class="line-heght line-heght-last">
    <span><img src="public/default/images/icon-line.png"></span>
</div>
<div class="box-left">
    <div class="title_left boloc"></div>
    <div class="kichthuoc">
        <form>
            <div class="title_kt">Kích thước</div>
            <ul class="kt">
                <li><a  href="#" onclick="filterSanpham1('5XL')">5XL</a></li>
                <li><a  href="#" onclick="filterSanpham1('4XL')">4XL</a></li>
                <li><a  href="#" onclick="filterSanpham1('3XL')">3XL</a></li>
                <li><a  href="#" onclick="filterSanpham1('2XL')">2XL</a></li>
                <li><a  href="#" onclick="filterSanpham1('XL')">XL</a></li>
                <li><a  href="#" onclick="filterSanpham1('L')">L</a></li>
                <li><a  href="#" onclick="filterSanpham1('M')">M</a></li>
                <li><a  href="#" onclick="filterSanpham1('S')">S</a></li>               
            </ul>
            <input type="hidden" value="" id="kichco">
        </form>
    </div>

    <div class="kichthuoc">
        <form>
            <div class="title_kt">Màu sắc</div>
            <ul class="kt color">
                <li><a onclick="filterSanpham('0000FF')" name="xanh_lam" href="#" title="Xanh lam" style="background-color:#0000FF"></a></li>
                <li><a onclick="filterSanpham('c8a2c8')" name="hoa_ca" href="#" title="Hoa cà" style="background-color:#c8a2c8"></a></li>
                <li><a  href="#" onclick="filterSanpham('E6E6FA')" title="Oải hương" style="background-color:#E6E6FA"></a></li>
                <li><a  href="#" onclick="filterSanpham('50C878')" title="Lục bảo" style="background-color:#50C878"></a></li>
                <li><a  href="#" onclick="filterSanpham('C41E3A')" title="Hồng Y" style="background-color:#C41E3A"></a></li>
                <li><a  href="#" onclick="filterSanpham('7FFF00')" title="Xanh noãn chuối" style="background-color:#7FFF00"></a></li>
                <li><a  href="#" onclick="filterSanpham('40826D')" title="Xanh crôm" style="background-color:#40826D"></a></li>
                <li><a  href="#" onclick="filterSanpham('FF3E96')" title="Tím nhạt" style="background-color:#FF3E96"></a></li>
                <li><a  href="#" onclick="filterSanpham('FFC125')" title="Vàng nhạt" style="background-color:#FFC125"></a></li>
                <li><a  href="#" onclick="filterSanpham('228B22')" title="Màu rêu" style="background-color:#228B22"></a></li>
                <li><a  href="#" onclick="filterSanpham('8B4513')" title="Màu nâu" style="background-color:#8B4513"></a></li>
                <li><a  href="#" onclick="filterSanpham('FF8C00')" title="Màu bò" style="background-color:#FF8C00"></a></li>
                <li><a  href="#" onclick="filterSanpham('C0C0C0')" title="Màu bạc" style="background-color:#C0C0C0"></a></li>
                <li><a  href="#" onclick="filterSanpham('00F5FF')" title="Xanh cổ vịt" style="background-color:#00F5FF"></a></li>
                <li><a  href="#" onclick="filterSanpham('00FF00')" title="Xanh lá cây" style="background-color:#00FF00"></a></li>
                <li><a  href="#" onclick="filterSanpham('000022')" title="Xanh đen" style="background-color:#000022"></a></li>
                <li><a  href="#" onclick="filterSanpham('FF1493')" title="Màu hồng" style="background-color:#FF1493"></a></li>
                <li><a  href="#" onclick="filterSanpham('FFFAF0')" title="Màu kem" style="background-color:#FFFAF0"></a></li>
                <li><a  href="#" onclick="filterSanpham('FF4500')" title="Màu cam" style="background-color:#FF4500"></a></li>
                <li><a  href="#" onclick="filterSanpham('363636')" title="Xám đậm" style="background-color:#363636"></a></li>
                <li><a  href="#" onclick="filterSanpham('CFCFCF')" title="Xám nhạt" style="background-color:#CFCFCF"></a></li>
                <li><a  href="#" onclick="filterSanpham('8B658B')" title="Màu tím" style="background-color:#8B658B"></a></li>
                <li><a  href="#" onclick="filterSanpham('FFFF00')" title="Màu vàng" style="background-color:#FFFF00"></a></li>
                <li><a  href="#" onclick="filterSanpham('E0FFFF')" title="Màu xanh da trời" style="background-color:#E0FFFF"></a></li>
                <li><a  href="#" onclick="filterSanpham('0000FF')" title="Màu xanh 1" style="background-color:#0000FF"></a></li>
                <li><a  href="#" onclick="filterSanpham('00C5CD')" title="Màu xanh 2" style="background-color:#00C5CD"></a></li>
                <li><a  href="#" onclick="filterSanpham('770000')" title="Đỏ đô" style="background-color:#770000"></a></li>
                <li><a  href="#" onclick="filterSanpham('F00000')" title="Đỏ" style="background-color:#F00000"></a></li>
                <li><a  href="#" onclick="filterSanpham('FFFFFF')" title="Trắng" style="background-color:#FFFFFF"></a></li>
                <li><a  href="#" onclick="filterSanpham('000000')" title="Đen" style="background-color:#000000"></a></li>
            </ul>
            <input type="hidden" value="" id="mau">
        </form>
    </div>

</div> <div class="line-heght line-heght-last"><span><img src="public/default/images/icon-line.png"></span></div>
<!--end left-->
<link rel="stylesheet" type="text/css" href="public/default/jquery-ui/jquery-ui.css" />
<script type="text/javascript" src="public/default/jquery-ui/jquery-ui.min.js"></script>
<link type="text/css" rel="stylesheet" href="public/default/css/dist/demo.css" />
<link type="text/css" rel="stylesheet" href="public/default/css/dist/css/jquery.mmenu.css" />
<link type="text/css" rel="stylesheet" href="public/default/css/dist/css/addons/jquery.mmenu.dragopen.css" />
<script type="text/javascript" src="public/default/css/dist/js/jquery.mmenu.min.js"></script>
<script type="text/javascript" src="public/default/css/dist/js/addons/jquery.mmenu.dragopen.min.js"></script>
<script type="text/javascript" src="public/default/css/dist/js/addons/jquery.mmenu.fixedelements.min.js"></script>
<script type="text/javascript">
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
<script src="public/default/js/bootstrap.min.js"></script>
<script type="text/javascript" src="public/default/js/jquery.smartmenus.js"></script>
<script type="text/javascript" src="public/default/js/addons/bootstrap/jquery.smartmenus.bootstrap.js"></script>
<script src="public/default/js/main_v1.js"></script>