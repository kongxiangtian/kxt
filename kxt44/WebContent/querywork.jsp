
<%@page import="lesson6.Conn,java.sql.Connection" %>
 <%@ page language="java" import="lesson6.Book,lesson6.Usebook" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String username=request.getParameter("username");
Connection conn=Conn.getconn();
Usebook usebook=new Usebook();
Book user=usebook.query(conn, username);
out.print(user.toString());
%>

</body>
</html>