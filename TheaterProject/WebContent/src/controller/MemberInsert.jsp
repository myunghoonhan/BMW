<%@page import="org.apache.catalina.ha.backend.Sender"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<%@ page import="dto.MemberDto" %>
<%@ page import="dao.TheaterDao" %>

<%
	String mem_id = request.getParameter("mem_id");
	String mem_passwd = request.getParameter("mem_passwd");
	String mem_name = request.getParameter("mem_name");
	String mem_num1 = request.getParameter("mem_num1");
	String mem_num2 = request.getParameter("mem_num2");
	String mem_email = request.getParameter("mem_email");
	String mem_phone = request.getParameter("mem_phone");
	String mem_zipcode = request.getParameter("mem_zipcode");
	String mem_address = request.getParameter("mem_address");
%>

<%
	MemberDto modify = new MemberDto();
	modify.setMem_id(mem_id);
	modify.setMem_passwd(mem_passwd);
	modify.setMem_name(mem_name);
	modify.setMem_num1(mem_num1);
	modify.setMem_num2(mem_num2);
	modify.setMem_email(mem_email);
	modify.setMem_phone(mem_phone);
	modify.setMem_zipcode(mem_zipcode);
	modify.setMem_address(mem_address);

	
	TheaterDao manager = TheaterDao.getInstance();
	
	if(manager.insertMember(modify)){
		out.println("<script>alert('회원가입이 완료되었습니다. 정상 로그인이 가능합니다.'); history.back(); </script>");
	}else{
		out.println("<script>alert('회원가입 중 오류가 발생했습니다. 다시 시도해주세요.'); history.back();</script>");
	}	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>