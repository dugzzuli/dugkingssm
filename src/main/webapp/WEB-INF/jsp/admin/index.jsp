<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
              <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

    
%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>简单通用文章系统后台管理模板</title>
     <base href="<%=basePath%>admin/">
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
</head>
<body>
<jsp:include page="./common/managerTopLeft.jsp" />
<div class="container clearfix">
    <jsp:include page="./common/menuLeft.jsp" />
   <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>欢迎您</span></div>
        </div>
      <jsp:include page="./common/cut.jsp" />
       <div class="result-wrap">
            <div class="result-title">
                <h1>系统基本信息</h1>
            </div>
            <div class="result-content">
                <ul class="sys-info-list">
<!--                     <li> -->
<!--                         <label class="res-lab">操作系统</label><span class="res-info">WINNT</span> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <label class="res-lab">运行环境</label><span class="res-info">Apache/2.2.21 (Win64) PHP/5.3.10</span> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <label class="res-lab">PHP运行方式</label><span class="res-info">apache2handler</span> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <label class="res-lab">静静设计-版本</label><span class="res-info">v-0.1</span> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <label class="res-lab">上传附件限制</label><span class="res-info">2M</span> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <label class="res-lab">北京时间</label><span class="res-info">2014年3月18日 21:08:24</span> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <label class="res-lab">服务器域名/IP</label><span class="res-info">localhost [ 127.0.0.1 ]</span> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <label class="res-lab">Host</label><span class="res-info">127.0.0.1</span> -->
<!--                     </li> -->
                </ul>
            </div>
        </div>
<%--        <jsp:include page="./common/help.jsp"></jsp:include> --%>
    </div>
    <!--/main-->
</div>
</body>
</html>