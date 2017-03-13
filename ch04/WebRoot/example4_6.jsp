
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'example4_6.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:useBean id="file" class="tom.jiafei.ListFile" scope="request" />
  <body>
    <form action="" Method="post">
    	输入目录名,例如:D:/2000<input type="text" name="dir" size=15><br>
    	输入文件的扩展名,例如:java<input type="text" name="extendsName" size = 6>
    	<input type="submit" value="提交">
    </form>
    
    <jsp:setProperty name="file" property="dir" param="dir" />
    <jsp:setProperty name="file" property="extendsName" param = "extendsName" />
    <br>
    <b>目录<jsp:getProperty name="file" property="dir" /> 中</b>
    	扩展名是:<jsp:getProperty name="file" property="extendsName" />的文件有:
    <%
    	String []fileName = file.getAllFileName();
    	if(fileName!=null){
    		for(int i =0;i<fileName.length;i++){
    			out.print("<br>"+fileName[i]);
    		}
    	}
     %>
  </body>
</html>
