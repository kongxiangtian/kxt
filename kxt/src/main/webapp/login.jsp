<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<div align="center">
    <form id="form" action="${pageContext.request.contextPath}/user/login" method="post" >
    用户名:<input type="text" name="username"></br>
    密码:<input type="password" name="password"></br>
    <input type="submit" value="登录">
    <a href="/user/showRegister">注册</a>
    </form>
</div>

</body>
</html>
