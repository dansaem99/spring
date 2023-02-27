<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	Cookie cookie = new Cookie("userName", "john");
	response.addCookie(cookie);
%>
<a href='main.html'>메인</a>