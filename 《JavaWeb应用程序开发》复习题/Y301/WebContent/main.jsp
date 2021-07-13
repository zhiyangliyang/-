<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="lzy.test.jsp.JspUser"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<div class="middle">
		<%
			String note = (String) session.getAttribute("note");
		if (note == null) {
			session.setAttribute("note", "3");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		%>
		<h1>登录成功</h1>
		<p>
			欢迎您！
			<%
			session.setAttribute("note", "0");
			JspUser user = (JspUser) session.getAttribute("user");
		out.print(user.getUsername());
		%>
		<form action="${pageContext.request.contextPath }/logout.jsp" method="get">
		<input type="submit" value="注销">
		</form>
		</p>
	</div>
</body>
</html>