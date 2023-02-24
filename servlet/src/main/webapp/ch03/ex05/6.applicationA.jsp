<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%
	application.setAttribute("user", new User("최한석", 12));
%>
<a href='6.applicationB.jsp'>view</a>