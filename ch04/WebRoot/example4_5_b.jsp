<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'example4_5_b.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:useBean id="iPhone" class="tom.jiafei.Goods" scope="request" />
  <body>
    <jsp:setProperty name="iPhone" property="name" param="name" />
    <jsp:setProperty name="iPhone" property="price" param="price" />
    <br><b>名称:<jsp:getProperty name="iPhone" property="name" /></b>
    <br><b>价格:<jsp:getProperty name="iPhone" property="price" /></b>
  </body>
</html>
