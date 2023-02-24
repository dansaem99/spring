<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action='siteProc.jsp'>
	<input type='radio' name='site' value='daum'/>다음
	<input type='radio' name='site' value='naver'/>네이버
	<input type='submit'/>
</form>
<%
	String msg = request.getParameter("msg");
%>
<%= msg != null ? msg : "" %>