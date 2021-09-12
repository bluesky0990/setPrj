<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
	<c:when test="${not empty user or user.user_role ne 'ROLE_ADMIN'}">
		<c:set var="url" value="/admin/login.do"/>
	</c:when>
	<c:otherwise>
		<c:set var="url" value="/admin/main.do"/>
	</c:otherwise>
</c:choose>
	
<script type="text/javascript">
	location.href="${url}";
</script>
