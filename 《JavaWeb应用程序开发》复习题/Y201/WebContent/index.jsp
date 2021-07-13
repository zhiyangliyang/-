<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>201809040209</title>
    <link href="css/layout101.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <% 
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY-MM-dd-HH:mm:ss");
		Cookie cookie = new Cookie("time",simpleDateFormat.format(date));
		response.addCookie(cookie);
    %>
    <div class="middle">
		<h1>读取Cookie</h1>
		<p>已经在客户端设置了Cookie，可在<a href="readCookie.jsp">下一个界面</a>中读取此Cookie</p>
    </div>
</body>

</html>