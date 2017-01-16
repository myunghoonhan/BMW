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
	  <div class="container">
	  
		<div class="row">
			<div class="col-xs-12" style="margin-bottom: 20px">
              <img src="../image/car_banner_cut.png" class="img-responsive img-rounded" alt="Responsive image">
            </div>
		</div>
		
		<div class="row">
			<div class="col-xs-12" style="margin-bottom: 30px">
		        <h1>Q&A</h1>  
			       	<table class="table table-hover">
			          <thead>
			            <tr>
			              <th width="100" style="text-align: center; vertical-align:middle;">글번호</th>
			              <th style="text-align: center; vertical-align:middle;">글제목</th>
			              <!-- <th></th> -->
			              <th width="100" style="text-align: center; vertical-align:middle;">작성자</th>
			              <th width="100" style="text-align: center; vertical-align:middle;">작성일 </th>
			              <th width="100" style="text-align: center; vertical-align:middle;">조회수 </th>
			            </tr>
			          </thead>
			          <tbody>
			            
			            <tr>
			              <td style="text-align: center; vertical-align:middle;">2</td>
			              <td><a href="qnainfo.jsp">문의글3DKDKDK 다라다랴댜아아아 ㅈ다자훟????</a></td>
			              <td style="text-align: center; vertical-align:middle;">theh1001</td>
			              <td style="text-align: center; vertical-align:middle;">2016.11.15</td>
			              <td style="text-align: center; vertical-align:middle;">0</td>
			            </tr>
			            
			            <tr>
			              <td style="text-align: center; vertical-align:middle;">1</td>
			              <td><a>문의글2</a></td>
			              <td style="text-align: center; vertical-align:middle;">theh1001</td>
			              <td style="text-align: center; vertical-align:middle;">2016.11.15</td>
			              <td style="text-align: center; vertical-align:middle;">0</td>
			            </tr>
			           
			          </tbody>
			       	</table>
			       	
		       	</div> <!-- end Q&A리스트 col-xs-12  -->
	         </div> <!-- end Q&A리스트 row  -->
	         
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
		
	</div><!-- end container  -->
  </main>

  <jsp:include page="./component/footer.jsp"></jsp:include>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
