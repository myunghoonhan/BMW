<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.TheaterDao"%>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%
    	String mem_id = request.getParameter("mem_id");
    	String mem_passwd = request.getParameter("mem_passwd");
    	String url = request.getParameter("url");
    %>
    
    <%
    	TheaterDao manager = TheaterDao.getInstance();
    	int check = manager.userCheck(mem_id, mem_passwd);
    	
    	if(check == 1){ //ID가 맞으면
    		session.setAttribute("idKey", mem_id);
    		response.sendRedirect(url);

    	}else if(check == 0){ //ID가 맞고 비밀번호가 틀린 경우
    %>
	<script language="javascript">
		url="LoginError.jsp?check=0";
		window.open(url, "post1", "toolbar=no, width= 300, height= 150");
	</script>
	<%
    	}
    	else{
	%>
	<script language="javascript">
		url="LoginError.jsp?check=-1";
		window.open(url, "post2", "toolbar=no, width= 300, height= 150");
	</script>
	
	<%
		}
	%>
	
	
	
	
	
	
