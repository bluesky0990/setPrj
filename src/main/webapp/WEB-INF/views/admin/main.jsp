<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<c:set var="pageTitle" value="iPastel :: admin"/>
	<c:set var="cssPath" value="/resources/css"/>
	<c:set var="jsPath" value="/resources/js"/>
	<c:set scope="request" var="adminPath" value="/resources/admin"/>
	<jsp:include page="./include/adminHead.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="./include/adminSidebar.jsp"></jsp:include>
</body>
</html>