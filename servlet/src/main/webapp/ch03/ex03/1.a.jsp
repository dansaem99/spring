<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
A
<%
	RequestDispatcher dispatcher = request.getRequestDispatcher("1.b.jsp");
	//forward이 저 위 주소 b한테 던졌다. 그래서 a에서 b로 이동한거다.
	// a의 속성을 b에 줘서 a와 b는 같다.
	dispatcher.forward(request, response);
%>