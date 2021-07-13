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
		<p>
			用户输入的信息已获取，请访问<a href="student.jsp">第三个页面</a>查看信息。
		</p>
		<%
			String name = request.getParameter("name");
			String clas = request.getParameter("class");
			session.setAttribute("name", name);
			session.setAttribute("class", clas);
		%>
	</div>
</body>

</html>