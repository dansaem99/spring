<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='ch03.ex05.User' %>
<%
	pageContext.setAttribute("user", new User("최한석", 12));
	User user = new User("한아름", 42);
%>
<%= pageContext.getAttribute("user") %>
<%= user %>

<%-- 화면에 유저 정보를 출력하고 있다 --%>