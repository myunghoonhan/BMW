<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>TheaterProject</title>

  <link rel="stylesheet" href="src/css/style.css">
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

  <main>
  	<c:if test="${searchTitle.isEmpty()}">
		<script type="text/javascript">
			alert("검색한 공연을 찾을 수 없습니다.");
			location.href="Main.do"
		</script>
	</c:if>

    <div class="container">
      
      <ul id="index_nav_tabs" class="nav nav-tabs nav-justified" style="margin: 45px 0px 55px 0px;">
      	  <li role="presentation" ><a href="Main.do">최신</a></li>
		  <li role="presentation" class="${active_1}"><a href="SearchTab.do?gubun=1">콘서트</a></li>
		  <li role="presentation" class="${active_2}"><a href="SearchTab.do?gubun=2">연극</a></li>
		  <li role="presentation" class="${active_3}"><a href="SearchTab.do?gubun=3">전시회</a></li>
		  <li role="presentation" class="${active_4}"><a href="SearchTab.do?gubun=4">The-Ticket</a></li>
		  <li role="presentation" class="dropdown ${active_5}">
		    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
		      지역별 <span class="caret"></span>
   		    </a>
	    	<ul id="nav_tabs_dropdown_menu" class="dropdown-menu" role="menu" style="width: 100%;">
		    	<li><a href="SearchTabLoc.do?gubunLocation=0">대학로</a></li>
			    <li><a href="SearchTabLoc.do?gubunLocation=1">홍대</a></li>
			    <li><a href="SearchTabLoc.do?gubunLocation=2">강남</a></li>
			    <li class="divider"></li>
			    <li><a href="SearchTabLoc.do?gubunLocation=3">기타</a></li>
		    </ul>
  		 </li>
	  </ul>

      <div id="New_thumblist">
        <h3>"${search}" 검색결과<%-- <span class="badge">${searchTab_count_loc}</span> --%></h3>

		<div class="row">
		
			<c:set var="count" value="${0}" />
			<c:forEach var="bean" items="${searchTitle}">
				<c:if test="${count%4==0}">
					<div class="clearfix"></div>
				</c:if>
	
				<div class="col-xs-12 col-sm-3">
	              <div class="thumbnail" style="padding: 0px">
	              <a href="TicketInfo.do?sno=${bean.sno}"><img src="src/image/poster/${bean.smainimg }" alt="..."></a>
	                <div class="caption">
	                  <h4>[${bean.slocation}] ${bean.sname}</h4>
	            	  <!-- <img src="src/image/heart_gold.png" style="width: 40px; height: auto; margin-right: 10px;"> -->
	            	  <span style="font-size: 18px; font-weight: bold; vertical-align: bottom;">${bean.sprice}원&nbsp;&nbsp;♥${bean.slike}</span>
	                </div>
	              </div>
	            </div>
				S
				<c:set var="count" value="${count+1 }" />
			</c:forEach>
			
        </div>  <!-- end div id="row" -->
      </div> <!-- end index_thumbnail -->
      

      <nav style="text-align: center; margin-top: 10px;">
		  <ul class="pagination pagination-lg">
		    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
    		
    		<li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li><a href="#">6</a></li>
		    <li><a href="#">7</a></li>
		    <li><a href="#">8</a></li>
		    <li><a href="#">9</a></li>
		    <li><a href="#">10</a></li>
		    
		    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
		  </ul>
	  </nav>
	 

    </div> <!-- end container -->
  </main>

  <jsp:include page="./component/footer.jsp"></jsp:include>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 
</body>
</html>
