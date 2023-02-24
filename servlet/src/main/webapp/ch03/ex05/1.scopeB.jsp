<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<li><%= pageContext.getAttribute("one") %></li>
	<li><%= request.getAttribute("two") %></li>
	<li><%= session.getAttribute("three")%> </li>
	<li><%= application.getAttribute("four") %></li>
</ul>

<!-- 
pageContext:  scope은 현재페이지가 실행되는 동안이다.
request:      scope은 클라이언트가 보낼때 살아나고 
           request를 클라이언트로 보내기 직전까지 살아있다.
session:      나만의 공간, 로그아웃, 로그인을 구현할때 사용한다.
            session 객체가 생성되고 삭제될 때까지 scope가 유지된다.
            톰캣이 idle 타임을 재서 강제로 죽이거나,
            session.invalidate()를 사용해서 죽인다.
application:  모든 사용자가 공유하는 공간이다. 
           scope은 앱이 시작되면 존재하고 앱이 종료되면 사라진다.
 -->
 
 <!-- 
 1) request   : 사용자가 요청한 정보를 관리하는 객체이다.
            HttpServletRequest request
 2) response  : 요청한 사용자에게 응답을 관리하는 객체이다.
             HttpServletResponse response
 3) session   : 요청한 사용자를 개별적으로 구분하기 위한 객체이다.
            HttpSession session
 5) application : 모든 사용자가 공유하는 값 또는 서버에 대한 정보를 관리하는 객체이다.
               ServletContext application
 6) pageContext : JSP, JSTL, EL 등 현재 페이지에서 서로 다른 문법과의 값을 교류한다.
  -->