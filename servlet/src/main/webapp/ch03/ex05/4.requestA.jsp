<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%
	request.setAttribute("user", new User("최한석", 12));
%>

<jsp:forward page='4.requestB.jsp'/>