<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ax" uri="http://axisj.com/axu4j" %>
<%
	if(!request.getServletPath().equals("/login.jsp")) {
		if(request.getSession().getAttribute("ACCOUNT_INFO") != null && request.getSession().getAttribute("ACCOUNT_ROLE").equals("ROLE_ADMIN")) {
			//response.sendRedirect("/admin/login.do");
		}
	}
%>
<html>
<head>
	<c:set scope="request" var="contextPath" value="/WEB-INF/views"/>
	<c:set scope="request" var="cssPath" value="/resources/css"/>
	<c:set scope="request" var="jsPath" value="/resources/js"/>
	<c:set scope="request" var="adminPath" value="/resources/admin"/>
	
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1" />
    <meta name="apple-mobile-web-app-capable" content="yes">
	<jsp:include page="/WEB-INF/views/include/common.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/admin/include/adminCommon.jsp"></jsp:include>
	<ax:write divname="header"/>
</head>

<body id="${bodyId}" class="${bodyClass}">
	<ax:write divname="contents"/>
	<ax:write divname="scripts"/>
</body>
</html>
