<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<%
	//cookie는 string이다
	// userName은 키가 된다.
	Cookie cookie1 = new Cookie("userName", "john");
	Cookie cookie2 = new Cookie("age", "32");
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>