<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="lzy.test.jsp.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="css/layout101.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="middle">
		<h1>注册成功</h1>
		<table border="1">
			<caption>用户信息</caption>
			<tr>
				<td>用户名</td>
				<%
					JspUser jspUser = (JspUser) request.getAttribute("user");
				%>
				<td>
					<%
						out.print(jspUser.getUsername());
					%>
				</td>
			</tr>
			<tr>
				<td>Email</td>
				<td>
					<%
						out.print(jspUser.getEmail());
					%>
				</td>
			</tr>
			<tr>
				<td>密码</td>
				<td>
					<%
						out.print(jspUser.getPassword());
					%>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>