<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--点击排行-->
			<div class="bg-fff box-shadow radius mb-20">
				<div class="tab-category">
					<a href=""><strong>点击排行</strong></a>
				</div>
				<div class="tab-category-item">
					<ul class="index_recd clickTop">
					<c:forEach var="model" items="${listHits}">
						<li><a href="#">${model.newsTitle }</a>
							<p class="hits">
								<i class="Hui-iconfont" title="点击量">&#xe6c1;</i> ${model.hits }°
							</p></li>
						</c:forEach>
					</ul>
				</div>
			</div>

			<!--标签-->
			<div class="bg-fff box-shadow radius mb-20">
				<div class="tab-category">
					<a href=""><strong>标签云</strong></a>
				</div>
				<div class="tab-category-item">
					<div class="tags">
						<a href="http://www.h-ui.net/">H-ui前端框架</a> <a
							href="http://www.h-ui.net/websafecolors.shtml">Web安全色</a> <a
							href="http://www.h-ui.net/Hui-4.4-Unslider.shtml">jQuery轮播插件</a>
						<a href="http://idc.likejianzhan.com/vhost/korea_hosting.php">韩国云虚拟主机</a>
						<a href="http://www.h-ui.net/bug.shtml">IEbug</a> <a
							href="http://www.h-ui.net/site.shtml">IT网址导航</a> <a
							href="http://www.h-ui.net/icon/index.shtml">网站常用小图标</a> <a
							href="http://www.h-ui.net/tools/jsformat.shtml">web工具箱</a> <a
							href="http://www.h-ui.net/bg/index.shtml">网站常用背景素材</a> <a
							href="http://www.h-ui.net/yuedu/chm.shtml">H-ui阅读</a> <a
							href="http://www.h-ui.net/easydialog-v2.0/index.html">弹出层插件</a> <a
							href="http://www.h-ui.net/SuperSlide2.1/demo.html">SuperSlide插件</a>
						<a href="http://www.h-ui.net/TouchSlide1.1/demo.html">TouchSlide</a>
					</div>
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

			<!--友情链接-->
			<div class="bg-fff box-shadow radius mb-20">
				<div class="tab-category">
					<a href=""><strong>隔壁邻居</strong></a>
				</div>
				<div class="tab-category-item">
					<span><i class="Hui-iconfont">&#xe6f1;</i><a href="#"
						class="btn-link">百度</a></span> <span><i class="Hui-iconfont">&#xe6f1;</i><a
						href="#" class="btn-link">淘宝</a></span> <span><i
						class="Hui-iconfont">&#xe6f1;</i><a href="#" class="btn-link">腾讯</a></span>
					<span><i class="Hui-iconfont">&#xe6f1;</i><a href="#"
						class="btn-link">慕课网</a></span> <span><i class="Hui-iconfont">&#xe6f1;</i><a
						href="#" class="btn-link">h-ui</a></span>
				</div>
			</div>
			<!--最近访客-->
			<div class="bg-fff box-shadow radius mb-20">
				<div class="tab-category">
					<a href=""><strong>最近访客</strong></a>
				</div>
				<div class="panel-body">
					<ul class="recent">
						<div class="item">
							<img src="img/40.jpg" alt="">
						</div>
						<div class="item">
							<img src="img/40.jpg" alt="">
						</div>
						<div class="item">
							<img src="img/40.jpg" alt="">
						</div>
						<div class="item">
							<img src="img/40.jpg" alt="">
						</div>
						<div class="item">
							<img src="img/40.jpg" alt="">
						</div>
						<div class="item">
							<img src="img/40.jpg" alt="">
						</div>
						<div class="item">
							<img src="img/40.jpg" alt="">
						</div>
						<div class="item">
							<img src="img/40.jpg" alt="">
						</div>
						<div class="item">
							<img src="img/40.jpg" alt="">
						</div>
						<div class="item">
							<img src="img/40.jpg" alt="">
						</div>
					</ul>
				</div>
			</div>

			<!--分享-->
			<div class="bg-fff box-shadow radius mb-20">
				<div class="tab-category">
					<a href=""><strong>站点分享</strong></a>
				</div>
				<div class="panel-body">
					<div class="bdsharebuttonbox Hui-share">
						<a href="#" class="bds_weixin Hui-iconfont" data-cmd="weixin"
							title="分享到微信">&#xe694;</a><a href="#"
							class="bds_qzone Hui-iconfont" data-cmd="qzone" title="分享到QQ空间">&#xe6c8;</a>
						<a href="#" class="bds_sqq Hui-iconfont" data-cmd="sqq"
							title="分享到QQ好友">&#xe67b;</a> <a href="#"
							class="bds_tsina Hui-iconfont" data-cmd="tsina" title="分享到新浪微博">&#xe6da;</a>
						<a href="#" class="bds_tqq Hui-iconfont" data-cmd="tqq"
							title="分享到腾讯微博">&#xe6d9;</a>
					</div>
				</div>
			</div>