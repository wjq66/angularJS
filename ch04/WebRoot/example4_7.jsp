<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'example4_7.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:useBean id="tri" class="red.star.Triangle" scope="request" />
  <body>
    <form action="" method="post">
    	输入三角形三边:<br>
    	边A:<input type="text" name="sideA" value="0" size = 5><br>
    	边B:<input type="text" name="sideB" value="0" size = 5><br>
    	边C:<input type="text" name="sideC" value="0" size = 5><br>
    	<input type="submit" value="提交">
    </form>
    <jsp:setProperty name="tri" property = "*" />
    三角形的三边是:
    <jsp:getProperty name="tri" property="sideA" />
    <jsp:getProperty name="tri" property="sideB" />
    <jsp:getProperty name="tri" property="sideC" />
    <br><b>这三个边能够成一个三角形吗？<jsp:getProperty name="tri" property="triangle" /></b>
    <br>面积是:<jsp:getProperty name="tri" property="area" />
  </body>
</html>
