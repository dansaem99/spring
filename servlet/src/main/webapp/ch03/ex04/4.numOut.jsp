<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String numStr = request.getParameter("num");

	try {
		int num = Integer.parseInt(numStr);
%>
		<%= num * 2 %>
		<a href='4.numIn.jsp'>back</a>
		<%-- 변수 numStr이 null이 나올 수 있어서 나눴다. --%>
<% 
	} catch(NumberFormatException e) {
%>
		<%-- 과제: numIn.jsp form 에 에러메세지(영어)를 출력하라. --%>
		<c:redirect url='4.numIn.jsp?msg=input number.'/>
<%
	}
%>
