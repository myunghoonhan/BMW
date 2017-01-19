<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%	request.setCharacterEncoding("UTF-8"); %>

<%@ page import="dto.MemberDto"%>
<%@ page import="dto.TmemberBean"%>
<%@ page import="dao.TheaterDao"%>
<!-- 수정중  -->
<%@ page
	import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy, java.util.*, java.io.* "%>

<%
	//String savePath =  application.getRealPath("/image/profile_img");
	//String savePath = "C:/MHHan/JSP_Example/workspace/TheaterProject/WebContent/src/image/profile_img";
	String savePath =  "C:/MHHan/JSP_workspace/git/TheaterProject/WebContent/src/image/profile_img";
	int maxSize = 10 * 1024 * 1024;
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());

	//MemberDto modify = new MemberDto();
	TmemberBean bean = new TmemberBean();
	Enumeration params = multi.getParameterNames(); //파라미터 id,phone,email받아오기
	
	while (params.hasMoreElements()) {

		String name = (String) params.nextElement();
		String value = multi.getParameter(name);

		if (name.equals("id")) { //새 비밀번호가 여기 들어가야될것으로 예상
			bean.setId(value);
		}
		if (name.equals("name")) {
			bean.setName(value);
		}
		if (name.equals("phone")) {
			bean.setPhone(value);
		}
		/* if (name.equals("email")) {
			bean.setEmail(value);
		} */
	}

	Enumeration files = multi.getFileNames(); //파일 정보 받기
	if (files.hasMoreElements()) { // 이미지 파일이 있으면
		String name = (String) files.nextElement();
		String filename = multi.getFilesystemName(name);
		
		if(filename == null){
			bean.setProfile(null);
		}else{
			bean.setProfile(request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+"/TheaterProject/src/image/profile_img/"+filename);
		}
		
		TheaterDao tdao = TheaterDao.getInstance();

		if (tdao.updateProfile(bean)) {
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