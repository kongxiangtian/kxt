
<%@page import="lesson6.Conn,java.sql.Connection" %>
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
Book user=new Book();
user.setUsername(request.getParameter("username"));
Usebook usebook=new Usebook();
usebook.delete(conn, user);
out.print("删除成功");

%>
</body>
</html>