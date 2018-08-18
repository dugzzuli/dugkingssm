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
</head>
<body>
	<jsp:include page="./common/managerTopLeft.jsp" />
	<div class="container clearfix">
		<jsp:include page="./common/menuLeft.jsp" />
		<!--/sidebar-->
		<div class="main-wrap">
			<div class="crumb-wrap">
				<div class="crumb-list">
					<i class="icon-font">&#xe06b;</i><span>欢迎使用『豪情』博客程序，建博的首选工具。</span>
				</div>
			</div>
			<jsp:include page="./common/cut.jsp" flush="false" />
			<div class="result-wrap">
				<div class="result-title">
					<h1>博文列表</h1>
				</div>
				<div class="result-content">
					<ul class="sys-info-list">
						<c:forEach var="model" items="${list}">
							<li><a href="update/${model.id }">${model.newsTitle}</a><span
								class="spanclass">${model.author}--${model.creatdate}---<a href="delete/${model.id }">删除</a></span></li>
						</c:forEach>

					</ul>
				</div>
			</div>
			<!--         <div class="result-wrap"> -->
			<!--             <div class="result-title"> -->
			<!--                 <h1>使用帮助</h1> -->
			<!--             </div> -->
			<!--             <div class="result-content"> -->
			<!--                 <ul class="sys-info-list"> -->
			<!--                     <li> -->
			<!--                         <label class="res-lab">更多模板：</label><span class="res-info"><a href="http://www.mycodes.net/" target="_blank">源码之家</a></span> -->
			<!--                     </li> -->
			<!--                 </ul> -->
			<!--             </div> -->
			<!--         </div> -->
		</div>
		<!--/main-->
	</div>
</body>
</html>
<style>
.spanclass {
	float: right;
}
</style>