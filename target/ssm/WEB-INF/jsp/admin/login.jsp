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
    <title>后台管理</title>
   <base href="<%=basePath%>admin/">
	<link rel="stylesheet" type="text/css" href="css/admin_login.css"/>
</head>
<body>
<div class="admin_login_wrap">
    <h1>后台管理</h1>
    <div class="adming_login_border">
        <div class="admin_input">
            <form action="<%=basePath%>admin/login" method="post">
                <ul class="admin_items">
                    <li>
                        <label for="userName">用户名：</label>
                        <input type="text" name=userName placeholder="admin" id="userName" size="35" class="admin_input_style" />
                    </li>
                    <li>
                        <label for="userPwd">密码：</label>
                        <input type="password" name="userPwd" placeholder="admin" id="userPwd" size="35" class="admin_input_style" />
                    </li>
                    <li>
                        <input type="submit" tabindex="3" value="提交" class="btn btn-primary" />
                    </li>
                </ul>
            </form>
        </div>
    </div>
    <p class="admin_copyright"><a  href="<%=basePath%>" target="_blank">返回首页</a> &copy; </p>
</div>
</body>
</html>