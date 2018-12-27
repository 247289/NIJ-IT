<%-- 
    Document   : usingELFunction
    Created on : Oct 16, 2018, 6:41:53 PM
    Author     : VLIT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/demoFunction" prefix="elfc" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP EL Function</title>
    </head>
    <body>
        <h1>Tính tổng 2 số a =5 and b=4</h1>
        <c:set var="num1" value="5" />
        <c:set var="num2" value="4" />
        Using El not Function: sum(${num1}, ${num2}) = ${4+5}<br/>
        Using El Function    : sum(${num1}, ${num2}) = ${elfc: sum(num1, num2)}<br/>
        
    </body>
</html>
