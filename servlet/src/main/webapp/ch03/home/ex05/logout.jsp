<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	session.invalidate();
%>
<c:redirect url='main.jsp'/>

<!-- 
	과제: 메인에서 로그인 링크를 누르면, 로그인 폼으로 이동한다.
	로그인 폼에서, 아이디/암호를 입력하고, 로그인 폼을 제출한다.
	이때, 아이디/암호는 java/java 이다.
	
	로그인 성공 시, (proc에서 처리)
	메인에 'java님, 환영합니다.' 를 출력한다.
	위 환영 메세지 옆에 로그아웃 링크를 나란히 출력한다.
	위 로그아웃 링크를 누르면, 로그아웃 후(로그아웃 jsp), 
	메인으로 이동한다.

	로그인 실패시, 
	로그인 폼으로 이동한다.
	위 폼 아래 에러 메세지를 출력한다.
 -->