<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新商品</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/item/save" >
    序号:<input type="text" name="id" value="${item.id}" readonly/><br/>
    类别:<input type="text" name="itemType" value="${item.itemType}"/><br/>
    名称:<input type="text" name="itemName" value="${item.itemName}"/><br/>
    价格:<input type="text" name="price" value="${item.price}"/><br/>
    库存:<input type="text" name="itemNumber" value="${item.itemNumber}"/><br/>
    <input type="submit" value="提交">
</form>
</body>
</html>
