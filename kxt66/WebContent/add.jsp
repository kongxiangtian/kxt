<%@page import="java.sql.ResultSet" import="com.kxt.dao.exe"%>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	request.setCharacterEncoding("gb2312");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'add.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	function check() {
		if (form.name.value == "" || form.organization.value == "" || form.phonenumber.value == "" || form.telephone.value == "" || form.email.value == "" || form.address.value == "") {
			alert("请输入必要信息！");
			return false;
		}

	}
</script>

</head>

<body>
	<center>新建联系人</center>
	<form action="Servlet?op=add" method="post" name="form"
		onsubmit="return check()">
		<br>姓名 <input type="text" name="name"> <br>
		工作单位<input type="text" name="organization" > <br>
		手机 <input type="text" name="phonenumber" > <br>
		住宅电话<input type="text" name="telephone" > <br>e-mail<input
			type="text" name="email" > <br>住址<input
			type="text" name="address" > <br>分组<select
			name="select">
			<%
				ResultSet rs;
				rs = exe.selectallgroup();
				while (rs.next()) {
			%>
			<option value=<%=rs.getString(2)%>><%=rs.getString(2)%></option>
			<%
				}
			%>

		</select> <br>备注 <input type="text" name="remark"> <br> <input
			type="submit" name="submit" value="提交" onclick = "return check();">
	</form>
</body>
</html>
