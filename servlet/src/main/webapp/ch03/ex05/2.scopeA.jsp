<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	pageContext.setAttribute("one", "페이지");
	request.setAttribute("two", "리퀘스트");
	session.setAttribute("three", "세션2");
	application.setAttribute("four", "애플리케이션2");
%>

<c:redirect url='1.scopeB.jsp'/>

<!-- one이나 two라는 attribution은 없었다는 것을 알 수 있다.
	a에서 b로 이동할때 scope이 끝나버린 one과 two는 데이터가 사라진다. -->