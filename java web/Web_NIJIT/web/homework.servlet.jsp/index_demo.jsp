<%-- 
    Document   : index
    Created on : Oct 2, 2018, 6:29:54 PM
    Author     : VLIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function kiemtradulieu() {
                var hoten = document.all.txtname.value;               
                if(hoten == '') {
                    alert("Bạn cần nhập họ tên !");
                    document.all.txtname.focus();
                    return;
                }
                
                var tuoi = document.all.txtage.value;               
                if(tuoi == '') {
                    alert("Bạn cần nhập tuổi !");
                    document.all.txtage.focus();
                    return;
                }
                document.forms['form1'].action = 'DisplayServlet';
                document.forms['form1'].submit();
            }
        </script>
    </head>
    <body>
        <h1>Form đăng ký</h1>
        <form action="DisplayServlet" name="form1">
            <table border="0">
                <tr>
                    <td>Họ tên:</td>
                    <td><input type="text" name="txtname" size="40" /></td>
                </tr>
                <tr>
                    <td>Tuổi:</td>
                    <td><input type="text" name="txtage" size="40" /></td>
                </tr>
                <tr>
                    <td>Loại thẻ:</td>
                    <td>
                        <select name="sltype">
                            <option value="vip">VIP</option>
                            <option value="economic">Economic</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="button" value="Đăng ký" onclick="kiemtradulieu()" />
                        <input type="reset" value="Nhập lại" />
                    </td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
