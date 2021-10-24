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
		
		<!-- jsTree -->
		<link rel="stylesheet" href="/resources/jsTree/themes/default/style.min.css"/>
		<script src="/resources/jsTree/jstree.min.js"></script>
		<!-- // jsTree -->
	</ax:div>
	<ax:div name="contents">
		<div id="wrapper">
			<!-- SideBar -->
			<jsp:include page="/WEB-INF/views/admin/include/adminSidebar.jsp"></jsp:include>
			<!-- // SideBar -->
			
			<div id="content-wrapper" class="d-flex flex-column">
				<div id="content">
					<!-- TopBar -->
					<jsp:include page="/WEB-INF/views/admin/include/adminTopBar.jsp"></jsp:include>
					<!-- // TopBar -->
					
					
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-1 text-gray-800">매뉴 관리</h1>
                    <br/>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- First Column -->
                        <div class="col-lg-4">
                            <!-- Custom Text Color Utilities -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">매뉴목록</h6>
                                </div>
                                <div id="jsTree"></div>
                            </div>
                        </div>

                        <!-- Second Column -->
                        <div class="col-lg-8">

                            <!-- Background Gradient Utilities -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Custom Background Gradient Utilities
                                    </h6>
                                </div>
                                <div class="card-body">
                                    <div class="px-3 py-5 bg-gradient-primary text-white">.bg-gradient-primary</div>
                                    <div class="px-3 py-5 bg-gradient-secondary text-white">.bg-gradient-secondary</div>
                                    <div class="px-3 py-5 bg-gradient-success text-white">.bg-gradient-success</div>
                                    <div class="px-3 py-5 bg-gradient-info text-white">.bg-gradient-info</div>
                                    <div class="px-3 py-5 bg-gradient-warning text-white">.bg-gradient-warning</div>
                                    <div class="px-3 py-5 bg-gradient-danger text-white">.bg-gradient-danger</div>
                                    <div class="px-3 py-5 bg-gradient-light text-white">.bg-gradient-light</div>
                                    <div class="px-3 py-5 bg-gradient-dark text-white">.bg-gradient-dark</div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
				</div>
			</div>
		</div>
	</ax:div>
	<ax:div name="scripts">
		<script type="text/javascript">
			$(function() {
				var jsTree = $("#jsTree").jstree({
					core : {
						data : {
							url : "/admin/menu/menuList.json",
							data : function (data) {
								bbb = data;
								return {
									"id": data.menu_code,
									"parent": data.menu_up_code,
									"menuCode": data.menu_code
								};
							}
						}
					},
					types: {
						'default': {
							'icon': 'jstree-folder'
						}
					}
				});
				jsTree.jstree('get_selected', true);
				jsTree.on("select_node.jstree", function(event, data) {
					aaa = data;
					console.log("!: " + event.type);
					console.log("@: " + data.instance.get_node(data.selected).id);
					//console.log("#: " + data.result.obj.attr("menuCode"));
					console.log("$: " + data.node.id);
					$.ajax({
						type: "GET",
						url: "/admin/menu/menu.json",
						data: {"menu_code": 1},
						contentType: "JSON",
						cache: false,
						success: function(data) {
							
						}
					});
				})
			});
			
			var aaa;
			var bbb;
		</script>
	</ax:div>
</ax:layout>
