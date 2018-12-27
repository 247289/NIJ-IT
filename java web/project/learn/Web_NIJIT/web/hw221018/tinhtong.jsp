<%-- 
    Document   : tinhtong
    Created on : Oct 23, 2018, 8:35:13 PM
    Author     : VLIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tính Tổng</title>
        <style>
            #left{
                text-align: left;
            }
        </style>
        <script type="text/javascript">
            function factorialize(num) {
                if (num === 0) { return 1; }
                return num * factorialize(num-1);
            }
            
            function sum(num){
                var s= 0;
                for(var i = 0; i <= num ; i++) s += i;
                return s;
            }
            
            function Tinh(){
                var num = document.getElementById("n").value;
                document.getElementById("sum").innerHTML = "= " + sum(num);
                document.getElementById("fact").innerHTML = "= " + factorialize(num);
            }
        </script>
    </head>
    <body>
        <h1>Mời bạn nhập vào n</h1>
        <table name="tinhtong" border="0px" >
            <tr >
                <td id="left">n </td>
                <td><input type="text" id="n" placeholder="= ?"/></td>
            </tr>
            <tr >
                <td id="left">S = 1+ 2 + 3 + ... + n </td>
                <td><label id="sum"/>= sum(n)</td>
            </tr>
            <tr >
                <td id="left">S = n!  </td>
                <td><label id="fact"/>= fact(n)</td>
            </tr>
            <tr align="center">
                <td colspan="2"><input type="submit" name="submit" value="Tính" onclick="Tinh()"/></td>
            </tr>
        </table>
    </body>
</html>
