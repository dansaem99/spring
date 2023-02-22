<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.time.LocalDate' %>
<%@ page import='java.util.Date' %>

<%
	LocalDate today = LocalDate.now();
	Date today2 = new Date();	
%>
<%= today %> <br>
<%= today2 %>