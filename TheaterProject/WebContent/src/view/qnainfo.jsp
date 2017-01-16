<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>

<link rel="stylesheet" href="../css/style.css">
<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>

	<jsp:include page="./component/header.jsp">
		<jsp:param value="navbar-static-top" name="navbar_style" />
	</jsp:include>

	<main>
		<div class="container">
			<div class="row">
				<div class="col-xs-12" >
					<h1>Q&A-게시글</h1>
					<table class="table table-bordered">
						<thead>
						</thead>
						<tbody>
							<tr height="40">
								<td width="120">글번호</td>
								<td width="180">1</td>
								<td width="120">작성일</td>
								<td width="180">2017.12.05 16:40</td>
								<td width="120">조회수</td>
								<td width="180">5</td>
							</tr>
							<tr height="40">
								<td width="120">글제목</td>
								<td width="180" colspan="3">결제는 어떻게 하나요?</td>
								<td width="120">작성자</td>
								<td width="180">theh1001님</td>
							</tr>
							<tr height="40">
								<td width="120" style="vertical-align: middle;">게시글</td>
								<td colspan="5"><div class="well well-lg" style="margin-bottom: 0px">제가왜 모르걸재핀 ㅈ르히히 다다다 아아아 이팉 ㅡ?? 자다그르러너지??<br>이것도 저것도</div></td>
							</tr>
							<%-- <tr height="40">
								<td colspan="6" align="center">
									<input type="button" value="답글쓰기" onclick="location.href='BoardReInsert.jsp?ref_group=${bean.ref_group}&ref_step=${bean.ref_step }&ref_level=${bean.ref_level }'">
									<input type="button" value="수정" onclick="location.href='boardupdateform.do?num=${bean.num}'">
									<input type="button" value="삭제" onclick="location.href='boarddeleteform.do?num=${bean.num}'">
									<input type="button" value="전체글보기" onclick="location.href='boardList.do'">
								</td>
							</tr> --%>
						</tbody>
					</table>
				</div>
			</div><!-- end row  -->
			
			<div class="row">
				<center>
				<button type="button" class="btn btn-default btn-lg" onclick="location.href='qnareinsert.jsp'">답글쓰기</button>
				<button type="button" class="btn btn-default btn-lg">수정</button>
				<button type="button" class="btn btn-default btn-lg">삭제</button>
				<button type="button" class="btn btn-default btn-lg" onclick="location.href='qna.jsp'">전체글보기</button>
				</center>
			</div>
			
		</div><!-- end container  -->
	
	</main>

	<jsp:include page="./component/footer.jsp"></jsp:include>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
