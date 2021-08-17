<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set scope="request" var="contextPath" value="/WEB-INF/views"/>
<c:set scope="request" var="cssPath" value="/resources/css"/>
<c:set scope="request" var="jsPath" value="/resources/js"/>

<!-- JQuery 3.6.0 -->
<script type="text/javascript" src="${jsPath}/jquery-3.6.0.min.js"></script>
<!-- // JQuery 3.6.0 -->

<!-- Bootstrap 5 -->
<link href="${cssPath}/bootstrap5/bootstrap.min.css" rel="stylesheet" />
<link href="${cssPath}/bootstrap5/bootstrap.rtl.min.css" rel="stylesheet" />
<link href="${cssPath}/bootstrap5/bootstrap-grid.min.css" rel="stylesheet" />
<link href="${cssPath}/bootstrap5/bootstrap-reboot.min.css" rel="stylesheet" />
<link href="${cssPath}/bootstrap5/bootstrap-utilities.min.css" rel="stylesheet" />

<script src="${jsPath}/bootstrap5/bootstrap.min.js"></script>
<script src="${jsPath}/bootstrap5/bootstrap.esm.min.js"></script>
<script src="${jsPath}/bootstrap5/bootstrap.bundle.min.js"></script>
<!-- // Bootstrap 5 -->

<!-- CSS -->
<link href="${cssPath}/common/fonts.css" rel="stylesheet">
<link href="${cssPath}/common/common.css" rel="stylesheet">
<!-- // CSS -->