<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ax" uri="http://axisj.com/axu4j" %>
<%
	request.setAttribute("bodyId", "page-top");
	request.setAttribute("bodyClass", "");
%>

<ax:layout name="admin-layout.jsp">
	<ax:div name="header">
		<title>iPastel :: 관리자페이지</title>
	</ax:div>
	<ax:div name="contents">
		<div id="wrapper">
			<!-- SideBar -->
			<jsp:include page="./include/adminSidebar.jsp"></jsp:include>
			<!-- // SideBar -->
			
			<div id="content-wrapper" class="d-flex flex-column">
				<div id="content">
					<!-- TopBar -->
					<jsp:include page="./include/adminTopBar.jsp"></jsp:include>
					<!-- // TopBar -->
				</div>
			</div>
		</div>
	</ax:div>
	<ax:div name="scripts">
		<script type="text/javascript">
			
		</script>
	</ax:div>
</ax:layout>
