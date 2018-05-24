<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%request.setCharacterEncoding("gb2312");%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'correct.jsp' starting page</title>
    
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
   <form action="Servlet?op=correct" name="form" method="post">
		<br>请输入你要修改的联系人的姓名<input type="text" name="name"> <br>请选择你要修改的信息<select
			name="select">
			
			<option value="name">姓名</option>
			<option value="organization">工作单位</option>
			<option value="phonenumber">住宅电话</option>
			<option value="telephone">手机号码</option>
			<option value="email">e-mail</option>
			<option value="address">地址</option>
			<option value="group1">分组</option>
			<option value="remark">备注</option>
		
		</select>
		<br>请输入修改的内容<input type = "text" name = "result" >
		 <br>
		<input type="submit" name="submit" value="提交">
	</form>
  </body>
</html>
