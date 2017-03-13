<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'example4_9.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:useBean id="play" class="red.star.Play" scope="session" />
  <%
    	String webDir = request.getContextPath();
    	webDir = webDir.substring(1);
     %>
     <jsp:setProperty name="play" property = "webDir" value="<%= webDir %>" />
     <jsp:setProperty name="play" property="imageNumber" param="imageNumber" />
  <body>
    <img src="images/<jsp:getProperty name="play" property="playImage" />" width="500" height="340">
    <br>这是当前显示的图像
    <br>单击"上一张"或者"下一张"按钮浏览图像
    <form action="" method="post">
    	<input type="submit" name="ok" value="上一张">
    	<input type="hidden" name="imageNumber" value="<%= play.getImageNumber() -1 %>">
    </form>
    
    <form action="" method="post">
    	<input type="submit" name="ok"  value="下一张">
    	<input type="hidden" name="imageNumber" value="<%= play.getImageNumber() +1%>">
    </form>
     
  </body>
</html>
