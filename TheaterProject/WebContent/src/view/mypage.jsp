<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dto.MemberDto"%>
<%@ page import="dao.TheaterDao"%>

<% request.setCharacterEncoding("UTF-8"); %>

<%
	String mem_id = (String) session.getAttribute("idKey");

	if (mem_id == null) {
		response.sendRedirect("index.jsp");
	} else {

		TheaterDao manager = TheaterDao.getInstance();
		MemberDto myinfo = manager.selectMember(mem_id);

		String mem_name = myinfo.getMem_name();
		String mem_email = myinfo.getMem_email();
		String mem_phone = myinfo.getMem_phone();
		String mem_image = myinfo.getMem_image();
		
		if(mem_image == null){
			mem_image="../image/profile_img/profile_default.png";   //이미지값이 null이면 기본 이미지 값 할당
		}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link rel="stylesheet" href="../css/style.css">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
<script type="text/javascript"	src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#imgInp").on('change', function() {  //input file이 실행되면 readURL 실행
			readURL(this);
		});
		
		/* $('#settingBtn').click(); */
	});
	
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);  			//회원수정 img의 src를 타겟으로 바꿈
			}
			var fname = document.getElementById('imgInp').value;  	//input file의 value 가져옴
			var fext = fname.substr(fname.length-3).toLowerCase(); 	//value의 끝자리 3자리가
			if(fext == 'jpg' || fext == 'png'){						//jpg,png이면 input file의 값을 선택한걸로 바꿈
				reader.readAsDataURL(input.files[0]);
			}else{													//jpg 나 png 파일이 아니면 input file의 value를 null로
				alert(".jpg 혹은 .png 파일이 아닙니다."); //알림창
				document.getElementById('imgInp').value=""; 		//input file의 value를 null로
				$('#blah').attr('src', "<%=mem_image%>");  			//회원수정 사진을 다시 getMem_image의 값으로
			}
		}
	}
	
	
</script>
</head>

<body>

	<jsp:include page="./component/header.jsp">
		<jsp:param value="navbar-static-top" name="navbar_style" />
	</jsp:include>

	<main id="main_mypage">
	<div class="container">
		<div class="jumbotron">
			<div style="float: right; margin: 0 10px 0 0;">
				<a href=# ><img id="settingBtn" src="../image/setting.png" data-toggle="modal" data-target="#mypageModal" style="width: 23px; height: 23px;"></a>
			</div>
			<div class="row">
				<div class="col-xs-12 col-sm-4" style="margin-bottom: 10px">
					<img src=<%=mem_image%> class="img-responsive img-circle" alt="Responsive image" style="z-index: 1; margin: 0 auto; width: 300px; height: 300px;  max-width: none;">
				</div>

				<div class="col-xs-12 col-sm-8">
					<table style="margin: 0 auto;">
						<tr>
							<td class="list_title">이름</td>
							<td style="font-size: 30px"><b><%=mem_name%></b></td>
						</tr>
						<tr>
							<td class="list_title">핸드폰번호</td>
							<td style="font-size: 20px"><%=mem_phone%></td>
						</tr>
						<tr>
							<td class="list_title">이메일</td>
							<td style="font-size: 20px"><%=mem_email%></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	</main>

	<!--Modal mypage  -->
	<div class="modal fade" id="mypageModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">

			<form name="update_profile" method="POST"
				enctype="multipart/form-data" action="../controller/UpdateProfile.jsp">
				<div class="form-group">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">프로필 수정</h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<!-- file -->
								<label for="imgInp" style="cursor: pointer;"> <!--label클릭시 for속성에 의해 id=imgInp인 input file이 실행된다-->
									<img for="imgInp" src="../image/camera.png"	class="img-responsive" alt="Responsive image" style="z-index: 1; position: absolute; left: 50%; top: 50%; margin: -105px 0 0 -35px; width: 70px; height: 70px">
									<input type="file" name="mem_image" id="imgInp"	style="position: absolute; left: 50%; top: 50%; margin: -65px 0 0 -35px; width: 0px;">
								</label>

								<div class="col-xs-12" style="margin-bottom: 10px;">
									<!-- 회원수정 프로필 사진 -->
									<img id="blah" src=<%=mem_image%> class="img-responsive img-circle" alt="Responsive image" style="margin: 0 auto; width: 300px; height: 300px;">
								</div>

								<div class="col-xs-12" style="margin-bottom: 10px">
									<small>이메일</small>
									<input id="modal-email" type="text" name="mem_email" class="form-control" placeholder="이메일" value=<%=mem_email%> style="height: 50px">
								</div>
								<div class="col-xs-12">
									<small>전화번호</small>
									<input type="text" name="mem_phone" class="form-control" placeholder="전화번호" value=<%=mem_phone%> style="height: 50px">
								</div>
							</div>
						</div>
						<input type="hidden" name="mem_id" value=<%=mem_id%>>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">수정</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<jsp:include page="./component/footer.jsp"></jsp:include>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
<% } %>
</html>
