<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <c:if test="${pageContext.request.requestURI == 'WEB-INF/views/admin/login.jsp'}">
    	<c:set var="loginPageYN" value="Y"/>
    </c:if>
    
    <script type="text/javascript">
	    <c:if test="${(empty user or user.user_role ne 'ROLE_ADMIN') and loginPageYN ne 'Y'}">
	    location.href="/admin/login.do";
	    </c:if>    
    </script>
    
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>${pageTitle}</title>
	
	<!-- Custom fonts for this template-->
    <link href="${adminPath}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${adminPath}/css/sb-admin-2.min.css" rel="stylesheet">
    
    <!-- Custom styles for this page -->
    <link href="${adminPath}/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>