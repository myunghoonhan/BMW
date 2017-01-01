<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String checked = request.getParameter("check");
	int check = Integer.parseInt(checked);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border=0 align="center">
		<tr>
			<td align="center">
				<%
					if (check == 0) {
				%> <br> 비밀번호가 맞지 않습니다. &nbsp;<br> <br> <input
				type="button" value="다시쓰기"
				onClick="javascript:self.close();window.opener.location='../view/index.jsp'" /> <!--  view-->
				<%
					} else {
				%> <br> 해당하는 ID가 없습니다.&nbsp;<br> <br> <input
				type="button" value="다시쓰기"
				onClick="javascript:self.close();window.opener.location='../view/index.jsp'" /> <!--  view-->
				<%
					}
				%>
			</td>
		</tr>
	</table>

</body>
</html>