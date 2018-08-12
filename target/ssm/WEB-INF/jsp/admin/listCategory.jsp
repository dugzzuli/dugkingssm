<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <div class="crumb-list"><i class="icon-font"></i><a href="/jscss/admin/design/">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="/jscss/admin/design/">作品管理</a><span class="crumb-step">&gt;</span><span>新增作品</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
              
                    <table class="insert-tab" width="100%">
                    <tr>
                                <th><i class="require-red">*</i>类别编号</th>
                                 <th><i class="require-red">*</i>类别名称</th>
                                 <th><i class="require-red">*</i>操作</th></tr>
                                
                        <c:forEach var="model" items="${list}">
                            <tr>
                               
                                <td>
                                   ${model.cateId}
                                </td>
                                 
                                <td>  ${model.cateName}</td>
                               
                                <td>  删除</td>
                            </tr>
                        
                           </c:forEach>
                           
                      </table>
              
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>