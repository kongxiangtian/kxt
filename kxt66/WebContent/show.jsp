<%@page import="java.sql.ResultSet"%>
<%@ page language="java" import="java.util.*" import="com.kxt.dao.exe" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%request.setCharacterEncoding("UTF-8");%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
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

     <%
     response.setCharacterEncoding("gb2312");
   String select = request.getParameter("select");
   String name = request.getParameter("name");
   if(name == null)
   {
	   name = "";
   }
   ResultSet rs = null;
   if("name".equals(select)){
	   rs = exe.select(name);
   }
   else if("group1".equals(select)){
	   rs = exe.selectgp(name);
   }

	   %>
	   <table>
	   <tr>
	   <td>����</td>
	  <td> ������λ</td>
	  <td> �ֻ�</td>
	  <td> סլ�绰</td>
	 <td>  e-mail</td>
	  <td> סַ</td>
	  <td> ����</td>
	  <td> ��ע</td>
	   </tr><%
	   if(!rs.next())
		   out.print("�Ҳ�������ϵ��");
	   else{
		   while(true){
		   %>
		  
		  
		   <tr>
		   <td><%=rs.getString(2) %></td>
		  <td> <%=rs.getString(3) %></td>
		  <td> <%=rs.getString(4) %></td>
		  <td> <%=rs.getString(5) %></td>
		 <td>  <%=rs.getString(6) %></td>
		  <td><%=rs.getString(7) %></td>
		  <td> <%=rs.getString(8) %></td>
		  <td><%=rs.getString(9) %></td>
		   </tr>
			
		   
		  <% 
		  if(!rs.next())
			  break;
		   }
	   }
	   %>
	   </table>
	   <%
	   
   
   %>
  </body>
</html>
