<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="css/layout101.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div>
<h1>用户提交的信息</h1>
	<div>
		<table>
			<tr><td>姓名：</td><td><% out.print(session.getAttribute("name")); %></td></tr>
			<tr><td>班级：</td><td><% out.print(session.getAttribute("class")); %></td></tr>
		</table>
	</div>
</div>
</body>
</html>