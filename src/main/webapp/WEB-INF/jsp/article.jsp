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
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="keywords" content="个人博客,王风宇个人博客,个人博客系统,老王博客,王风宇">
<meta name="description" content="国王的博客系统，一个站在java开发之路上的草根程序员个人博客网站。">
<LINK rel="Bookmark" href="favicon.ico">
<LINK rel="Shortcut Icon" href="favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="/staticRes/js/html5shiv.js"></script>
<script type="text/javascript" src="/staticRes/js/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css"
	href="plugin/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="plugin/Hui-iconfont/1.0.8/iconfont.min.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="plugin/pifu/pifu.css" />
<!--[if lt IE 9]>
<link href="/staticRes/lib/h-ui/css/H-ui.ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
<script type="application/x-javascript">
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } function showSide(){$('.navbar-nav').toggle();}





</script>
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
				<nav class="navbar-nav navbar-userbar hidden-xs hidden-sm "
					style="top: 0;">
					<ul class="cl">
						<li class="userInfo dropDown dropDown_hover">
							<!--<a href="javascript:;" ><img class="avatar radius" src="img/40.jpg" alt="丶似浅 "></a>
                            <ul class="dropDown-menu menu radius box-shadow">
                                <li><a href="/app/loginOut">退出</a></li>
                            </ul>--> <a href="/app/qq"
							onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})"><img
								class="avatar size-S" src="img/qq.jpg" title="登入">登入</a>
						</li>
					</ul>
				</nav>
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
							href="article_detail/${model.id }" class="${model.pic }"> <img
								class="lazyload" data-original="${model.pic }"
								alt="${model.newsTitle }">
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
