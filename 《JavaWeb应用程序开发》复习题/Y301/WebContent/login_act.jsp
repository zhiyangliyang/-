<%@ page import="lzy.test.jsp.JspUser" %>
<%@ page import="lzy.test.jsp.JspUSerDao" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="user" class="lzy.test.jsp.JspUser"></jsp:useBean>
<jsp:setProperty property="username" name="user"/>
<jsp:setProperty property="password" name="user"/>
<jsp:useBean id="userDao" class="lzy.test.jsp.JspUSerDao"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(user.getUsername() == null){
		session.setAttribute("note", "1");
		request.getRequestDispatcher("/login.jsp").forward(request, response);
	}
	if(userDao.login(user)){
		session.setAttribute("user", user);
		request.getRequestDispatcher("/main.jsp").forward(request, response);
	}else{
		session.setAttribute("note", "2");
		request.getRequestDispatcher("/login.jsp").forward(request, response);
	}
%>
</body>
</html>