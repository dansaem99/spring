<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%! //declaration => 선언부는 jsp페이지의 스크립트릿이나 표현식에서 
	//사용할 수 있는 함수를 작성할깨 사용된다.
	public int add(int num1, int num2) {
	return num1 + num2;
	}
	int num1 = 1;
%>
<%
	int num2 =2;
%>
<%= num1 %> + <%= num2 %> = <%= add(num1, num2) %>