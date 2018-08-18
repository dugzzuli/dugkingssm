<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8" />
<title>简单通用文章系统后台管理模板</title>
<base href="<%=basePath%>admin/">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.all.min.js">
	
</script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="ueditor/lang/zh-cn/zh-cn.js"></script>

</head>
<body>
	<jsp:include page="./common/managerTopLeft.jsp" />
	<div class="container clearfix">
		<jsp:include page="./common/menuLeft.jsp" />
		<!--/sidebar-->
		<div class="main-wrap">

			<div class="crumb-wrap">
				<div class="crumb-list">
					<i class="icon-font"></i><a href="/jscss/admin/design/">首页</a><span
						class="crumb-step">&gt;</span><a class="crumb-name"
						href="/jscss/admin/design/">作品管理</a><span class="crumb-step">&gt;</span><span>新增作品</span>
				</div>
			</div>
			 <jsp:include page="./common/cut.jsp" />
			<div class="result-wrap">
				<div class="result-content">
					<form action="<%=basePath%>admin/insert" method="post" id="myform"
						name="myform">
						<table class="insert-tab" width="100%">
							<tbody>
								<tr>
									<th width="120"><i class="require-red">*</i>分类：</th>
									<td><select name="category" id="catid" class="required">
											<option value="">--请选择--</option>
											<c:forEach var="model" items="${list}">
												<option value="${model.cateId}">${model.cateName}</option>
											</c:forEach>

									</select></td>
								</tr>
								<tr>
									<th><i class="require-red">*</i>标题：</th>
									<td><input class="common-text required" id="newsTitle"
										name="newsTitle" size="50" type="text"></td>
								</tr>
								<tr>
									<th>作者：</th>
									<td><input class="common-text" name="author" size="50"
										type="text"></td>
								</tr>
<!-- 								<tr> -->
<!-- 									<th>SEO描述：</th> -->
<!-- 									<td><input class="common-text" name="seo_desc" size="50" -->
<!-- 										type="text"></td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<th>SEO内容：</th> -->
<!-- 									<td><input class="common-text" name="seo_content" size="50" -->
<!-- 										type="text"></td> -->
<!-- 								</tr> -->
								<tr>
									<th><i class="require-red">*</i>缩略图：</th>
									<td><input name="pic" id="pic" type="text" size="50"></td>
								</tr>
<!-- 								<tr> -->
<!-- 									<th><i class="require-red">*</i>摘要：</th> -->
<!-- 									<td><input name="summary" id="summary" type="text" size="50"></td> -->
<!-- 								</tr> -->
								<tr>
									<th>内容：</th>
									<td><script id="content" name="content" type="text/plain"
											style="width: 100%; height: 500px;"></script></td>
								</tr>
								<tr>
									<th></th>
									<td><input class="btn btn-primary btn6 mr10" value="提交"
										type="submit"> <input class="btn btn6"
										onClick="history.go(-1)" value="返回" type="button"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>

		</div>
		<!--/main-->
	</div>
</body>
</html>
<script type="text/javascript">
	//实例化编辑器
	//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	var ue = UE.getEditor('content');
</script>