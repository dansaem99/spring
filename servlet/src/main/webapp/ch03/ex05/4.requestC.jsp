<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%= request.getAttribute("user") %>

<!-- 이때 request의 scope는 죽어버린다. -->