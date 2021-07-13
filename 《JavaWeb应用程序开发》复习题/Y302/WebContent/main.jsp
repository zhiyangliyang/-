<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	<div class="middle">
		<table border="1" style="margin: 0 auto;">
			<caption>用户信息表</caption>
			<tr>
				<td>ID</td>
				<td>用户名</td>
				<td>Email</td>
				<td>密码</td>
				<td>详情</td>
			</tr>
			<%
				JspUserDao jspUserDao = new JspUserDao();
			List<JspUser> list = jspUserDao.getAll();
			for (JspUser jspUser : list) {
				out.print("<tr>");
				out.print("<td>" + jspUser.getId());
				out.print("</td>");
				out.print("<td>" + jspUser.getUsername());
				out.print("</td>");
				out.print("<td>" + jspUser.getEmail());
				out.print("</td>");
				out.print("<td>" + jspUser.getPassword());
				out.print("</td>");
				out.print("<td>" + "<a href='" + request.getContextPath() + "/detail.jsp?id=" + jspUser.getId() + "'>详情</a>");
				out.print("</td>");
				out.print("</tr>");
			}
			%>
		</table>
		<form action="<%out.print(request.getContextPath()); %>/search.jsp" method="get">
			<input type="text" name="key"><input type="submit" value="查询">
		</form>

	</div>
</body>
</html>