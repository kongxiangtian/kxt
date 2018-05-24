<%@page import="com.kxt.entity.person"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" import="java.util.*" import="com.kxt.dao.exe" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cbcorrect.jsp' starting page</title>
    
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
   
   <%ResultSet rs ;
   rs=exe.selectcb();
   %>
   <table>
   <tr>
   <td>名字</td>
   <td>工作单位</td>
   <td>手机号码</td>
   <td>固定电话号码</td>
   <td>email</td>
   <td>住址</td>	
   <td>分组</td>
   <td>备注</td>
   </tr>
   <%
   ArrayList<person> cblist = new ArrayList<person>();
   while(rs.next()){
	   int id = rs.getInt(1);
	  String n =  rs.getString(2);
	  String o =  rs.getString(3);
	  String p =  rs.getString(4);
	  String t =  rs.getString(5);
	  String e =  rs.getString(6);
	  String a =  rs.getString(7);
	  String g =  rs.getString(8);
	  String r =  rs.getString(9);
   person ps = new person(id,n,o,p,t,e,a,g,r);
   cblist.add(ps);
   }
   Collections.sort(cblist);
   for(int i = 0;i<cblist.size();i++){
	   %>
   <tr>
   <form action="Servlet?op=cbcorrect" method="post" name = form>
   <td><input type = "text" name = "name" value = <%=cblist.get(i).getName() %>></td>
   <td><input type = "text" name = "organization" value = <%=cblist.get(i).getOrganization() %>></td>
   <td><input type = "text" name = "phonenumber" value = <%=cblist.get(i).getPhonenumber() %>></td>
   <td><input type = "text" name = "telephone" value = <%=cblist.get(i).getTelephone() %>></td>
   <td><input type = "text" name = "email" value = <%=cblist.get(i).getEmail() %>></td>
   <td><input type = "text" name = "address" value = <%=cblist.get(i).getAddress() %>></td>
   <td><input type = "text" name = "group1" value = <%=cblist.get(i).getGroup() %>></td>
   <td><input type = "text" name = "remark" value = <%=cblist.get(i).getRemark() %>></td>
   <td><input type = "submit" name = "submit" value = "correct">
   <input type = "submit" name = "submit" value = "delete">
   <input type="hidden" id="abc" name="abc" value=<%=cblist.get(i).getId() %>>
   </form>
   </tr>
   <% 
   }
   
   
  %>
   </table>
  </body>
</html>
