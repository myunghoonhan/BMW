<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>TheaterProject</title>

  <link rel="stylesheet" href="../css/style.css">
  <!-- Bootstrap -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- HTML5 Shim and Respond.js IE8 support 
  of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body id="index_body">

  <jsp:include page="./component/header.jsp">
  	<jsp:param value="navbar-fixed-top" name="navbar_style"/>
  </jsp:include>

  <main id="index_main">
    <figure>
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="background-color: #e5e5e5">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">

          <div class="item active">
            <img src="../image/theater_banner_cut.png" class="carousel_img" alt="...">
            <div class="carousel-caption">
            </div>
          </div>

          <div class="item">
            <img src="../image/theater_banner_cut.png" class="carousel_img" alt="...">
            <div class="carousel-caption">
            </div>
          </div>

          <div class="item">
            <img src="../image/theater_banner_cut.png" class="carousel_img" alt="...">
            <div class="carousel-caption">
            </div>
          </div>

        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </figure>

    <div class="container">
    
      <ul id="index_nav_tabs" class="nav nav-tabs nav-justified" style="margin: 45px 0px 55px 0px;">
		  <li role="presentation" class="active"><a href="#">콘서트</a></li>
		  <li role="presentation"><a href="#">연극</a></li>
		  <li role="presentation"><a href="#">The-Ticket</a></li>
		  <li role="presentation" class="dropdown">
		    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
		      지역별 <span class="caret"></span>
   		    </a>
	    	<ul id="nav_tabs_dropdown_menu" class="dropdown-menu" role="menu" style="width: 100%;">
		    	<li><a href="#">대학로</a></li>
			    <li><a href="#">홍대</a></li>
			    <li><a href="#">강남</a></li>
			    <li class="divider"></li>
			    <li><a href="#">기타</a></li>
		    </ul>
  		 </li>
	  </ul>
	  
	 <!--  <ul id="index_nav_tabs" class="nav nav-pills nav-justified" style="margin: 45px 0px 55px 0px;">
		 <li role="presentation" class="active"><a href="#">콘서트</a></li>
		  <li role="presentation"><a href="#">연극</a></li>
		  <li role="presentation"><a href="#">The-Ticket</a></li>
 		 <li role="presentation" class="dropdown">
  		  <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
    		  지역별 <span class="caret"></span>
  		  </a>
   		 <ul class="dropdown-menu" role="menu">
   		   <li><a href="#">대학로</a></li>
		   <li><a href="#">홍대</a></li>
		   <li><a href="#">강남</a></li>
		   <li class="divider"></li>
		   <li><a href="#">기타</a></li>
    	</ul>
  		</li>
	 </ul> -->

      <div id="index_thumbnail">
        <h3>The-Ticket TOP4 <span class="label label-danger">Hot</span></h3>

        <div class="row">
        
          <div class="col-xs-12 col-sm-3">
              <div class="thumbnail" style="padding: 0px">
              <a href="detail.jsp?pid=0001"><img src="../image/poster/theater_thumbnail_1.jpg" alt="..."></a>
                <div class="caption">
                  <h4>[대학로] 1월40일</h4>
            	  <img src="../image/heart_gold.png" style="width: 40px; height: auto; margin-right: 10px;">
            	  <span style="font-size: 18px; font-weight: bold; vertical-align: bottom;">8,800원</span>
                </div>
              </div>
          </div>

          <div class="col-xs-12 col-sm-3">
            <div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_2.jpg" alt="..."></a>
              <div class="caption">
                <h4>[홍대] 나는 너다</h4>
            	<span style="font-size: 30px; font-weight: bold; color: #5cb85c;">65<span style="font-size: 18px;">%</span></span>
            	<span style="font-size: 18px; font-weight: bold; margin-left: 5px;">12,500원</span>
              </div>
            </div>
          </div>

          <div class="col-xs-12 col-sm-3">
           <div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_3.jpg" alt="..."></a>
              <div class="caption">
                 <h4>[홍대] 리타 EDUCATION RITA</h4>
            	<span style="font-size: 30px; font-weight: bold; color: #5cb85c;">80<span style="font-size: 18px;">%</span></span>
            	<span style="font-size: 18px; font-weight: bold; margin-left: 5px;">8,000원</span>
              </div>
            </div>
          </div>
          
          <div class="col-xs-12 col-sm-3">
           <div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_4.jpg" alt="..."></a>
              <div class="caption">
                <h4>[신촌] 리타 옥탑방고양이</h4>
            	<span style="font-size: 30px; font-weight: bold; color: #5cb85c;">75<span style="font-size: 18px;">%</span></span>
            	<span style="font-size: 18px; font-weight: bold; margin-left: 5px;">9,500원</span>
              </div>
            </div>
          </div>
          
        </div>
      </div>
      
      <div id="index_thumbnail">
        <h3>최신 The-Ticket</h3>

        <div class="row">
          <div class="col-xs-12 col-sm-3">
          	<div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_1.jpg" alt="..."></a>
                <div class="caption">
                  <h4>[대학로] 1월40일</h4>
            	  <span style="font-size: 30px; font-weight: bold; color: #5cb85c;">73<span style="font-size: 18px;">%</span></span>
            	  <span style="font-size: 18px; font-weight: bold; margin-left: 5px;">8,800원</span>
                </div>
              </div>
          </div>

          <div class="col-xs-12 col-sm-3">
            <div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_2.jpg" alt="..."></a>
              <div class="caption">
                <h4>[홍대] 나는 너다</h4>
            	<span style="font-size: 30px; font-weight: bold; color: #5cb85c;">65<span style="font-size: 18px;">%</span></span>
            	<span style="font-size: 18px; font-weight: bold; margin-left: 5px;">12,500원</span>
              </div>
            </div>
          </div>

          <div class="col-xs-12 col-sm-3">
           <div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_3.jpg" alt="..."></a>
              <div class="caption">
                 <h4>[홍대] 리타 EDUCATION RITA</h4>
            	<span style="font-size: 30px; font-weight: bold; color: #5cb85c;">80<span style="font-size: 18px;">%</span></span>
            	<span style="font-size: 18px; font-weight: bold; margin-left: 5px;">8,000원</span>
              </div>
            </div>
          </div>
          
          <div class="col-xs-12 col-sm-3">
           <div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_4.jpg" alt="..."></a>
              <div class="caption">
                <h4>[신촌] 리타 옥탑방고양이</h4>
            	<span style="font-size: 30px; font-weight: bold; color: #5cb85c;">75<span style="font-size: 18px;">%</span></span>
            	<span style="font-size: 18px; font-weight: bold; margin-left: 5px;">9,500원</span>
              </div>
            </div>
          </div>
          </div> <!--div id="row" -->
          
          <div class="row">
          <div class="col-xs-12 col-sm-3">
          	<div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_1.jpg" alt="..."></a>
                <div class="caption">
                  <h4>[대학로] 1월40일</h4>
            	  <span style="font-size: 30px; font-weight: bold; color: #5cb85c;">73<span style="font-size: 18px;">%</span></span>
            	  <span style="font-size: 18px; font-weight: bold; margin-left: 5px;">8,800원</span>
                </div>
              </div>
          </div>

          <div class="col-xs-12 col-sm-3">
            <div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_2.jpg" alt="..."></a>
              <div class="caption">
                <h4>[홍대] 나는 너다</h4>
            	<span style="font-size: 30px; font-weight: bold; color: #5cb85c;">65<span style="font-size: 18px;">%</span></span>
            	<span style="font-size: 18px; font-weight: bold; margin-left: 5px;">12,500원</span>
              </div>
            </div>
          </div>

          <div class="col-xs-12 col-sm-3">
           <div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_3.jpg" alt="..."></a>
              <div class="caption">
                 <h4>[홍대] 리타 EDUCATION RITA</h4>
            	<span style="font-size: 30px; font-weight: bold; color: #5cb85c;">80<span style="font-size: 18px;">%</span></span>
            	<span style="font-size: 18px; font-weight: bold; margin-left: 5px;">8,000원</span>
              </div>
            </div>
          </div>
          
          <div class="col-xs-12 col-sm-3">
           <div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_4.jpg" alt="..."></a>
              <div class="caption">
                <h4>[신촌] 리타 옥탑방고양이</h4>
            	<span style="font-size: 30px; font-weight: bold; color: #5cb85c;">75<span style="font-size: 18px;">%</span></span>
            	<span style="font-size: 18px; font-weight: bold; margin-left: 5px;">9,500원</span>
              </div>
            </div>
          </div>
          </div>
          
          <div class="row">
        
          <div class="col-xs-12 col-sm-3">
              <div class="thumbnail" style="padding: 0px">
              <a href="detail.jsp?pid=0001"><img src="../image/poster/theater_thumbnail_1.jpg" alt="..."></a>
                <div class="caption">
                  <h4>[대학로] 1월40일</h4>
            	  <img src="../image/heart_gold.png" style="width: 40px; height: auto; margin-right: 10px;">
            	  <span style="font-size: 18px; font-weight: bold; vertical-align: bottom;">8,800원</span>
                </div>
              </div>
          </div>

          <div class="col-xs-12 col-sm-3">
            <div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_2.jpg" alt="..."></a>
              <div class="caption">
                <h4>[홍대] 나는 너다</h4>
            	<span style="font-size: 30px; font-weight: bold; color: #5cb85c;">65<span style="font-size: 18px;">%</span></span>
            	<span style="font-size: 18px; font-weight: bold; margin-left: 5px;">12,500원</span>
              </div>
            </div>
          </div>

          <div class="col-xs-12 col-sm-3">
           <div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_3.jpg" alt="..."></a>
              <div class="caption">
                 <h4>[홍대] 리타 EDUCATION RITA</h4>
            	<span style="font-size: 30px; font-weight: bold; color: #5cb85c;">80<span style="font-size: 18px;">%</span></span>
            	<span style="font-size: 18px; font-weight: bold; margin-left: 5px;">8,000원</span>
              </div>
            </div>
          </div>
          
          <div class="col-xs-12 col-sm-3">
           <div class="thumbnail" style="padding: 0px">
              <a href="#"><img src="../image/poster/theater_thumbnail_4.jpg" alt="..."></a>
              <div class="caption">
                <h4>[신촌] 리타 옥탑방고양이</h4>
            	<span style="font-size: 30px; font-weight: bold; color: #5cb85c;">75<span style="font-size: 18px;">%</span></span>
            	<span style="font-size: 18px; font-weight: bold; margin-left: 5px;">9,500원</span>
              </div>
            </div>
          </div>
          
        </div>  <!-- div id="row" -->
          
      </div> <!-- 최신공연 index_thumbnail -->

    </div>
  </main>

  <jsp:include page="./component/footer.jsp"></jsp:include>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 
</body>
</html>
