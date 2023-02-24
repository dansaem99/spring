<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<%
	String site = request.getParameter("site");
	if(site == null) site = "";
	
	switch(site) {
	case "daum":	
%>
	<c:redirect url='http://daum.net'/>
<%
	case "naver":
%>
	<c:redirect url='http://naver.com'/>
<%	
	default:
%>
	<c:redirect url='siteIn.jsp?msg=select a site.'/>
<%
	}
%>
<%-- 과제:
다음 또는 네이버를 선택하고, 폼을 제출한다.
해당 사이트로 이동한다.

미완성된 폼을 제출하면, 다시 폼으로 돌아온다.
위 경우, 폼 아래에 에러메세지를 출력한다.
--%>