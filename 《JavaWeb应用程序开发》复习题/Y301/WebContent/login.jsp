<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="middle">
		<form action="login_act.jsp" method="get" Align="center">
			<h1>用户登录</h1>
			<p>
				用户名：<input type="text" name="username" />
			</p>
			<p>
				密码：<input type="password" name="password" />
			</p>
			<input type="submit" value="登录" /> <input type="reset" value="重设" />
		</form>
		<p>
			<%
				String note = null;
			note = (String) session.getAttribute("note");
			if (note == null) {
				note = "0";
			}
			if (note.equals("1")) {
				out.print("Please enter the username！");
			} else if (note.equals("2")) {
				out.print("Wrong username or password");
			} else if (note.equals("3")) {
				out.print("Please login！");
			}
			if(note !=null){
				out.print(note);
			}
			%>
		</p>
	</div>


</body>
</html>