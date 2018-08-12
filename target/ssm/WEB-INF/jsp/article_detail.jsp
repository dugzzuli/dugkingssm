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
<title>学无止尽 — 一个站在java开发之路上的草根程序员个人博客网站</title>
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
<link rel="stylesheet" type="text/css"
	href="plugin/wangEditor/css/wangEditor.min.css">
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

	<!--导航条-->
	<nav class="breadcrumb">
		<div class="container">
			<i class="Hui-iconfont">&#xe67f;</i> <a href="index"
				class="c-primary">首页</a> <span class="c-gray en">&gt;</span> <span
				class="c-gray">文章</span> <span class="c-gray en">&gt;</span> <span
				class="c-gray">个人博客应该选择什么样的域名和域名后缀</span>
		</div>
	</nav>

	<section class="container pt-20">

		<div class="row w_main_row">


			<div class="col-lg-9 col-md-9 w_main_left">
				<div class="panel panel-default  mb-20">
					<div class="panel-body pt-10 pb-10">
						<h2 class="c_titile">我的个人博客之——阿里云空间选择</h2>
						<p class="box_c">
							<span class="d_time">发布时间：2017-02-05</span><span>编辑：<a
								href="mailto:wfyv@qq.com">wilco</a></span><span>阅读（88646）</span>
						</p>
						<ul class="infos">
							<p>之前服务器放在电信机房，
								联通用户访问速度很不稳定，经常出现访问速度慢的问题，换到阿里云解决了之前的问题。很多人都问我的博客选得什么空间，一年的费用得多少钱，今天我列个表出来，供大家参考。</p>
							<p>
								&nbsp;<img src="temp/at1.png" alt="个人博客阿里云空间选择" width="700"
									height="886">
							</p>
							<p>
								对于访问量不大，小型网站带宽可以选择1M的，每个月<span class="cny"
									style="margin: 0px 1px; padding: 0px; border: 0px; font-family: Arial; line-height: 20px; font-size: 20px; vertical-align: baseline; color: rgb(255, 102, 0); white-space: nowrap;">¥</span><span
									class="money"
									style="margin: 0px; padding: 0px; border: 0px; font-family: 微软雅黑, 'Microsoft Yahei', 'Hiragino Sans GB', tahoma, arial, 宋体; line-height: 20px; font-size: 20px; vertical-align: baseline; color: rgb(255, 102, 0); white-space: nowrap;">56.80</span>一年也就568块钱，每天投入也就不到2块钱。
							</p>
							<p>
								<img src="temp/at2.png" alt="个人博客阿里云空间选择">
							</p>
							<p>
								<strong>1、为什么选Linux？</strong>
							</p>
							<p>程序用PHP，速度快，配置低（windows必选1G的内存Linux选512MB能同样达到要求）。Linux的系统安全性非常高。Linux服务器的维护与扩展到性价比和性能都高于Windows。</p>
							<p>1) 最流行的服务器端操作系统，强大的安全性和稳定性</p>
							<p>2) 免费且开源，轻松建立和编译源代码</p>
							<p>3) 通过SSH方式远程访问您的云服务器</p>
							<p>4)
								一般用于高性能web等服务器应用，支持常见的PHP/Python等编程语言，支持MySQL等数据库（需自行安装)</p>
							<p>
								<strong>2、操作系统为什么选CentOS 安全加固版（推荐）？</strong>
							</p>
							<p>在原
								CentOS镜像的基础上，系统进一步安全加固，安装了阿里云独有的入侵防御系统，系统中会出现aegis进程，该系统增加了实时后门，Webshell检测，更加智能的暴力破解防御和多种入侵行为监控，让服务器更加安全可靠。</p>
							<p>
								<a href="http://www.aliyun.com/product/ecs" target="_blank"><strong><span
										style="color: rgb(0, 0, 255);">前往阿里云官网购买&gt;&gt;</span></strong></a>
							</p>
							<p>&nbsp;</p>
							<p align="center" class="pageLink"></p>

						</ul>

						<div class="keybq">
							<p>
								<span>关键字</span>：<a class="label label-default">个人博客</a><a
									class="label label-default">阿里云</a><a
									class="label label-default">空间</a>
							</p>
						</div>



						<div class="nextinfo">
							<p class="last">
								上一篇：<a href="#">免费收录网站搜索引擎登录口大全</a>
							</p>
							<p class="next">
								下一篇：<a href="#">javascript显示年月日时间代码</a>
							</p>
						</div>

					</div>
				</div>

				<div class="panel panel-default  mb-20">
					<div class="tab-category">
						<a href=""><strong>评论区</strong></a>
					</div>
					<div class="panel-body">
						<div class="panel-body" style="margin: 0 3%;">
							<div class="mb-20">
								<ul class="commentList">
									<li class="item cl"><a href="#"><i
											class="avatar size-L radius"><img alt=""
												src="http://qzapp.qlogo.cn/qzapp/101388738/1CF8425D24660DB8C3EBB76C03D95F35/100"></i></a>
										<div class="comment-main">
											<header class="comment-header">
												<div class="comment-meta">
													<a class="comment-author" href="#">老王</a>
													<time title="2014年8月31日 下午3:20"
														datetime="2014-08-31T03:54:20" class="f-r">2014-8-31
														15:20</time>
												</div>
											</header>
											<div class="comment-body">
												<p>是的</p>
											</div>
										</div></li>
									<li class="item cl"><a href="#"><i
											class="avatar size-L radius"><img alt=""
												src="http://qzapp.qlogo.cn/qzapp/101388738/696C8A17B3383B88804BA92ECBAA5D81/100"></i></a>
										<div class="comment-main">
											<header class="comment-header">
												<div class="comment-meta">
													<a class="comment-author" href="#">老王</a>
													<time title="2014年8月31日 下午3:20"
														datetime="2014-08-31T03:54:20" class="f-r">2014-8-31
														15:20</time>
												</div>
											</header>
											<div class="comment-body">
												<p>+1</p>
											</div>
										</div></li>

								</ul>

							</div>
							<div class="line"></div>
							<!--用于评论-->
							<div class="mt-20" id="ct">
								<div id="err" class="Huialert Huialert-danger hidden radius">成功状态提示</div>
								<textarea id="textarea1" name="comment" style="height: 200px;"
									placeholder="看完不留一发？"> </textarea>
								<div class="text-r mt-10">
									<button onclick="getPlainTxt()" class="btn btn-primary radius">
										发表评论</button>
								</div>
							</div>
							<!--用于回复-->
							<div class="comment hidden mt-20">
								<div id="err2" class="Huialert Huialert-danger hidden radius">成功状态提示</div>
								<textarea class="textarea" style="height: 100px;"> </textarea>
								<button onclick="hf(this);" type="button"
									class="btn btn-primary radius mt-10">回复</button>
								<a class="cancelReply f-r mt-10">取消回复</a>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3">
				<!--热门推荐-->
				<div class="bg-fff box-shadow radius mb-20">
					<div class="tab-category">
						<a href=""><strong>热门推荐</strong></a>
					</div>
					<div class="tab-category-item">
						<ul class="index_recd">
							<li><a href="#">阻止a标签href默认跳转事件</a>
								<p class="hits">
									<i class="Hui-iconfont" title="点击量">&#xe622;</i> 276
								</p></li>
							<li><a href="#">PHP面试题汇总</a>
								<p class="hits">
									<i class="Hui-iconfont" title="点击量">&#xe622;</i> 276
								</p></li>
							<li><a href="#">阻止a标签href默认跳转事件</a>
								<p class="hits">
									<i class="Hui-iconfont" title="点击量">&#xe622;</i> 276
								</p></li>
							<li><a href="#">阻止a标签href默认跳转事件</a>
								<p class="hits">
									<i class="Hui-iconfont" title="点击量">&#xe622;</i> 276
								</p></li>
							<li><a href="#">PHP面试题汇总</a>
								<p class="hits">
									<i class="Hui-iconfont" title="点击量">&#xe622;</i> 276
								</p></li>
						</ul>
					</div>
				</div>

				<!--图片-->
				<div class="bg-fff box-shadow radius mb-20">
					<div class="tab-category">
						<a href=""><strong>扫我关注</strong></a>
					</div>
					<div class="tab-category-item">
						<img data-original="temp/gg.jpg" class="img-responsive lazyload"
							alt="响应式图片">
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
	<script type="text/javascript"
		src="plugin/wangEditor/js/wangEditor.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("img.lazyload").lazyload({
				failurelimit : 3
			});

			wangEditor.config.printLog = false;
			var editor1 = new wangEditor('textarea1');
			editor1.config.menus = [ 'insertcode', 'quote', 'bold', '|', 'img',
					'emotion', '|', 'undo', 'fullscreen' ];
			editor1.config.emotions = {
				'default' : {
					title : '老王表情',
					data : 'plugin/wangEditor/emotions1.data'
				},
				'default2' : {
					title : '老王心情',
					data : 'plugin/wangEditor/emotions3.data'
				},
				'default3' : {
					title : '顶一顶',
					data : 'plugin/wangEditor/emotions2.data'
				}
			};
			editor1.create();

			//show reply
			$(".hf").click(
					function() {
						pId = $(this).attr("name");
						$(this).parents(".commentList").find(".cancelReply")
								.trigger("click");
						$(this).parent(".comment-body").append(
								$(".comment").clone(true));
						$(this).parent(".comment-body").find(".comment")
								.removeClass("hidden");
						$(this).hide();
					});
			//cancel reply
			$(".cancelReply").on('click', function() {
				$(this).parents(".comment-body").find(".hf").show();
				$(this).parents(".comment-body").find(".comment").remove();
			});
		});
	</script>
</body>
</html>
