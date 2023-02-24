<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	Object userId = session.getAttribute("userId");
	if(userId == null) {
%>
	<a href = 'login.jsp'>로그인</a>

<%
	} else {
%>

	<%= userId %>님, 환영합니다. &nbsp;
	<a href='logout.jsp'>로그아웃</a>
	
<%
	}
%>

<!-- 로그인을 할 때 password는 DB에서 필요할때마다 꺼내 써야지
	앱 상에 저장해 놓으면 위험하다. 그러므로 유저를 구분할 때
	userId를 사용하면 된다. -->
	
<!-- session에서 userId가 존재하면 로그인 후 화면
	userId가 없으면, 첫 화면이다. -->
	
<!-- 해당페이지를 지배하고 있는 알고리즘은 toggle이다. -->