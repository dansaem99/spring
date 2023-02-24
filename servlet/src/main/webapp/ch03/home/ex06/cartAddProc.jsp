<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String[] products = request.getParameterValues("product");
	//장바구니는 session에 담아있다.
	if(products != null && products.length > 0) { 
		List<String> cart = null;
		//session.getAttribute("cart");  장바구니를 꺼내다
		Object cartObj = session.getAttribute("cart");
		if(cartObj == null) {
			cart = new ArrayList<>();
			session.setAttribute("cart", cart);
		} else cart = (List<String>)cartObj;
		
		for(String product: products)
			cart.add(product);
	} else {
%>

		<c:redirect url='main.jsp'>
			<c:param name='msg' value='장바구니에 담을 물건을 선택하세요.'/>
		</c:redirect>
<%
	}
%>
<!-- return이 2개가 있다 21-23번 28번 2개 -->
<c:redirect url='cartOut.jsp'/>

<!-- 여러페이지에 들락 날락 하면서 물건을 담을테니, session에 담는다. -->