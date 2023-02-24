<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%
	User user = (User)request.getAttribute("user");
%>
<jsp:forward page='4.requestC.jsp'/>