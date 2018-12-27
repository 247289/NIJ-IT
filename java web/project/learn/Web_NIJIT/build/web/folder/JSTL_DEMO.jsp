<%-- 
    Document   : JSTL_DEMO
    Created on : Oct 12, 2018, 7:09:17 PM
    Author     : VLIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP With JSTL</title>
    </head>
    <body>
        <h1>Learn JSTL</h1>
        <c:set var="tony" value="demo" scope="page" />
        <c:set var = "yourtest" value="${2000*2}" scope="session" />
        Using EL get tony.value: ${pageScope.tony}
        <c:if test="${ yourtest > 2000}">
            Giá trị biến tony là: <c:out value="${pageScope.tony}"/>
        </c:if>
        <br/>
        <c:choose>
            <c:when test="${param.txtUsers == 'Loc'}"> Lộc Đang ăn Bánh cuốn </c:when>
            <c:otherwise> This's false!</c:otherwise>
        </c:choose>
    </body>
</html>
