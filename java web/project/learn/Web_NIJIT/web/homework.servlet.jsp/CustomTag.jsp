<%-- 
    Document   : CustomTag
    Created on : Oct 19, 2018, 8:25:52 PM
    Author     : VLIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/LowerCaseTag" prefix="customTag" %>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Hello World!</h1>
        <customTag:NewTagHandler>What is this?</customTag:NewTagHandler>
    

