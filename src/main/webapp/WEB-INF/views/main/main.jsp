<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>

<head>
	<title>iPastel</title>
	<meta charset="UTF-8">
	<jsp:include page="/WEB-INF/views/include/common.jsp"></jsp:include>
</head>

<body>
	<div class="container-xxl">
		<div class="row">
			<nav id="aad" class="col">
				<jsp:include page="${contextPath}/include/sidebar.jsp"></jsp:include>
			</nav>
			<main id="bbd" class="col-9">
				컨텐츠
			</main>
		</div>
	</div>
</body>

</html>