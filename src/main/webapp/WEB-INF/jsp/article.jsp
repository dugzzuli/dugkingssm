<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>${category}——（最怕一生碌碌无为,还感叹平凡可贵）</title>
<meta charset="utf-8">
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
			<i class="Hui-iconfont">&#xe67f;</i><a href="index" class="c-primary">首页</a>
			<span class="c-gray en">&gt;</span> <a href="article.html"
				class="c-primary">学无止尽</a> <span class="c-gray en">&gt;</span> <span
				class="c-gray"><i class="Hui-iconfont">&#xe64b;</i>
				${category}</span>
		</div>
	</nav>

	<section class="container">
		<!--left-->
		<div class="col-sm-9 col-md-9 mt-20">


			<!--article list-->
			<ul class="index_arc">
				<c:forEach var="model" items="${list}">
					<c:if test="${empty model.pic}">

						<li class="index_arc_item no_pic">
							<h4 class="title">
								<a href="article_detail/${model.id}">${model.newsTitle }</a>
							</h4>
							<div class="date_hits">
								<span>${model.author}</span> <span>${model.creatdate }</span> <span><a
									href="article/${model.category }">建站</a></span>
								<p class="hits">
									<i class="Hui-iconfont" title="点击量">&#xe6c1;</i> ${model.hits }°
								</p>
								<p class="commonts">
									<i class="Hui-iconfont" title="评论">&#xe622;</i> <span
										id="sourceId::105" class="cy_cmt_count">${model.hits }</span>
								</p>
							</div>
							<div class="desc">${model.summary}</div>
						</li>

					</c:if>

					<c:if test="${not empty model.pic}">
						<li class="index_arc_item"><a
							href="article_detail/${model.id }" class="pic"> <img
								class="lazyload" data-original="${model.pic }?ssm"
								alt="${model.newsTitle }" src="${model.pic }?ssm"
								style="display: inline-block;">
						</a>
							<h4 class="title">
								<a href="article_detail/${model.id }">${model.newsTitle }</a>
							</h4>
							<div class="date_hits">
								<span>${model.author }</span> <span>${model.creatdate }</span> <span><a
									href="article/${model.category }">建站</a></span>
								<p class="hits">
									<i class="Hui-iconfont" title="点击量"></i> ${model.hits }°
								</p>
								<p class="commonts">
									<i class="Hui-iconfont" title="评论"></i> <span
										class="cy_cmt_count">${model.hits }</span>
								</p>
							</div>
							<div class="desc">${model.summary}</div></li>
					</c:if>
				</c:forEach>

			</ul>
			<div class="text-c mb-20" id="moreBlog">
				<a class="btn  radius btn-block " href="javascript:;"
					onclick="moreBlog('${blogType.id}','${tag.name}');">点击加载更多</a> <a
					class="btn  radius btn-block hidden" href="javascript:;">加载中……</a>
			</div>
		</div>

		<!--right-->
		<div class="col-sm-3 col-md-3 mt-20">

			<!--导航-->
			<div class="panel panel-primary mb-20">
				<div class="panel-body">
					<c:forEach var="model" items="${categoryList}">
						<c:if test="${model.cateName==category}">
							<a class="btn btn-primary radius nav-btn"
								href="article/${model.cateId }">${model.cateName }</a>
						</c:if>
						<c:if test="${model.cateName!=category}">

							<a class="btn btn-primary-outline radius nav-btn"
								href="article/${model.cateId }">${model.cateName }</a>
						</c:if>



					</c:forEach>
				</div>
			</div>

			<!--热门推荐-->
			<div class="bg-fff box-shadow radius mb-20">
				<div class="tab-category">
					<a href=""><strong>热门推荐</strong></a>
				</div>
				<div class="tab-category-item">
					<ul class="index_recd">
						<c:forEach var="model" items="${listHot}">
							<li><a href="article_detail/${model.id}">${model.newsTitle }</a>
								<p class="hits">
									<i class="Hui-iconfont" title="点击量">&#xe622;</i> ${model.hits }
								</p></li>
						</c:forEach>
						<!--  -->
					</ul>
				</div>
			</div>

			<!--标签-->
			<!-- 			<div class="bg-fff box-shadow radius mb-20"> -->
			<!-- 				<div class="tab-category"> -->
			<!-- 					<a href=""><strong>标签云</strong></a> -->
			<!-- 				</div> -->
			<!-- 				<div class="tab-category-item"> -->
			<!-- 					<div class="tags"> -->
			<!-- 						<a href="http://www.h-ui.net/">H-ui前端框架</a> <a -->
			<!-- 							href="http://www.h-ui.net/websafecolors.shtml">Web安全色</a> <a -->
			<!-- 							href="http://www.h-ui.net/Hui-4.4-Unslider.shtml">jQuery轮播插件</a> -->
			<!-- 						<a href="http://idc.likejianzhan.com/vhost/korea_hosting.php">韩国云虚拟主机</a> -->
			<!-- 						<a href="http://www.h-ui.net/bug.shtml">IEbug</a> <a -->
			<!-- 							href="http://www.h-ui.net/site.shtml">IT网址导航</a> <a -->
			<!-- 							href="http://www.h-ui.net/icon/index.shtml">网站常用小图标</a> <a -->
			<!-- 							href="http://www.h-ui.net/tools/jsformat.shtml">web工具箱</a> <a -->
			<!-- 							href="http://www.h-ui.net/bg/index.shtml">网站常用背景素材</a> <a -->
			<!-- 							href="http://www.h-ui.net/yuedu/chm.shtml">H-ui阅读</a> <a -->
			<!-- 							href="http://www.h-ui.net/easydialog-v2.0/index.html">弹出层插件</a> <a -->
			<!-- 							href="http://www.h-ui.net/SuperSlide2.1/demo.html">SuperSlide插件</a> -->
			<!-- 						<a href="http://www.h-ui.net/TouchSlide1.1/demo.html">TouchSlide</a> -->
			<!-- 					</div> -->
			<!-- 				</div> -->
			<!-- 			</div> -->
		</div>

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
	<script>
		$(function() {
			//标签
			$(".tags a").each(function() {
				var x = 9;
				var y = 0;
				var rand = parseInt(Math.random() * (x - y + 1) + y);
				$(this).addClass("tags" + rand)
			});

			$("img.lazyload").lazyload({
				failurelimit : 3
			});
		});
	</script>
</body>
</html>
