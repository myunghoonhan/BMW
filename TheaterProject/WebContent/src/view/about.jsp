<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
  	<jsp:param value="navbar-static-top" name="navbar_style"/>
  </jsp:include>
  
  <main>
    <div id="about_main" class="container" style="margin-top: 40px">
      <div class="row">

        <div class="col-sm-2">
          <div class="list-group">
            <a href="#" class="list-group-item active">
              About ShowYou
            </a>
            <a href="#" class="list-group-item">소개</a>
            <a href="#" class="list-group-item">연혁</a>
            <a href="#" class="list-group-item">비전</a>
            <a href="#" class="list-group-item">조직도</a>
          </div>
        </div>

        <div class="col-xs-12 col-sm-10">

            <div class="col-xs-12" style="margin-bottom: 30px">
              <img src="../image/about_bmw_team_cut.jpg" class="img-responsive img-rounded" alt="Responsive image">
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
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
            </div>
            <div class="col-xs-12 col-sm-4">
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
            </div>
            <div class="col-xs-12" style="margin-top: 20px">
              <img src="../image/about_bmw_company.jpg" class="img-responsive" alt="Responsive image">
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
