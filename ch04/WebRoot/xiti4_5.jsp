<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="tom.jiafei.XiTi4_5" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xiti4_5.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:useBean class="tom.jiafei.XiTi4_5" id="xt" scope="session" />
  <body>
    <p>请输入梯形的信息:
    <form action="" Method="post">
    	上边长:<input type="text" name="top"><br>
    	下边长:<input type="text" name="buttom"><br>
    	高度:<input type="text" name="height"><br>
    	<input type="submit" value="提交"  />
    </form>
    
    <jsp:setProperty name="xt" property="*" />
    上边长为:<jsp:getProperty name="xt" property="top" /><br>
    下边长为:<jsp:getProperty name="xt" property="buttom" /><br>
    高低为:<jsp:getProperty name="xt" property="height" /><br>
    面积为:<jsp:getProperty name="xt" property="result" /><br>
  </body>
</html>
