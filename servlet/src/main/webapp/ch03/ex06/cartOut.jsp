<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<a href='main.html'>메인</a>
<h3>장바구니</h3>
<%
	Object cartObj = session.getAttribute("cart");

	if(cartObj != null) {
		List<String> cart = (List<String>)cartObj;
		if(cart.size() > 0) {
%>
		<ul>
<%
			for(String product: cart) {
%>		
				<li><%= product %></li>
				
<%
			}
%>
		
		</ul>
		
<%
		} else out.println("장바구니에 물건이 없습니다.");
	} else out.println("장바구니가 없습니다.");
%>