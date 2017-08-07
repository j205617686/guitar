<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
        contentType="text/html; charset=UTF-8"
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

    <title>显示上传文件的界面</title>

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
            <p>显示上传文件</p>
            <p>${path }</p>
            <p>${pageContext.request.contextPath }${path }</p>
            <img height="500px"  whith="500px" src="${pageContext.request.contextPath }${path }"  alt="美丽的苹果"  > 
            <p><a  href="${pageContext.request.contextPath }/ServletFileDownload.action?path=${path}">下载</a></p>
  </body>
</html>