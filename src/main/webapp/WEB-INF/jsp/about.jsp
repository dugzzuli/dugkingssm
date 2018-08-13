<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>${model.newsTitle}—（最怕一生碌碌无为,还感叹平凡可贵）</title>
<base href="<%=basePath%>">
<jsp:include page="./common/header.jsp"></jsp:include>
</head>
<body>
	<header class="navbar-wrapper">
		<div class="navbar navbar-fixed-top">
			<div class="container cl">
				<a class="navbar-logo hidden-xs" href="index"> <img class="logo"
					src="img/logo.png" alt="国王的博客" />
				</a> <a class="logo navbar-logo-m visible-xs" href="index">国王的博客</a> <a
					aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs"
					href="javascript:void(0);" onclick="showSide();">&#xe667;</a>
				<nav class="nav navbar-nav nav-collapse w_menu" role="navigation">
					<jsp:include page="./common/nav.jsp" />
				</nav>
				<jsp:include page="./common/QQ.jsp"></jsp:include>
			</div>
		</div>
	</header>

	<!--导航条-->
	<nav class="breadcrumb">
		<div class="container">
			<i class="Hui-iconfont">&#xe67f;</i> <a href="index"
				class="c-primary">首页</a> <span class="c-gray en">&gt;</span> <span
				class="c-gray">关于</span>
		</div>
	</nav>

	<section class="container">
		<div class="container-fluid">
			<div class="about">${model.content}</div>
	</section>
	<jsp:include page="./common/footer.jsp" />
	<script type="text/javascript" src="plugin/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="plugin/layer/3.0/layer.js"></script>
	<script type="text/javascript" src="plugin/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="plugin/pifu/pifu.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script>
		$(function() {
			$(window).on("scroll", backToTopFun);
			backToTopFun();
		});
	</script>
</body>
</html>
