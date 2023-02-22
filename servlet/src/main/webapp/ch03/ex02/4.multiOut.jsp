<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%
	//Values 여서 여러개
	String[] letters = request.getParameterValues("letter");
	String gender = request.getParameter("gender");
	String[] jobs = request.getParameterValues("job");
%>
<%-- 과제: letters를 iteration해서 출력하라. --%>
<%
	if(letters != null)
		for(String letter: letters) {
%>
	<%= letter %> &nbsp;
<%
	}
%> <br>

<%= gender %> <br>

<%
	if(jobs != null)
		for(String job: jobs) {
%>
		<%= job %> &nbsp;
<%
	}
%>