<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>对商品类别进行添加</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/type/add" >
    类别名称:<input type="text" name="name"/><br/>
    <input type="submit" value="提交">
</form>
</body>
</html>
