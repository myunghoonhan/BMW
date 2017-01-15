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

  <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=2p5S9VIE5k7XX34fQ60S"></script>
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
              <form class="form-horizontal">
              
              	<h4><strong>예매일자</strong></h4>
				<div class="form-group" style="margin-bottom: 30px;">
                  <div class="col-xs-12">
                    <select class="form-control">
                      <option value="option_default">예매일자를 선택하세요.</option>
                      <option value="option1">2016/01/27 (잔여:15)</option>
                      <option value="option2">2016/01/28 (잔여:25)</option>
                      <option value="option3">2016/01/29 (잔여:15)</option>
                      <option value="option4">2016/01/30 (잔여:15)</option>
                    </select>
                  </div>
                </div>
				
				<h4><strong>The-Ticket 시간</strong></h4>
				<div style="margin-bottom: 30px;">
					오후 8시 00분
				</div>
				
				<h4><strong>인원수</strong></h4>
				<div class="form-group" style="margin-bottom: 30px;">
					<div class="col-xs-12">
						<input type="number" class="form-control" placeholder="0" min="0" required style="font-size: 20px;">
					</div>
				</div>

                <div class="form-group">
                  <div class="col-xs-12">
                    <button type="submit" class="btn btn-danger" style="width: 100%; height: 50px; font-size: 20px; font-weight: bold">예매하기</button>
                  </div>
                </div>

              </form>
            </div>
          </div>
        </div>

        <div class="col-md-9 col-md-pull-3">

          <div class="row"  style="margin-bottom: 10px; border-style: solid; border-width: 1px; border-radius: 4px; border-color: #ddd; padding: 15px;">
            <div class="col-xs-12 col-md-7">
              <img src="../image/poster/theater_thumbnail_1.jpg" class="img-responsive img-rounded" alt="Responsive image" style="width: 100%;">
            </div>

            <div class="col-xs-12 col-md-5">
              <ul>
                <li style="list-style: none; margin-bottom: 30px;">
                  <h3><strong>The-Ticket</strong></h3>해바라기의 비명 1월 40일
                </li>
                <li style="list-style: none; margin-bottom: 30px;">
                  <h3><strong>장소</strong></h3>대학로 미리상영관(2관)
                </li>
                <li style="list-style: none; margin-bottom: 30px;">
                  <h3><strong>기간</strong></h3>2016.05.11~05.20
                </li>
                <li style="list-style: none; margin-bottom: 30px;">
                  <h3><strong>출연</strong></h3>명훈,박수영,이소라,심수민
                </li>
				<li style="list-style: none; margin-bottom: 30px; font-size: 35px; font-weight: 900; color: #d9534f;">
               		12,000원
             	</li>
             	<li style="list-style: none; margin-bottom: 30px;">
             	<!-- 좋아요 버튼 두개 -->
             		<button type="button" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>&nbsp;LIKE</button>
             		<button type="button" class="btn btn-danger btn-lg active"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>&nbsp;LIKE</button>
             	</li>
              </ul>

            </div>
          </div>

          <div class="row">
            <div class="col-xs-12" style="margin-bottom: 20px;">
              <h3><strong>The-Ticket 정보</strong></h3>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
              <p>우리 회사는 이것이고 저것이고 우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이우리 회사는 이것이고 저것이</p>
            </div>
          </div>

          <div class="row">
            <div class="col-xs-12" style="margin-bottom: 0px;">
              <img src="../image/poster/theater_thumbnail_1_info.jpg" class="img-responsive" alt="Responsive image" width="100%">
            </div>
          </div>
          
          <div class="row">
            <div class="col-xs-12" style="margin-bottom: 20px;">
              <div id="map" style="width: 100%; height: 400px;"></div>
				<script>
				
					var HOME_PATH = window.HOME_PATH || '.';
			
					var map = new naver.maps.Map(document.getElementById('map'), {
						zoom : 12,
						center : new naver.maps.LatLng(37.560474, 126.971354)
					});
					
					
					var latlngs = [
						 new naver.maps.LatLng(37.560474, 126.971354)
						/* <c:forEach var="bean" items="${v}">
							 new naver.maps.LatLng(${bean.hwido}, ${bean.hkyungdo}),
						</c:forEach> */
					];
			
					var markerList = [];
			
					for (var i = 0, ii = latlngs.length; i < ii; i++) {
						var icon = {
							url : HOME_PATH + '/img/example/sp_pins_spot_v3.png',
							size : new naver.maps.Size(24, 37),
							anchor : new naver.maps.Point(12, 37),
							origin : new naver.maps.Point(i * 29, 0)
						}, marker = new naver.maps.Marker({
							position : latlngs[i],
							map : map,
							icon : icon,
							shadow : {
								url : HOME_PATH + '/img/example/shadow-pin_default.png',
								size : new naver.maps.Size(40, 35),
								origin : new naver.maps.Point(0, 0),
								anchor : new naver.maps.Point(11, 35)
							}
						});
			
						marker.set('seq', i);
			
						markerList.push(marker);
			
						marker.addListener('mouseover', onMouseOver);
						marker.addListener('mouseout', onMouseOut);
			
						icon = null;
						marker = null;
					}
			
					function onMouseOver(e) {
						var marker = e.overlay, seq = marker.get('seq');
			
						marker.setIcon({
							url : HOME_PATH + '/img/example/sp_pins_spot_v3_over.png',
							size : new naver.maps.Size(24, 37),
							anchor : new naver.maps.Point(12, 37),
							origin : new naver.maps.Point(seq * 29, 50)
						});
					}
			
					function onMouseOut(e) {
						var marker = e.overlay, seq = marker.get('seq');
			
						marker.setIcon({
							url : HOME_PATH + '/img/example/sp_pins_spot_v3.png',
							size : new naver.maps.Size(24, 37),
							anchor : new naver.maps.Point(12, 37),
							origin : new naver.maps.Point(seq * 29, 0)
						});
					}
				</script>
            </div> <!-- end col-xs-12 지도  -->
          </div> <!-- end row 지도  -->
          
          <div class="row">
          	<div class="col-xs-12">
          		<h3><strong>후기</strong></h3>
          	</div>
          </div>
          
          <div class="row">
            <div class="col-xs-10" style="padding-right: 0px">
              <textarea class="form-control" rows="3" style="resize: none"></textarea>
            </div>
            <div class="col-xs-2">
              <button type="button" class="btn btn-lg btn-danger " style="width: 100%; height: 70px;">작성하기</button>
            </div>
          </div>
          
          <div class="row">
          	
              <hr>
				<div class="col-xs-2">
					<img src="../image/profile_img/profile_default.png" class="img-responsive img-circle" alt="Responsive image" style="margin: 0 auto; width: 100px; height: 100px; max-width: none;">
				</div>
				<div class="col-xs-10">
					<table>
						<tr>
							<td><font size="3px"><b>한명훈님</b>(theh1001)</font>&nbsp;&nbsp;<small>작성일: 2017.01.12 13:50</small></td>
						</tr>
						<tr>
							<td><small>후기가 정말 주아재ㅣ해저헺후기가 정말 주아재ㅣ해저헺후기가 정말 주아재ㅣ해저헺후기가 정말 주아재ㅣ해저헺후기가 정말 주아재ㅣ해저헺후기가 정말 주아재ㅣ해저헺</small></td>
						</tr>
					</table>
				</div>
			  <div class="clearfix"></div>
			  
			  <hr>
				<div class="col-xs-2">
					<img src="../image/profile_img/profile_default.png" class="img-responsive img-circle" alt="Responsive image" style="margin: 0 auto; width: 100px; height: 100px; max-width: none;">
				</div>
				<div class="col-xs-10">
					<table>
						<tr>
							<td><font size="3px"><b>한명훈님</b>(theh1001)</font>&nbsp;&nbsp;<small>작성일: 2017.01.12 13:50</small></td>
						</tr>
						<tr>
							<td><small>후기가 정말 주아재ㅣ해저헺후기가 정말 주아재ㅣ해저헺후기가 정말 주아재ㅣ해저헺후기가 정말 주아재ㅣ해저헺후기가 정말 주아재ㅣ해저헺후기가 정말 주아재ㅣ해저헺</small></td>
						</tr>
					</table>
				</div>
			  <div class="clearfix"></div>
			  
			  
			  <hr>
          </div>
          
          <nav style="text-align: center;">
			  <ul class="pagination">
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
        
		  
        </div> <!-- end div(class="col-md-9 col-md-pull-3") 왼쪽창  -->
      </div> <!-- end div(class="row") 전체행  -->
    </div> <!-- end container  -->
  </main>

  <jsp:include page="./component/footer.jsp"></jsp:include>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
