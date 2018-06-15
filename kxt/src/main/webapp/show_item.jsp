<%@ page import="com.springmvc.pojo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 引入jstl库 -->
<html>
<head>
    <title>管理员后台首页</title>
</head>
<body>
欢迎使用本系统<%String username = (String)session.getAttribute("username");
if (username != null) {%>  <%=username%>
<%
    } else {
        out.print("<script>alert('请先登录....');window.location.href='login.jsp';</script>");
    }
%>
<h4><a href="${pageContext.request.contextPath}/user/logout">系统退出</a></h4>
<h6 align="center">商城后台管理系统</h6>
<table width="100%" height="700" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="15%" height="100%" valign="top">
            <a href="/type/list" target="mainFrame">商品类别管理</a><br/>
            <a href="/item/list" target="mainFrame">商品总页面</a>
        </td>
        <td width="80%" valign="top">
            <iframe src="${pageContext.request.contextPath}/type/list" name="mainFrame" frameborder="2" height="800" width="1000" ></iframe>
        </td>
    </tr>
</table>

</body>
</html>
