<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%	request.setCharacterEncoding("UTF-8"); %>

<%@ page import="dto.MemberDto"%>
<%@ page import="dao.DBBean"%>

<%@ page
	import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy, java.util.*, java.io.* "%>

<%
	//String savePath =  application.getRealPath("/image/profile_img");
	//String savePath = "C:/MHHan/JSP_Example/workspace/TheaterProject/WebContent/src/image/profile_img";
	String savePath =  "C:/MHHan/JSP_workspace/git/TheaterProject/WebContent/src/image/profile_img";
	int maxSize = 10 * 1024 * 1024;
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());

	MemberDto modify = new MemberDto();
	Enumeration params = multi.getParameterNames(); //파라미터 id,phone,email받아오기
	while (params.hasMoreElements()) {

		String name = (String) params.nextElement();
		String value = multi.getParameter(name);

		if (name.equals("mem_id")) {
			modify.setMem_id(value);
		}
		if (name.equals("mem_phone")) {
			modify.setMem_phone(value);
		}
		if (name.equals("mem_email")) {
			modify.setMem_email(value);
		}
	}

	Enumeration files = multi.getFileNames(); //파일 정보 받기
	if (files.hasMoreElements()) { // 이미지 파일이 있으면
		String name = (String) files.nextElement();
		String filename = multi.getFilesystemName(name);
		
		if(filename == null){
			modify.setMem_images(null);
		}else{
			modify.setMem_images(request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+"/TheaterProject/src/image/profile_img/"+filename);
		}
		
		DBBean manager = DBBean.getInstance();

		if (manager.updateProfile(modify)) {
			response.sendRedirect("../view/mypage.jsp");
		} else {
			out.println("<script>alert('프로필 수정 중 오류가 발생했습니다. 다시 시도해주세요.'); history.back();</script>");
		}

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