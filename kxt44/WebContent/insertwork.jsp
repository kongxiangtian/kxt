
<%@page import="lesson6.Conn,java.sql.Connection" %>
 <%@ page language="java" import="java.util.*" %> 
 <%@ page language="java" import="lesson6.Book,lesson6.Usebook" %> 
<%@ page language="java" contentType="text/html; charset=utf-8" 
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn=Conn.getconn();
String username = request.getParameter("username"); 
String workplace = request.getParameter("workplace"); 
String telephone = request.getParameter("telephone"); 
String phone = request.getParameter("phone"); 
String email= request.getParameter("email"); 
String address= request.getParameter("address"); 
String group = request.getParameter("group"); 
String information = request.getParameter("information"); 
Book user = new Book(); 
user.setUsername(username); 
user.setWorkplace(workplace); 
user.setTelephone(telephone); 
user.setPhone(phone); 
user.setEmail(email); 
user.setAddress(address); 
user.setGroup(group); 
user.setInformation(information); 
Usebook usebook = new Usebook(); 
usebook.insert(conn,user); 
out.print("增加成功"); 
%> 


</body>
</html>