<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'example4_4.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:useBean id="zhang" class="tom.jiafei.Student" scope="request"/>
  <body>
    <jsp:setProperty name="zhang" property = "name" value="张三" />
    <b> 学生姓名:<jsp:getProperty name="zhang" property="name" /></b>
    <jsp:setProperty name="zhang" property="height" value="<%= 1.78 %>"/>
    <br><b>学生身高:<jsp:getProperty name="zhang" property="height"/>米</b>
    
  </body>
</html>
