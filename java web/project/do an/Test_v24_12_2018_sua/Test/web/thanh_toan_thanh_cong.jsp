<%-- 
    Document   : thanh_toan_thanh_công
    Created on : 22-12-2018, 12:14:02
    Author     : daomi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="public/default/css/bootstrap.css">
        <style>
            body{
                text-align: center;
                margin-top: 200px;     
            }
            .mua_hang{
                width: 100%;
                display: inline-block;
                margin-left:20px;
            }

            .mua_hang .btn:last-child {
                text-align: center;
                width: 280px;
                background-color: #dedede;
                color: #262626;
            }
            .mua_hang .btn:last-child:hover {
                background-color: #ca0000;
                color: #fff;
            }
            p{display:block; color:#5f5f5f; font-size:18px; font-style:italic;text-align: center}
            p span{font-family:Roboto-BoldCondensed; font-size: 18px;display: block; }
            </style>
        </head>
        <body>
            <div class="mua_hang">
            <div class="finish">
                <div class="col-md-12 col-xs-12 footer">
                    <img style="text-align: center;margin-bottom: 20px" src="public/default/img/antoan1.png"> <br>
                    <p>Cám ơn bạn đã sử dụng dịch vụ của  <b>Phái Mạnh Shop !</b></p>
                </div>
                <a class="btn btn-danger" href="default.jsp">Tiếp tục mua hàng</a>
            </div></div>
    </body>
</html>
