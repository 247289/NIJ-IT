<%-- 
    Document   : 2Enquỉy
    Created on : Oct 12, 2018, 6:13:30 PM
    Author     : VLIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Form2 Enquiry</title>
        <script>
            function CheckSubmit() {
                var name = document.getElementsByName("txtName");
                var add = document.getElementsByName("txtAddress");
                var phone = document.getElementsByName("txtPhone");
                
                if (name === '' || add === '' || phone === '') {
                    alert("Bạn cần nhập đầy đủ thông tin!");
                }else {
                    document.forms['frmEnquiry'].action = "DisplayServlet";
                    document.forms['frmEnquiry'].submit();
                }
            }
        </script>
    </head>
    <body>
        <h1>APTECH Enquiry Form</h1>
        <form name="frmEnquiry" action="DisplayServlet">
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="txtName"/></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="txtAddress"/></td>
                </tr>
                <tr>
                    <td>Phone for Contact</td>
                    <td><input type="text" name="txtPhone"/></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="txtEmail"/></td>
                </tr><tr>
                    <td>Occupation</td>
                    <td><input type="text" name="txtOccupation"/></td>
                </tr>
                <tr>
                    <td>Date of Birth</td>
                    <td>
                        Month <select name="month">
                            <option id="0">1</option>
                            <option id="1">2</option>
                            <option>...</option>
                        </select>
                        Day <select name="day">
                            <option id="0">1</option>
                            <option id="1">2</option>
                            <option>...</option>
                        </select>
                        Year <select name="year">
                            <option id="0">1997</option>
                            <option id="1">2000</option>
                            <option>...</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Enrolling Course</td>
                    <td>
                        <select name="Enrolling_Course">
                            <option id="0">NIJ-IT</option>
                            <option id="1">FPT</option>
                            <option>...</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Course Timing</td>
                    <td>
                        <select name="Course_Timing">
                            <option id="0">9h30AM - 12h30PM</option>
                            <option id="1">12h30PM - 15h30PM</option>
                            <option>...</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Course Date</td>
                    <td>
                        <select name="Course_Date">
                            <option id="0">2,4,6</option>
                            <option id="1">3,5</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Payment Method</td>
                    <td>
                        <input type="radio" name="radio" value="Full cash" checked="true"/>Full cash
                        <input type="radio" name="radio" value="Installment" />Installment
                    </td>
                </tr>
                <tr>
                    <td>By how you know about us</td>
                    <td>
                        <input type="checkbox" name="checkbox" value="Newspaper" />Newspaper
                        <input type="checkbox" name="checkbox" value="Internet" />Internet
                        <input type="checkbox" name="checkbox" value="Friends" />Friends
                        <input type="checkbox" name="checkbox" value="TV" />TV
                        <input type="checkbox" name="checkbox" value="Others" />Others
                    </td>
                </tr>
                <tr>
                    <td>Your Opinion</td>
                    <td>
                        <textarea cols="40" rows="1"></textarea>
                    </td>
                </tr>
                <tr>
                    <td></td><td></td><td></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <input type="button" value="submit" onclick="CheckSubmit()"/>
                        <input type="reset" value="reset"/>
                    </td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
