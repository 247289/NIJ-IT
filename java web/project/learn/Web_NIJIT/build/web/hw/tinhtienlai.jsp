<%-- 
    Document   : tinhtienlai
    Created on : Oct 23, 2018, 7:42:16 PM
    Author     : VLIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tính tiền lãi</title>
        
        <script type="text/javascript">
            function TinhTienLai() {
                var m = document.getElementById("m").value;
                var result = 0;
                
                if (m>0 && m<=10) {
                    result = m*5000;
                }else if (m>10 && m<=20) {
                    result = m*7000;
                }else if (m>20 && m<=50) {
                    result = m*9000 + 9000*0.02;
                }else if (m>50) {
                    result = m*10000 + 10000*0.04;
                }
                
                document.getElementById("result").innerHTML = "" + result;
            }
        </script>
    </head>
    <body>
        <caption id="caption" style="text-align: center">Tính tiền lãi bán hàng</caption>
        <table name="tinhtienlai">
            <tr>
                <td>m(0<= m <= 100)</td>
                <td><input type="text" id="m" value="" /></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td colspan=""><input type="submit" name="submit" value="Tính" onclick="TinhTienLai()"/></td>
                <td>
                    <label id="result"/>result
                </td>
            </tr>
            <tr>
                </td>
            </tr>
        </table>
    </body>
</html>
