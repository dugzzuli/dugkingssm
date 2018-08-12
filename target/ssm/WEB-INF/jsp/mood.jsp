<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>碎言碎语 — 一个站在java开发之路上的草根程序员个人博客网站</title>
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
<link rel="stylesheet" type="text/css" href="css/timeline.css" />
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
				<a class="navbar-logo hidden-xs" href="/"> <img class="logo"
					src="img/logo.png" alt="国王的博客" />
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

	<!--导航条-->
	<nav class="breadcrumb">
		<div class="container">
			<i class="Hui-iconfont">&#xe67f;</i> <a href="index"
				class="c-primary">首页</a> <span class="c-gray en">&gt;</span> <span
				class="c-gray">碎言碎语</span>
		</div>
	</nav>

	<section class="container mt-20">
		<div class="container-fluid">
			<div class="timeline">

				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<img src="css/timeline/cd-icon-location.svg" alt="position">
					</div>
					<div class="cd-timeline-content">
						<h4>测试测试</h4>
						<p>国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。</p>
						<a href="http://www.wfyvv.com" class="f-r"><input
							class="btn btn-success size-S" type="button" value="更多"></a>
						<span class="cd-date">2017年1月01日</span>
					</div>
				</div>
				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<img src="css/timeline/cd-icon-location.svg" alt="position">
					</div>
					<div class="cd-timeline-content">
						<h4>测试测试</h4>
						<p>国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。</p>
						<a href="http://www.wfyvv.com" class="f-r"><input
							class="btn btn-success size-S" type="button" value="更多"></a>
						<span class="cd-date">2017年1月01日</span>
					</div>
				</div>
				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<img src="css/timeline/cd-icon-location.svg" alt="position">
					</div>
					<div class="cd-timeline-content">
						<h4>测试测试</h4>
						<p>国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。</p>
						<a href="http://www.wfyvv.com" class="f-r"><input
							class="btn btn-success size-S" type="button" value="更多"></a>
						<span class="cd-date">2017年1月01日</span>
					</div>
				</div>
				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<img src="css/timeline/cd-icon-location.svg" alt="position">
					</div>
					<div class="cd-timeline-content">
						<h4>测试测试</h4>
						<p>国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。</p>
						<a href="http://www.wfyvv.com" class="f-r"><input
							class="btn btn-success size-S" type="button" value="更多"></a>
						<span class="cd-date">2017年1月01日</span>
					</div>
				</div>
				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<img src="css/timeline/cd-icon-location.svg" alt="position">
					</div>
					<div class="cd-timeline-content">
						<h4>测试测试</h4>
						<p>国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。</p>
						<a href="http://www.wfyvv.com" class="f-r"><input
							class="btn btn-success size-S" type="button" value="更多"></a>
						<span class="cd-date">2017年1月01日</span>
					</div>
				</div>
				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<img src="css/timeline/cd-icon-location.svg" alt="position">
					</div>
					<div class="cd-timeline-content">
						<h4>测试测试</h4>
						<p>国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。</p>
						<a href="http://www.wfyvv.com" class="f-r"><input
							class="btn btn-success size-S" type="button" value="更多"></a>
						<span class="cd-date">2017年1月01日</span>
					</div>
				</div>
				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<img src="css/timeline/cd-icon-location.svg" alt="position">
					</div>
					<div class="cd-timeline-content">
						<h4>测试测试</h4>
						<p>国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。</p>
						<a href="http://www.wfyvv.com" class="f-r"><input
							class="btn btn-success size-S" type="button" value="更多"></a>
						<span class="cd-date">2017年1月01日</span>
					</div>
				</div>
				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<img src="css/timeline/cd-icon-location.svg" alt="position">
					</div>
					<div class="cd-timeline-content">
						<h4>测试测试</h4>
						<p>国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。</p>
						<a href="http://www.wfyvv.com" class="f-r"><input
							class="btn btn-success size-S" type="button" value="更多"></a>
						<span class="cd-date">2017年1月01日</span>
					</div>
				</div>
				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<img src="css/timeline/cd-icon-location.svg" alt="position">
					</div>
					<div class="cd-timeline-content">
						<h4>测试测试</h4>
						<p>国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。</p>
						<a href="http://www.wfyvv.com" class="f-r"><input
							class="btn btn-success size-S" type="button" value="更多"></a>
						<span class="cd-date">2017年1月01日</span>
					</div>
				</div>
				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<img src="css/timeline/cd-icon-location.svg" alt="position">
					</div>
					<div class="cd-timeline-content">
						<h4>测试测试</h4>
						<p>国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。</p>
						<a href="http://www.wfyvv.com" class="f-r"><input
							class="btn btn-success size-S" type="button" value="更多"></a>
						<span class="cd-date">2017年1月01日</span>
					</div>
				</div>
				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<img src="css/timeline/cd-icon-location.svg" alt="position">
					</div>
					<div class="cd-timeline-content">
						<h4>测试测试</h4>
						<p>国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。</p>
						<a href="http://www.wfyvv.com" class="f-r"><input
							class="btn btn-success size-S" type="button" value="更多"></a>
						<span class="cd-date">2017年1月01日</span>
					</div>
				</div>
				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<img src="css/timeline/cd-icon-location.svg" alt="position">
					</div>
					<div class="cd-timeline-content">
						<h4>测试测试</h4>
						<p>国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。国王的博客测试版本上线。。</p>
						<a href="http://www.wfyvv.com" class="f-r"><input
							class="btn btn-success size-S" type="button" value="更多"></a>
						<span class="cd-date">2017年1月01日</span>
					</div>
				</div>

			</div>
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
			//on scolling, show/animate timeline blocks when enter the viewport
			$(window)
					.on(
							'scroll',
							function() {
								$('.cd-timeline-block')
										.each(
												function() {
													if ($(this).offset().top <= $(
															window).scrollTop()
															+ $(window)
																	.height()
															* 0.75
															&& $(this)
																	.find(
																			'.cd-timeline-img')
																	.hasClass(
																			'is-hidden')) {
														$(this)
																.find(
																		'.cd-timeline-img, .cd-timeline-content')
																.removeClass(
																		'is-hidden')
																.addClass(
																		'bounce-in');
													}
													if ($(window).scrollTop()
															- $(this).offset().top > 0) {
														$(this)
																.find(
																		'.cd-timeline-img, .cd-timeline-content')
																.addClass(
																		'is-hidden')
																.removeClass(
																		'bounce-in');
													}

												});
								$('.cd-timeline-block')
										.each(
												function() {
													if ($(this).offset().top < $(
															window).scrollTop()
															+ $(window)
																	.height()
															* 0.75) {
														$(this)
																.find(
																		'.cd-timeline-img, .cd-timeline-content')
																.removeClass(
																		'is-hidden');
													}
												});
							});
		});
	</script>
</body>
</html>
