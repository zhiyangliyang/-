<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="<%out.print(request.getContextPath());%>/css/layout101.css"
	type="text/css" rel="stylesheet">
</head>
<body>
	<div class="middle">
		<form action="<%out.print(request.getContextPath());%>/reg_act.jsp"
			method="post" Align="center">
			<table style="margin: 0 auto;">
				<caption>用户注册</caption>
				<tr>
					<td>用户名</td>
					<td><input name="username" type="text"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input name="email" type="text"></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input name="password" type="text"></td>
				</tr>
				<tr>
					<td>密码确认</td>
					<td><input name="password_two" type="text"></td>
				</tr>
			</table>
			<input type="submit" value="注册"> <input type="reset"
				value="重设">
		</form>
		<p>
			<%
				String sign = (String) request.getAttribute("sign");
			if (sign != null && sign.equals("1")) {
				out.print("The username has existed or email address has already registered!");
			}else if(sign != null && sign.equals("2")){
				out.print("Error occured in database operation! Please tyr again!");
			}else if(sign != null && sign.equals("3")){
				out.print("You must input username, email, password and confirm passord!");
			}else if(sign != null && sign.equals("4")){
				out.print("You must input username, email, password and confirm passord with english letter, digits or underscore character, and their length must be less 20!");
			}
			else if(sign != null && sign.equals("5")){
				out.print("Incorrect email address");
			}
			else if(sign != null && sign.equals("6")){
				out.print("The password and confirm passord are not same!");
			}
			%>
		</p>
	</div>
</body>
</html>