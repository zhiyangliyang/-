<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="lzy.test.jsp.JspUserDao"%>
<%@ page import="lzy.test.jsp.JspUser"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="css/layout101.css" type="text/css" rel="stylesheet">
</head>
<body>
	<%
		JspUserDao jspUserDao = new JspUserDao();
	JspUser jspUser = jspUserDao.selectId(Integer.parseInt(request.getParameter("id")));
	%>
	<div class="middle">
		<table style="margin: 0 auto;" border="1">
			<caption>用户详细信息</caption>
			<tr>
				<td>ID</td>
				<td>
					<%
						out.print(jspUser.getId());
					%>
				</td>
			</tr>
			<tr>
				<td>用户名</td>
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
		
		<p><a href="<%out.print(request.getContextPath()); %>/main.jsp">返回</a></p>
	</div>
</body>
</html>