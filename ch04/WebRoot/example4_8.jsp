<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'example4_8.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:useBean id="computer" class="red.star.ComputerBean" scope="session" />
  <body>
	<jsp:setProperty name="computer" property="*" />
	<form action="" method="post" name = form>
		<input type="text" name="numberOne" size = 6>
			<select name="operator">
				<option value="+">+
				<option value="-">-
				<option value="*">*
				<option value="/">/
			</select>
			<input type="text" name="numberTwo" size = 6>
			<br>
			<input type="submit" value="提交" name = "submit">
	</form>
	<b>
	<jsp:getProperty name="computer" property="numberOne" />
	<jsp:getProperty name="computer" property="operator" />
	<jsp:getProperty name="computer" property="numberTwo" />=
	<jsp:getProperty name="computer" property="result" /></b>
  </body>
</html>
