<%@ page import="java.util.List" %>
<%@ page import="com.springmvc.pojo.Item" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="2">
    <tr>
        <th>序号</th>
        <th>商品名称</th>
        <th>商品类别ID</th>
        <th>价格</th>
        <th>库存</th>
        <th>操作</th>
    </tr>

    <%
        List<Item> itemList = (List<Item>) request.getAttribute("itemList");
        for(Item item: itemList){
            out.print("<tr>");
            out.print("<td>");
            out.print(item.getId());
            out.print("</td>");
            out.print("<td>");
            out.print(item.getItemName());
            out.print("</td>");
            out.print("<td>");
            out.print(item.getItemType());
            out.print("</td>");
            out.print("<td>");
            out.print(item.getPrice());
            out.print("</td>");
            out.print("<td>");
            out.print(item.getItemNumber());
            out.print("</td>");
    %>
    <td>
        <a href="${pageContext.request.contextPath}/item/update?id=<%=item.getId()%>">修改</a>
        <a href="${pageContext.request.contextPath}/item/delete?id=<%=item.getId()%>">删除</a>
    </td>
    <%
            out.print("</tr>");
        }
    %>
</table>
<a href="${pageContext.request.contextPath}/item/addItem">新增商品信息</a>
</body>
</html>
