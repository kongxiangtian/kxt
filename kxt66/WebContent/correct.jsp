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
		<br>��������Ҫ�޸ĵ���ϵ�˵�����<input type="text" name="name"> <br>��ѡ����Ҫ�޸ĵ���Ϣ<select
			name="select">
			
			<option value="name">����</option>
			<option value="organization">������λ</option>
			<option value="phonenumber">סլ�绰</option>
			<option value="telephone">�ֻ�����</option>
			<option value="email">e-mail</option>
			<option value="address">��ַ</option>
			<option value="group1">����</option>
			<option value="remark">��ע</option>
		
		</select>
		<br>�������޸ĵ�����<input type = "text" name = "result" >
		 <br>
		<input type="submit" name="submit" value="�ύ">
	</form>
  </body>
</html>
