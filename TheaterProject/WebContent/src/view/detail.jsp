<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
<%
	String pid = request.getParameter("pid");
%>
    
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
  	<jsp:param value="navbar-static-top" name="navbar_style"/>
  </jsp:include>
  
  <main>
    <div id="detail_main" class="container" style="margin-top: 40px">
      <div class="row">

        <div class="col-md-3 col-md-push-9">
          <div class="panel panel-default">
            <div class="panel-body">
              <h4><strong>[대학로] 1월40일</strong></h4>
              <form class="form-horizontal">

                <div class="form-group">
                  <div class="col-xs-12">
                    <select style="width: 100%;">
                      <option value="option_default">상품을 선택하세요</option>
                      <option value="option1">대학로 아트홀</option>
                      <option value="option2">신촌 뮤직홀</option>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <div class="col-xs-12">
                    <select style="width: 100%;">
                      <option value="option_default">날짜 선택하세요</option>
                      <option value="option1">12월 23일</option>
                      <option value="option1">12월 24일</option>
                      <option value="option2">12월 25일</option>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <div class="col-xs-12">
                    <button type="submit" class="btn btn-default" style="width: 100%; margin-bottom:5px;">장바구니</button>
                    <button type="submit" class="btn btn-danger" style="width: 100%; height: 50px; font-size: 20px; font-weight: bold">바로구매</button>
                  </div>
                </div>

              </form>
            </div>
          </div>
        </div>

        <div class="col-md-9 col-md-pull-3">

          <div class="row"  style="margin-bottom: 30px; border-style: solid; border-width: 1px; border-radius: 4px; border-color: #ddd; padding: 15px;">
            <div class="col-xs-12 col-md-7">
              <img src="../image/poster/theater_thumbnail_1.jpg" class="img-responsive img-rounded" alt="Responsive image" style="width: 100%;">
            </div>

            <div class="col-xs-12 col-md-5">
              <ul>
                <li style="list-style: none; margin-bottom: 30px;">
                  <h2><strong>해바라기의 비명: 1월 40일</strong></h2>
                </li>
                <li style="list-style: none; margin-bottom: 30px;">
                  <h3><strong>장소</strong></h3>대학로 미리상영관(2관)
                </li>
                <li style="list-style: none; margin-bottom: 30px;">
                  <h3><strong>기간</strong></h3>2016.05.11~2016.05.20
                </li>
                <li style="list-style: none; margin-bottom: 30px;">
                  <h3><strong>출연</strong></h3>한명훈,박수영,이소라,심수민
                </li>
              </ul>

              <div style="font-size: 35px; font-weight: 900; color: #d9534f; margin-left: 40px;">
                12,000원
              </div>

            </div>
          </div>

          <div class="row">
            <div class="col-xs-12 col-sm-4">
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
            </div>
            <div class="col-xs-12 col-sm-4">
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
            </div>
            <div class="col-xs-12 col-sm-4">
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
            </div>
          </div>

          <div class="row">
            <div class="col-xs-12" style="margin-top: 20px">
              <img src="../image/about_bmw_company.jpg" class="img-responsive" alt="Responsive image">
            </div>
          </div>

        </div>

      </div>
    </div>
  </main>

  <jsp:include page="./component/footer.jsp"></jsp:include>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
