<%-- page directive --%>
<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<% //scriptlet 이 안에는 자바코드로 작성하는거다.
	int num1 = 1;
	int num2 = 2;
%>
<h2>더하기</h2>
<!-- 이건 중간에 자바코드를 적어 사용할 수 있다. expression-->
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %> 