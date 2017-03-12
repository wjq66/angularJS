<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'example4_1.jsp' starting page</title>
    
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
    <jsp:useBean id="circle" class="tom.jiafei.Circle" scope="page" />
    
    <p>圆的初始半径是:<%= circle.getRadius() %></p>

    <%
    	double newRadius = 100;
    	circle.setRadius(newRadius);
     %>
     
     <p>修改半径为:<%= newRadius %>
     <br><b>目前元的半径是:<%= circle.getRadius() %></b>
     <br><b>圆的周长是:<%= circle.circleLength() %></b>
     <br><b>圆的面积是:<%= circle.circleArea() %></b>
  </body>
</html>
