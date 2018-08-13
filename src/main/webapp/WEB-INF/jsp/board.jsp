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
<title>留言板  —（最怕一生碌碌无为,还感叹平凡可贵）</title>
<meta charset="utf-8">
<jsp:include page="./common/header.jsp"></jsp:include>
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
				<jsp:include page="./common/QQ.jsp"></jsp:include>
			</div>
		</div>
	</header>

	<!--导航条-->
	<nav class="breadcrumb">
		<div class="container">
			<i class="Hui-iconfont">&#xe67f;</i> <a href="index"
				class="c-primary">首页</a> <span class="c-gray en">&gt;</span> <span
				class="c-gray">留言板</span>
		</div>
	</nav>

	<section class="container">
		<div class="col-xs-12 col-md-10 col-md-offset-1 mt-20">
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

			<div class="line"></div>

			<ul class="commentList mt-50">

				<li class="item cl"><a href="#"><i
						class="avatar size-L radius"><img alt=""
							src="http://q.qlogo.cn/qqapp/101388738/1CF8425D24660DB8C3EBB76C03D95F35/100"></i></a>
					<div class="comment-main">
						<header class="comment-header">
							<div class="comment-meta">
								<a class="comment-author" href="#">老王</a>
								<time title="2014年8月31日 下午3:20" datetime="2014-08-31T03:54:20"
									class="f-r">2014-8-31 15:20</time>
							</div>
						</header>
						<div class="comment-body">
							你是猴子派来的救兵吗？

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

							<button class="hf f-r btn btn-default size-S mt-10" name="2">回复</button>

						</div>
					</div></li>
				<li class="item cl"><a href="#"><i
						class="avatar size-L radius"><img alt=""
							src="http://qzapp.qlogo.cn/qzapp/101388738/1CF8425D24660DB8C3EBB76C03D95F35/100"></i></a>
					<div class="comment-main">
						<header class="comment-header">
							<div class="comment-meta">
								<a class="comment-author" href="#">老王</a>
								<time title="2014年8月31日 下午3:20" datetime="2014-08-31T03:54:20"
									class="f-r">2014-8-31 15:20</time>
							</div>
						</header>
						<div class="comment-body">
							你是猴子派来的救兵吗？

							<button class="hf f-r btn btn-default size-S mt-10" name="3">回复</button>

						</div>
					</div></li>

			</ul>
			<!--用于回复-->
			<div class="comment hidden mt-20">
				<div id="err2" class="Huialert Huialert-danger hidden radius">成功状态提示</div>
				<textarea class="textarea" style="height: 100px;"> </textarea>
				<button onclick="hf(this);" type="button"
					class="btn btn-primary radius mt-10">回复</button>
				<a class="cancelReply f-r mt-10">取消回复</a>
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
			wangEditor.config.printLog = false;
			var editor1 = new wangEditor('textarea1');
			editor1.config.menus = [ 'insertcode', 'quote', 'bold', '|', 'img',
					'emotion', '|', 'undo', 'fullscreen' ];
			editor1.config.emotions = {
				'default' : {
					title : '表情',
					data : 'plugin/wangEditor/emotions1.data'
				},
				'default2' : {
					title : '心情',
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
