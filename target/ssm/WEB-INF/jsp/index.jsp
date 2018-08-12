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
<title>老王个人博客 — 一个站在java开发之路上的草根程序员个人博客网站</title>

<base href="<%=basePath%>">

<meta charset="utf-8">
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
				<a class="navbar-logo hidden-xs" href="index"> <img
					class="logo" src="img/logo.png" alt="国王的博客" />
				</a> <a class="logo navbar-logo-m visible-xs" href="index">国王的博客</a>
				<a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs"
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

	<section class="container pt-20">
		<!--<div class="Huialert Huialert-info"><i class="Hui-iconfont">&#xe6a6;</i>成功状态提示</div>-->
		<!--left-->
		<div class="col-sm-9 col-md-9">
			<!--滚动图-->
			<div class="slider_main">
				<div class="slider">
					<div class="bd">
						<ul>
							<li><a href="#" target="_blank"><img
									src="img/temp/banner1.jpg"></a></li>
							<li><a href="#" target="_blank"><img
									src="img/temp/banner8.png"></a></li>
						</ul>
					</div>
					<ol class="hd cl dots">
						<li>1</li>
						<li>2</li>
					</ol>
					<a class="slider-arrow prev" href="javascript:void(0)"></a> <a
						class="slider-arrow next" href="javascript:void(0)"></a>
				</div>
			</div>

			<div class="mt-20 bg-fff box-shadow radius mb-5">
				<div class="tab-category">

					<c:forEach var="model" items="${listCategory}">
						<a href="article/${model.cateId}"><strong class="current">${model.cateName}</strong></a>
					</c:forEach>
				</div>
			</div>
			<div class="art_content">
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
									<a href="/article/4">${model.newsTitle }</a>
								</h4>
								<div class="date_hits">
									<span>${model.author }</span> <span>${model.creatdate }</span>
									<span><a href="article/${model.category }">建站</a></span>
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
						onclick="moreBlog();">点击加载更多</a> <a
						class="btn  radius btn-block hidden" href="javascript:;">加载中……</a>
				</div>
			</div>
		</div>

		<!--right-->
		<div class="col-sm-3 col-md-3">

			<jsp:include page="./common/copyright.jsp" />


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
					</ul>
				</div>
			</div>

			<%-- 			<jsp:include page="./common/right.jsp" /> --%>




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
	<script type="text/javascript"
		src="plugin/jquery.SuperSlide/2.1.1/jquery.SuperSlide.min.js"></script>

	<script>
		$(function() {
			//幻灯片
			jQuery(".slider_main .slider").slide({
				mainCell : ".bd ul",
				titCell : ".hd li",
				trigger : "mouseover",
				effect : "leftLoop",
				autoPlay : true,
				delayTime : 700,
				interTime : 2000,
				pnLoop : true,
				titOnClassName : "active"
			})
			//tips
			jQuery(".slideTxtBox").slide({
				titCell : ".hd ul",
				mainCell : ".bd ul",
				autoPage : true,
				effect : "top",
				autoPlay : true
			});
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
