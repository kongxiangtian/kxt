<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="updatework.jsp" method="get">

请输入修改信息的姓名：<input type="text" name="beforename">
<h5>请输入修改的信息：</h5>
姓名：<input type="text" name="username"><br/>
    工作单位：<input type="text" name="workplace"> <br/> 
    手机：<input type="text" name="telephone"><br/> 
住宅电话：<input type="text" name="phone"><br/> 
  E-mail：<input type="text" name="email"><br/> 
  地址：<input type="text" name="address"><br/>
   分组：<input type="text" name="group"><br/> 
  备注：<input type="text" name="information"><br/> 
     <input type="submit" value="修改信息"> 



</form>

</body>
</html>