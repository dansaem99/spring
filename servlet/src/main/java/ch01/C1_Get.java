package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//직접 수동으로 해당 class에 url을 준다.
@WebServlet("/ch01/get/add")
public class C1_Get extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) 
		throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		//html <head> <meta>로 표현한 내용과 같다.
		res.setContentType("text/html; charset=utf-8"); //num1
		PrintWriter out = res.getWriter(); //res에서 자식객체 out을 빼낸다.
		out.println("<h2>GET</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
}

/* 리퀘스트 메소드중에 기본값은 get이다. 
 * extends HttpServlet를 함으로써 서블릿이 된 것이다.
 * 
 * doGet() : tomcat은 doGet()을 call한다. req 객체에는 클라이언트가 보낸
 * 데이터가 들어있다. 이러한 text를 오브젝으로 파싱해서 req안에 넣어준다.
 * 우리가 할 일은 res를 채우는 것이다. 이는 대부분 html 코드로 채운다.
 */


/*
 * 메시지 요청된 리소스 [/servlet/servlet/ch01.C1_Get]은(는) 가용하지 않습니다.
 * tomcat이 해당 자원을 찾을 수 없습니다.
 * 
 * http://localhost/servlet/servlet/ch01.C1_Get
 * localhose : 내 pc의 url localhost :80과 같다.
 * port번호 80 아이피 주소 127.0.0.1.5
 * 자바 response를 http response로 변환 시키는 복잡한 작업들을 tomcat이 한다.
 */

//서버에서는 java코드가, 클라이언트는 http 코드가 실행된다.

/*
 * hr과제 할 때에는 2번째 이후에는 ajax를 사용해서 request 보내서 노동자 
 * 정보를 json 형태로 보내면 된다... 
 */

// root directory  /ch01/a.html
