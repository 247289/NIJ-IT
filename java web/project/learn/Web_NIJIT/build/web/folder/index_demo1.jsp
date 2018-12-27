<%-- 
    Document   : index
    Created on : Oct 2, 2018, 8:57:44 PM
    Author     : VLIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page 2</title>
    </head>
    <body>
        <h1>Thông tin đăng ký</h1><small><small style="color: red;">(*) Sử dụng JS để validate dữ liệu</small></small>
        <form action="ValidateJS2Servlet" name="frmRegister">
            <table>
                <tr>
                    <td>User name </td>
                    <td><input type="text" name="txtusername" placeholder="What you name?"/></td>
                </tr>
                <tr>
                    <td>Password </td>
                    <td><input type="text" name="txtpassword" placeholder="********"/></td>
                </tr>
                <tr>
                    <td>Confirm password </td>
                    <td><input type="text" name="txtconfirmpass" placeholder="********"/></td>
                </tr>
                <tr>
                    <td>Birth day </td>
                    <td>
                        <select>
                            <option>1</option>
                            <option>2</option>
                            <option>...</option>
                        </select> /
                        <select>
                            <option>1</option>
                            <option>2</option>
                            <option>...</option>
                        </select> /
                        <select>
                            <option>1997</option>
                            <option>2000</option>
                            <option>...</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>email </td>
                    <td><input type="text" name="email" placeholder="@gmail.com"/></td>
                </tr>
                <tr>
                    <td>Gender </td>
                    <td>
                        <input type="checkbox" name="checkgender" checked="true"/><label>Nam</label>
                        <input type="checkbox" name="checkgender" /><label>Nữ</label>
                    </td>
                </tr>
                <tr>
                    <td>Address </td>
                    <td>
                        <input type="text" name="address" value=""/>
                    </td>
                </tr>
                <tr>
                    <td>Contact </td>
                    <td>
                        <input type="text" name="contact" value="" placeholder=""/>
                    </td>
                </tr>
                <tr><td></td></tr>
                <tr><td></td></tr>
                <tr>
                    <td colspan="2" style="text-align: center;"><input type="button" value="Register" onclick="checkRegister()" /></td>
                </tr>
            </table>
        </form>
        <script>
            function checkRegister(){
                var ht = document.all.txtusername.value;
                if (ht === '') {
                    alert("Bạn chưa nhập user name!");
                    document.all.txtusername.focus();
                }
                var pw = document.all.txtpassword.value;
                var cpw = document.all.txtconfirmpass.value;
                if (pw === '') {
                    alert("Bạn chưa nhập password!");
                    document.all.txtpassword.focus();
                }else if(cpw === ''){alert("Bạn cần nhập lại password!"); document.all.txtconfirmpass.focus();}
                else if(pw !== cpw){
                    alert("Password bạn nhập không giống nhau!");
                    document.all.txtpassword.focus();
                }
                //set action
                document.forms['frmRegister'].action = "ValidateJS2Servlet";
                document.forms['frmRegister'].submit();
            }
        </script>
    </body>
</html>
