<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css">
<script language="javascript" src="../js/script.js"></script>
<script type="text/javascript"	src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
$(function() {
	
	$(".modal").on("hidden.bs.modal", function(){
	    $(this).find('form')[0].reset();
	});
	
});
</script>
<%
	String mem_id = (String) session.getAttribute("idKey");
	String navbar_style = request.getParameter("navbar_style");
	StringBuffer url = request.getRequestURL();
%>
</head>
<body>

   <header>
   
    <nav id="header_navbar_default" class="navbar navbar-default <%=navbar_style%>" role="navigation">

      <div class="container-fluid">

        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp">
            <img class="img_index" alt="Brand" src="../image/theater_logo.gif">
          </a>
        </div>
		
        <!-- Collect the nav links, forms, and other content for toggling -->
        
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-left">
            <li><a href="about.jsp" class="head_link_default">ShowYou란</a></li>
            <li><a href="vision.jsp" class="head_link_default">고객센터</a></li>
          </ul>
			
          <ul class="nav navbar-nav navbar-right">
         
          	<%
				if (mem_id != null) {
			%>
         	 <li>
         		<li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
                  <%=mem_id%> 님
                  <span class="caret"></span>
                </a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="mypage.jsp">마이페이지</a></li>
                  <li role="presentation" class="divider"></li>
                <%--   <li role="presentation"><a role="menuitem" tabindex="-1" href="../controller/LogOut.jsp?url=<%=url%>">로그아웃</a></li> --%>
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="../../LoginOut.do?url=<%=url%>">로그아웃</a></li>
                </ul>
              </li>
         	</li>
          <%
          	}else{
          %>
         	 <li><a href="#" class="head_link_default" data-toggle="modal" data-target="#loginModal">로그인</a></li>
          	 <!-- <li><a href="#" class="head_link_default" data-toggle="modal" data-target="#registerModal">회원가입</a></li> -->
          	 <li><a href="#" class="head_link_default" data-toggle="modal" data-target="#registerChoice">회원가입</a></li>
          <%
          	}
          %>
            <li>
              <form class="navbar-form navbar-right" role="search">
                <div class="form-group">
                  <input type="text" class="form-control" placeholder="공연 제목" size="20">
                </div>
                <button type="submit" class="btn btn-default">찾기</button>
              </form>
            </li>
          </ul>
          
        </div><!-- /.navbar-collapse -->

      </div><!-- /.container-fluid -->
    </nav>
  </header>

  <!-- Modal Login-->
  <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">

      <form name="login" method="POST" action="../../LoginProc.do">
      	<input type="hidden" name="url" value="<%=url%>">
        <div class="form-group">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">로그인</h4>
            </div>
            <div class="modal-body">
              <div class="row">
                <div class="col-sm-12" style="margin-bottom: 10px">
                  <input type="text" name="mem_id" class="form-control" placeholder="아이디" style="height: 50px">
                </div>
                <div class="col-sm-12" style="margin-bottom: 10px">
                  <input type="password" name="mem_passwd" class="form-control" placeholder="비밀번호" style="height: 50px">
                </div>
                <div class="col-sm-12">
                  <button type="submit" class="btn btn-primary" style="height: 50px; width: 100%">로그인</button>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-success" data-dismiss="modal" data-toggle="modal" data-target="#registerChoiceModal">회원가입</button>
            </div>
          </div>
        </div>
      </form>

    </div>
  </div>
  
  <!-- Modal Register Choice-->
  <div class="modal fade" id="registerChoiceModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">회원가입 방법</h4>
            </div>
            <div class="modal-body">
              <div class="row">
                <div class="col-sm-6" style="margin-bottom: 10px">
                  <button type="button" class="btn btn-success" data-dismiss="modal" data-toggle="modal" data-target="#normalregisterModal">일반회원가입</button>
                </div>
                <div class="col-sm-6" style="margin-bottom: 10px">
                  <button type="button" class="btn btn-success" data-dismiss="modal" data-toggle="modal" data-target="#simpleregisterModal">간편회원가입</button>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
	
    </div>
  </div>

  <!-- Modal Normal Register-->
  <div class="modal fade" id="normalregisterModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">

      <!-- <form name="regForm" method="POST" action="../controller/MemberInsert.jsp"> -->
      <form name="regForm" method="POST" action="../../MemberInsert.do">
        <div class="form-group">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">회원가입</h4>
            </div>
            <div class="modal-body">
              <div class="row">
                <div class="col-xs-9" style="margin-bottom: 10px; padding-right: 3px;">
                  <input type="text" name="mem_id" id="id" class="form-control" placeholder="아이디">
                </div>
                <div class="col-xs-3" style="margin-bottom: 10px; padding-left: 0px;">
                  <button type="button" class="btn btn-primary" onclick="idCheck(this.form.mem_id.value)">중복확인</button>
                 <!--  <button type="button" class="btn btn-primary" onclick="checkid()">중복확인</button> -->
                </div>

                <div class="col-sm-12" style="margin-bottom: 10px">
                  <input type="password" name="mem_passwd" class="form-control" placeholder="비밀번호">
                </div>
                <div class="col-sm-12" style="margin-bottom: 25px">
                  <input type="password" name="mem_repasswd" class="form-control" placeholder="비밀번호 확인">
                </div>
                <div class="col-sm-12" style="margin-bottom: 10px">
                  <input type="text" name="mem_name" class="form-control" placeholder="이름">
                </div>

                <div class="col-xs-5" style="margin-bottom: 10px; padding-right: 3px;">
                  <input type="text" name="mem_num1" class="form-control" placeholder="주민등록번호 앞자리" onKeyUp="if(this.value.length==6)regForm.mem_num2.focus();">
                </div>
                <div class="col-xs-5" style="margin-bottom: 10px; padding-left: 0px; padding-right: 3px;">
                  <input type="text" name="mem_num2" class="form-control" placeholder="주민등록번호 뒷자리">
                </div>
                <div class="col-xs-2" style="margin-bottom: 10px; padding-left: 0px;">
                  <button type="button" class="btn btn-primary" onClick="juminCheck(this.form.mem_num1.value, this.form.mem_num2.value)">확인</button>
                </div>

                <div class="col-xs-10" style="margin-bottom: 10px; margin-top: 15px; padding-right: 3px;">
                  <input type="text" name="mem_zipcode" class="form-control" placeholder="우편번호">
                </div>
                <div class="col-xs-2" style="margin-bottom: 10px; margin-top: 15px;  padding-left: 0px;">
                  <button type="button" class="btn btn-primary" onclick="zipCheck()">찾기</button>
                </div>
                <div class="col-sm-12" style="margin-bottom: 10px;">
                  <input type="text" name="mem_address" class="form-control" placeholder="주소">
                </div>

                <div class="col-sm-12" style="margin-bottom: 10px">
                  <input type="text" name="mem_email" class="form-control" placeholder="이메일 ex)example@example.com">
                </div>
                <div class="col-sm-12" style="margin-bottom: 25px">
                  <input type="text" name="mem_phone" class="form-control" placeholder="전화번호 ex)000-000-0000">
                </div>

                <div class="col-sm-12">
                  <button type="button" class="btn btn-success" onclick="inputCheck()" style="height: 50px; width: 100%">회원가입</button>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </form>

    </div>
  </div>
  
   <!-- Modal Simple Register-->
  <div class="modal fade" id="simpleregisterModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">

      <!-- <form name="regForm" method="POST" action="../controller/MemberInsert.jsp"> -->
      <form name="regForm" method="POST" action="../../MemberInsert.do">
        <div class="form-group">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">회원가입</h4>
            </div>
            <div class="modal-body">
              <div class="row">
                <div class="col-xs-9" style="margin-bottom: 10px; padding-right: 3px;">
                  <input type="text" name="mem_id" id="id" class="form-control" placeholder="아이디">
                </div>
                <div class="col-xs-3" style="margin-bottom: 10px; padding-left: 0px;">
                  <button type="button" class="btn btn-primary" onclick="idCheck(this.form.mem_id.value)">중복확인</button>
                 <!--  <button type="button" class="btn btn-primary" onclick="checkid()">중복확인</button> -->
                </div>

                <div class="col-sm-12" style="margin-bottom: 10px">
                  <input type="password" name="mem_passwd" class="form-control" placeholder="비밀번호">
                </div>
                <div class="col-sm-12" style="margin-bottom: 25px">
                  <input type="password" name="mem_repasswd" class="form-control" placeholder="비밀번호 확인">
                </div>
                <div class="col-sm-12" style="margin-bottom: 10px">
                  <input type="text" name="mem_name" class="form-control" placeholder="이름">
                </div>

                <div class="col-xs-5" style="margin-bottom: 10px; padding-right: 3px;">
                  <input type="text" name="mem_num1" class="form-control" placeholder="주민등록번호 앞자리" onKeyUp="if(this.value.length==6)regForm.mem_num2.focus();">
                </div>
                <div class="col-xs-5" style="margin-bottom: 10px; padding-left: 0px; padding-right: 3px;">
                  <input type="text" name="mem_num2" class="form-control" placeholder="주민등록번호 뒷자리">
                </div>
                <div class="col-xs-2" style="margin-bottom: 10px; padding-left: 0px;">
                  <button type="button" class="btn btn-primary" onClick="juminCheck(this.form.mem_num1.value, this.form.mem_num2.value)">확인</button>
                </div>

                <div class="col-xs-10" style="margin-bottom: 10px; margin-top: 15px; padding-right: 3px;">
                  <input type="text" name="mem_zipcode" class="form-control" placeholder="우편번호">
                </div>
                <div class="col-xs-2" style="margin-bottom: 10px; margin-top: 15px;  padding-left: 0px;">
                  <button type="button" class="btn btn-primary" onclick="zipCheck()">찾기</button>
                </div>
                <div class="col-sm-12" style="margin-bottom: 10px;">
                  <input type="text" name="mem_address" class="form-control" placeholder="주소">
                </div>

                <div class="col-sm-12" style="margin-bottom: 10px">
                  <input type="text" name="mem_email" class="form-control" placeholder="이메일 ex)example@example.com">
                </div>
                <div class="col-sm-12" style="margin-bottom: 25px">
                  <input type="text" name="mem_phone" class="form-control" placeholder="전화번호 ex)000-000-0000">
                </div>

                <div class="col-sm-12">
                  <button type="button" class="btn btn-success" onclick="inputCheck()" style="height: 50px; width: 100%">회원가입</button>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </form>

    </div>
  </div>

</body>
</html>