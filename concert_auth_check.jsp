<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//사용자가 입력한 인증번호
	String code = request.getParameter("code");
	//랜덤으로 생성된 인증번호 값
	String aCode = (String)session.getAttribute("auth_code");
	
	if(code.equals(aCode)){
		session.setAttribute("auth_pass", true);
		response.sendRedirect("concert_reserve.jsp");
	}else{
%>
		<script type="text/javascript">
		alert("인증코드 불일치. 다시 인증바람 ");
		history.back();
		</script>
<%	} %>
	



