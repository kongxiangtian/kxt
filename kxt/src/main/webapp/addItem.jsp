<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>对商品进行增加</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/item/add" >
    类别id:<input type="text" name="itemType"/><br/>
    名称:<input type="text" name="itemName"/><br/>
    价格:<input type="text" name="price"/><br/>
    库存:<input type="text" name="itemNumber"/><br/>
    <input type="submit" value="提交">
</form>
</body>
</html>
