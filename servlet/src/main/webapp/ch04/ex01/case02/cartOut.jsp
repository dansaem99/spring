<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList ' %>
<%@ page import='java.util.StringTokenizer'%>
<a href='main.html'>진열대</a>
<%
	List<String> cart = new ArrayList<>();

	StringTokenizer st = null;
	Cookie[] cookies = request.getCookies();
	
	for(Cookie cookie: cookies) {
		if(cookie.getName().equals("cart")) {
			String tmp = cookie.getValue();
			st = new StringTokenizer(tmp, "/");
			//hasMoreTokens() 남아있는 토큰이 있는지 여부
			while(st.hasMoreTokens())
				//nextToken() 토큰을 하나씩 꺼내옴
				cart.add(st.nextToken());
		}
	}
	
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
	} else out.print("물건이 없습니다.");
%>