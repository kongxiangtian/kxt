<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/type/save">
    序号:<input type="text" name="id" value="${type.id}" readonly/><br/>
    类别:<input type="text" name="name" value="${type.name}"/><br/>
    <input type="submit" value="提交">
</form>
</body>
</html>
