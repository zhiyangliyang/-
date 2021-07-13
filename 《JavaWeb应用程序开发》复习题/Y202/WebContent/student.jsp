<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>201809040209</title>
<link href="${pageContext.request.contextPath}/css/layout101.css"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="middle">
		<h1>用户提交的信息</h1>
		<p>姓名：<% out.print(request.getAttribute("name")); %></p>
		<p>班级：<% out.print(request.getAttribute("class")); %></p>
	</div>
</body>

</html>