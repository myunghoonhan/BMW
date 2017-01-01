<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.DBBean"%>
<%@page import="dto.ZipcodeDto"%>
<%@page import="java.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String check = request.getParameter("check"); //check 첨에 y 그리고 submit시 n을 가리킴
	String area3 = request.getParameter("area3"); //area3은 개포1동을 가리킴
	Vector<ZipcodeDto> zipcodeList = new Vector<ZipcodeDto>();

	DBBean manager = DBBean.getInstance();

	zipcodeList = manager.zipCheck(area3);
	int totalList = zipcodeList.size();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우편번호 검색</title>
<link href="style/css" rel="stylesheet" type="text/css">
<script language="javascript" src="../js/script.js"></script>
<script>
	function dongCheck() {
		if (document.zipForm.area3.value == "") {
			alert("동이름을 입력");
			document.zipForm.area3.focus();
			return;
		}
		document.zipForm.submit(); // hidden n 값을 전송해준다
	}
	function sendAddress(zipcode, area1, area2, area3, area4) {
		var address = area1 + " " + area2 + " " + area3 + " " + area4;
		opener.document.regForm.mem_zipcode.value = zipcode;
		opener.document.regForm.mem_address.value = address;
		self.close();
	}
</script>
</head>
<body bgcolor="#FFFFCC">
	<center>
		<b>우편번호 찾기</b>
		<form name="zipForm" method="POST" action="ZipCheck.jsp">
			<table>
				<tr>
					<td><br> 동이름 입력: <input name="area3" type="text">
						<input type="button" value="검색" onClick="dongCheck();"></td>
				</tr>
				<input type="hidden" name="check" value="n">
				<%	if (check.equals("n")) { %>
				<br>
					<%	if (zipcodeList.isEmpty()) { %>
				<tr>
					<td align="center"><br>검색된 결과가 없습니다.</td>
				</tr>
				<%	} else { %>
				<tr>
					<td align="center"><br> ※검색 후, 아래 우편번호를 클릭하면 자동으로 입력됩니다.</td>
				</tr>
				<%
						for (int i = 0; i < totalList; i++) {
								ZipcodeDto zip = (ZipcodeDto) zipcodeList.elementAt(i);
								String tempZipcode = zip.getZipcode();
								String tempArea1 = zip.getArea1();
								String tempArea2 = zip.getArea2();
								String tempArea3 = zip.getArea3();
								String tempArea4 = zip.getArea4();
				%>
				<tr>
					<td><a
						href="javascript:sendAddress('<%=tempZipcode%>','<%=tempArea1%>','<%=tempArea2%>','<%=tempArea3%>','<%=tempArea4%>')">
							<%=tempZipcode%>&nbsp; <%=tempArea1%>&nbsp; <%=tempArea2%>&nbsp;
							<%=tempArea3%>&nbsp; <%=tempArea4%>
					</a> <br> 
				<%
				 			}
				 		}
				 	}
				 %>
 				</td>
				</tr>
				<tr>
					<td align="center"><br> <a
						href="javascript:this.close();">닫기</a></td>
				</tr>
			</table>
		</form>
	</center>

</body>
</html>