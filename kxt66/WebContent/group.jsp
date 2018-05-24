<%@page import="java.sql.ResultSet" import = "com.kxt.dao.exe"%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'group.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <form action="Servlet?op=newgroup" method="post" name = form>
    <br> 分组名称:<input type ="text" name = "name" > 
    <input type = "submit" name = "submit" value = "新建分组">
   </form>
   <%ResultSet rs ;
   rs=exe.selectallgroup();
   %>
   <table>
   <tr>
   <td>分组id</td>
   <td>分组名</td>
   <td>操作</td>
   </tr>
   <%
   while(rs.next()){
   int id1 = rs.getInt(1);
   String name1 = rs.getString(2);
   %>
   <tr>
   <form action="Servlet?op=groupcorrect" method="post" name = form>
   <td> <%=rs.getInt(1) %></td>
   <td><input type = "text" name = "name1" value = <%=rs.getString(2) %>></td>
   <td><input type = "submit" name = "submit" value = "correct">
   <input type = "submit" name = "submit" value = "delete">
   <input type="hidden" id="abc" name="abc" value=<%=rs.getInt(1) %>>
   </form>
   </tr>
   <% 
   }
  %>
   </table>
    
  </body>
</html>
