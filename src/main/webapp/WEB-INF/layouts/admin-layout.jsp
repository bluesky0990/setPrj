<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ax" uri="http://axisj.com/axu4j" %>
<%
	if(request.getSession().getAttribute("USER_INFO") != null && request.getSession().getAttribute("USER_ROLE").equals("ROLE_ADMIN")) {
		
	}
%>
<html>
<head>
	<title>iPastel</title>
	<meta charset="UTF-8">
	<jsp:include page="/WEB-INF/views/include/common.jsp"></jsp:include>
</head>

<body>
	<a href="/admin/load.do">move</a>
	<div class="container-xxl h-100">
		<div class="row h-100">
			<nav id="aad" class="col h-100 p-0 m-0">
				<jsp:include page="${contextPath}/include/sidebar.jsp"></jsp:include>
			</nav>
			<main id="bbd" class="col-9 p-0 m-0">
				<div class="bg-dark">
					ssss
				</div>
			</main>
		</div>
	</div>
</body>
</html>

<script type="text/javascript">
	$(function() {
		
	});
</script>
