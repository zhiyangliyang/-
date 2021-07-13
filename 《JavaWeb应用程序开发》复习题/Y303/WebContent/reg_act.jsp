<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@ page import="lzy.test.jsp.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%	
String username = request.getParameter("username");
String email = request.getParameter("email");
String password = request.getParameter("password");
String passwordConfirm = request.getParameter("password_two");
if (username.equals("") || email.equals("") || password.equals("") || passwordConfirm.equals("")) {
	request.setAttribute("sign", "3");
	request.getRequestDispatcher("/main.jsp").forward(request, response);
}
if (username.length() >= 20 || email.length() >= 20 || password.length() >= 20
		|| passwordConfirm.length() >= 20) {
	request.setAttribute("sign", "4");
	request.getRequestDispatcher("/main.jsp").forward(request, response);
}
if (!email.contains("@")) {
	request.setAttribute("sign", "5");
	request.getRequestDispatcher("/main.jsp").forward(request, response);
}
if (!password.equals(passwordConfirm)) {
	request.setAttribute("sign", "6");
	request.getRequestDispatcher("/main.jsp").forward(request, response);
}
	TestUserDao testUserDao = new TestUserDao();
	JspUser jspUser = new JspUser();
	jspUser.setUsername((String)request.getParameter("username"));
	jspUser.setEmail((String)request.getParameter("email"));
	jspUser.setPassword((String)request.getParameter("password"));
	if(testUserDao.check(jspUser)){
		if(testUserDao.setin(jspUser).equals("注册成功")){
			request.setAttribute("user", jspUser);
			request.getRequestDispatcher("/userinfo.jsp").forward(request, response);
		}else{
			request.setAttribute("sign", "2");
			request.getRequestDispatcher("/main.jsp").forward(request, response);
		}
	}else{
		request.setAttribute("sign", "1");
		request.getRequestDispatcher("/main.jsp").forward(request, response);
	}
%>
</body>
</html>