<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dao.TheaterDao"%>

<% request.setCharacterEncoding("UTF-8"); %>
<%
   String mem_id = request.getParameter("mem_id"); //폼에서 넘어온 것? id값!
   TheaterDao manager = TheaterDao.getInstance(); //DBBean을 만들어 놓음! 
   int check = manager.confirmId(mem_id); //DBBean에서 받아오려면, 메소드 구현 필요.
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <table border=0 align = "center">
      <tr>
         <td align = "center">
         <%
            if(check == 1){  //ID가 중복인 경우
         %> <br>
         <%= mem_id %>는 이미 존재하는 ID입니다. &nbsp;<br><br>
         <input type="button" value="닫기" onClick="javascript:self.close();
               opener.document.regForm.mem_id.focus();">
         <% }else{ %>
         <br>
         <%= mem_id %>는 사용가능한 ID입니다. &nbsp;<br><br>
         <input type="button" value="닫기" onClick="javascript:self.close();
                 opener.document.regForm.mem_passwd.focus();">
         <% } %>
         </td>
      </tr>
   </table>
</body>
</html>