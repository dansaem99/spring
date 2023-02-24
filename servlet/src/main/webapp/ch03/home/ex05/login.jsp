<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<form action='loginProc.jsp' method='post'>
		ID: <input type='text' name='userId'/><br>
		PW: <input type='password' name='pw'/><br>
		<button type='submit'>로그인</button>
</form>

<%
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg);
%>

<!-- 로그인 창은 반드시! 메소드가 post여야 한다.
왜냐하면, get일 경우 password가 queryString이 되면서
노출되기 때문이다. -->