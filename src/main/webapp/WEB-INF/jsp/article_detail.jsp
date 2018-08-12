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
<title>${model.newsTitle } —（最怕一生碌碌无为,还感叹平凡可贵）</title>
<meta charset="utf-8">
<base href="<%=basePath%>">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="keywords" content="${model.seoDesc }">
<meta name="description" content="${model.seoContent }">
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
				<a class="navbar-logo hidden-xs" href="/"> <img
					class="logo" src="img/logo.png" alt="DugKing of 博客" />
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
				class="c-gray">${model.newsTitle }</span>
		</div>
	</nav>

	<section class="container pt-20">

		<div class="row w_main_row">


			<div class="col-lg-9 col-md-9 w_main_left">
				<div class="panel panel-default  mb-20">
					<div class="panel-body pt-10 pb-10">
						<h2 class="c_titile">${model.newsTitle }</h2>
						<p class="box_c">
							<span class="d_time">发布时间：${model.creatdate }</span><span>编辑：<a
								href="bingwei2642@qq.com">${model.author }</a></span><span>阅读（${model.hits }）</span>
						</p>
						<ul class="infos">
							${model.content }

						</ul>

						<div class="keybq">
							<p>
								<span>关键字</span>：
								<a class="label label-default">${model.seoDesc }</a>
							</p>
						</div>



<!-- 						<div class="nextinfo"> -->
<!-- 							<p class="last"> -->
<!-- 								上一篇：<a href="#">免费收录网站搜索引擎登录口大全</a> -->
<!-- 							</p> -->
<!-- 							<p class="next"> -->
<!-- 								下一篇：<a href="#">javascript显示年月日时间代码</a> -->
<!-- 							</p> -->
<!-- 						</div> -->

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
							<c:forEach var="model" items="${listHot}">
							<li><a href="article_detail/${model.id}">${model.newsTitle }</a>
								<p class="hits">
									<i class="Hui-iconfont" title="点击量">&#xe622;</i> ${model.hits }
								</p></li>
						</c:forEach>
						</ul>
					</div>
				</div>

				<!--图片-->
				<div class="bg-fff box-shadow radius mb-20">
					<div class="tab-category">
						<a href=""><strong>扫我关注</strong></a>
					</div>
					<div class="tab-category-item">
						<img  src="temp/wx.png" class="img-responsive"
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
