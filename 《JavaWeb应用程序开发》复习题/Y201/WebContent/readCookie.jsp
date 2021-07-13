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

	<div class="middle">
	<h1>读取Cookie</h1>
		<%
			Cookie[] cookie = request.getCookies();
		for (Cookie ck : cookie) {
			if (ck.getName().equals("time")) {
				out.print("上一个网页设置的Cookie值为"+ck.getValue());
			}
		}
		%>
	</div>
</body>
</html>