<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='5.main.jsp'>main</a>
<%
	session.invalidate();
%>
<!-- session 객체가 없어진다. 만약 로그아웃을 할 것이면 
해당 코드를 사용하면 된다. login은 session객체를 만드는 것,
logout은 session을 없애는 것이다. -->