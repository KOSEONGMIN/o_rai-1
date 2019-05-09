<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/cmmn/common_lib.jsp" %>

<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>

<!-- Meta Tags -->
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="description" content="Learnpro - Education University School Kindergarten Learning HTML Template" />
<meta name="keywords" content="education,school,university,educational,learn,learning,teaching,workshop" />
<meta name="author" content="ThemeMascot" />

<!-- Page Title -->
<title>Consulting Finance Corporate Business - ConsultingPro</title>

<!-- Favicon and Touch Icons -->
<link href="/resources/images/favicon.png" rel="shortcut icon" type="image/png">
<link href="/resources/images/apple-touch-icon.png" rel="apple-touch-icon">
<link href="/resources/images/apple-touch-icon-72x72.png" rel="apple-touch-icon" sizes="72x72">
<link href="/resources/images/apple-touch-icon-114x114.png" rel="apple-touch-icon" sizes="114x114">
<link href="/resources/images/apple-touch-icon-144x144.png" rel="apple-touch-icon" sizes="144x144">

<!-- Stylesheet -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="/resources/css/jquery-ui.min.css" rel="stylesheet" type="text/css">
<link href="/resources/css/animate.css" rel="stylesheet" type="text/css">
<link href="/resources/css/css-plugin-collections.css" rel="stylesheet"/>
<!-- CSS | menuzord megamenu skins -->
<link href="/resources/css/menuzord-megamenu.css" rel="stylesheet"/>
<link id="menuzord-menu-skins" href="/resources/css/menuzord-skins/menuzord-boxed.css" rel="stylesheet"/>
<!-- CSS | Main style file -->
<link href="/resources/css/style-main.css" rel="stylesheet" type="text/css">
<!-- CSS | Preloader Styles -->
<link href="/resources/css/preloader.css" rel="stylesheet" type="text/css">
<!-- CSS | Custom Margin Padding Collection -->
<link href="/resources/css/custom-bootstrap-margin-padding.css" rel="stylesheet" type="text/css">
<!-- CSS | Responsive media queries -->
<link href="/resources/css/responsive.css" rel="stylesheet" type="text/css">
<!-- CSS | Style css. This is the file where you can place your own custom css code. Just uncomment it and use it. -->
<!-- <link href="css/style.css" rel="stylesheet" type="text/css"> -->

<!-- CSS | Theme Color -->
<link href="/resources/css/colors/theme-skin-color-set1.css" rel="stylesheet" type="text/css">

<!-- external javascripts -->
<script src="/resources/js/jquery-2.2.4.min.js"></script>
<script src="/resources/js/jquery-ui.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<!-- JS | jquery plugin collection for this theme -->
<script src="/resources/js/jquery-plugin-collection.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- danger: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<script>
	
	$(function() {
		$(".userDetail").on("click", function(e) {
			// a 태그 이벤트 제거
			e.preventDefault();
			
			console.log($(this));
			
			$("#myModal").modal();
		})
	})
	

</script>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-sm"><!--  큰창:<div class="modal-dialog modal-lg"> 작은창 :<div class="modal-dialog modal-sm">  -->
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" 
               aria-hidden="true">×
            </button>
            <h4 class="modal-title" id="myModalLabel">
            	User Inform
            </h4>
         </div>
         <div class="modal-body">
         	<div>
         		<h3>사용자명 : </h3>
         	</div>
         	<div>
         		<h3>전화번호: </h3>
         	</div>
         	<div>
         		<h3>차 번호 : </h3>
         	</div>
         	<div>
         		<h3>차종 : </h3><button class="btn-danger">블랙리스트 등록</button>
         	</div>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
               닫기
            </button>
         </div>
      </div> 
   </div> 
</div>

<body class="">
<div id="wrapper" class="clearfix">
  <!-- preloader -->
  <div id="preloader">
    <div id="spinner">
      <img alt="" src="/resources/images/preloaders/7.gif">
    </div>
    <div id="disable-preloader" class="btn btn-default btn-sm">Disable Preloader</div>
  </div>
  
  <!-- Header -->
  <header id="header" class="header">
    <div class="header-top bg-theme-colored2 sm-text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="widget text-white">
              <ul class="list-inline xs-text-center text-white">
                <li class="m-0 pl-10 pr-10"> <a href="#" class="text-white"><i class="fa fa-phone text-white"></i> 123-456-789</a> </li>
                <li class="m-0 pl-10 pr-10"> 
                  <a href="#" class="text-white"><i class="fa fa-envelope-o text-white mr-5"></i> contact@yourdomain.com</a> 
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="header-nav">
      <div class="header-nav-wrapper navbar-scrolltofixed bg-white">
        <div class="container">
          <nav id="menuzord-left" class="menuzord default">
            <ul class="menuzord-menu">
              <li class=""><a href=<c:out value="/" />>Home</a></li>
              <li class=""><a href=<c:out value="/joinDetail" />>Detail</a></li>
              <li class=""><a href=<c:out value="/logoutProc" />>Logout</a></li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>

  <!-- Start main-content -->
  <div class="main-content">

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-12 mt-40">
            <h2 class="title">주차장 예약 현황</h2>
            <hr>
            <p>주차장 예약자 명단 입니다.</p>
              <div data-example-id="hoverable-table" class="bs-example"> 
              	<table class="table table-hover table-bordered"> 
              		<thead> 
              			<tr> 
              				<th>NO</th> 
              				<th>사용자</th> 
              				<th>차량번호</th> 
              				<th>사용시간</th>
              				<th>입/출차 여부</th>
              				<th>사용여부</th>  
              			</tr> 
              		</thead> 
              		<tbody> 
              			<tr> 
              				<th scope="row">1</th> 
              				<td><a style="cursor:pointer" class="userDetail">Mark</a></td> 
              				<td>Otto</td> 
              				<td>@mdo</td>
              				<td><button class="btn-primary">입차</button>
              					<button class="btn-danger">출차</button>
              				</td>
              				<td>대기중</td> 
              			</tr> 
              			<tr> 
              				<th scope="row">2</th> 
              				<td><a style="cursor:pointer" class="userDetail">Jacob</a></td> 
              				<td>Thornton</td> 
              				<td>@fat</td>
              				<td><button class="btn-primary">입차</button>
              					<button class="btn-danger">출차</button>
              				</td>
              				<td>대기중</td> 
              			</tr> 
              			<tr> 
              				<th scope="row">3</th> 
              				<td><a style="cursor:pointer" class="userDetail">Larry</a></td> 
              				<td>the Bird</td> 
              				<td>@twitter</td>
              				<td><button class="btn-primary">입차</button>
              					<button class="btn-danger">출차</button>
              				</td>
              				<td>대기중</td> 
              			</tr>
              			<tr> 
              				<th scope="row">3</th> 
              				<td><a style="cursor:pointer" class="userDetail">Larry</a></td> 
              				<td>the Bird</td> 
              				<td>@twitter</td>
              				<td><button class="btn-primary">입차</button>
              					<button class="btn-danger">출차</button>
              				</td>
              				<td>대기중</td> 
              			</tr> 
              			<tr> 
              				<th scope="row">3</th> 
              				<td><a style="cursor:pointer" class="userDetail">Larry</a></td> 
              				<td>the Bird</td> 
              				<td>@twitter</td>
              				<td><button class="btn-primary">입차</button>
              					<button class="btn-danger">출차</button>
              				</td>
              				<td>대기중</td> 
              			</tr> 
              			<tr> 
              				<th scope="row">3</th> 
              				<td><a style="cursor:pointer" class="userDetail">Larry</a></td> 
              				<td>the Bird</td> 
              				<td>@twitter</td>
              				<td><button class="btn-primary">입차</button>
              					<button class="btn-danger">출차</button>
              				</td>
              				<td>사용중</td> 
              			</tr> 
              			<tr> 
              				<th scope="row">3</th> 
              				<td><a style="cursor:pointer" class="userDetail">Larry</a></td> 
              				<td>the Bird</td> 
              				<td>@twitter</td>
              				<td><button class="btn-primary">입차</button>
              					<button class="btn-danger">출차</button>
              				</td>
              				<td>사용중</td> 
              			</tr> 
              			<tr> 
              				<th scope="row">3</th> 
              				<td><a style="cursor:pointer" class="userDetail">Larry</a></td> 
              				<td>the Bird</td> 
              				<td>@twitter</td>
              				<td><button class="btn-primary">입차</button>
              					<button class="btn-danger">출차</button>
              				</td>
              				<td>사용중</td> 
              			</tr>
              			<tr> 
              				<th scope="row">3</th> 
              				<td><a style="cursor:pointer" class="userDetail">Larry</a></td> 
              				<td>the Bird</td> 
              				<td>@twitter</td>
              				<td><button class="btn-primary">입차</button>
              					<button class="btn-danger">출차</button>
              				</td>
              				<td>사용중</td> 
              			</tr> 
              			<tr> 
              				<th scope="row">3</th> 
              				<td><a style="cursor:pointer" class="userDetail">Larry</a></td> 
              				<td>the Bird</td> 
              				<td>@twitter</td>
              				<td><button class="btn-primary">입차</button>
              					<button class="btn-danger">출차</button>
              				</td>
              				<td>사용완료</td> 
              			</tr> 
              			<tr> 
              				<th scope="row">3</th> 
              				<td><a style="cursor:pointer" class="userDetail">Larry</a></td> 
              				<td>the Bird</td> 
              				<td>@twitter</td>
              				<td><button class="btn-primary">입차</button>
              					<button class="btn-danger">출차</button>
              				</td>
              				<td>사용완료</td> 
              			</tr> 
              			<tr> 
              				<th scope="row">3</th> 
              				<td><a style="cursor:pointer" class="userDetail">Larry</a></td> 
              				<td>the Bird</td> 
              				<td>@twitter</td>
              				<td><button class="btn-primary">입차</button>
              					<button class="btn-danger">출차</button>
              				</td>
              				<td>사용완료</td> 
              			</tr>   
              		</tbody> 
              	</table> 
              </div>
              <hr>
          </div>
        </div>
		<nav>
		  <ul class="pagination pull-right">
		    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
		    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
		    <li class=""><a href="#">2 <span class="sr-only">(current)</span></a></li>
		    <li class=""><a href="#">3 <span class="sr-only">(current)</span></a></li>
		    <li class=""><a href="#">4 <span class="sr-only">(current)</span></a></li>
		    <li class=""><a href="#">5 <span class="sr-only">(current)</span></a></li>
		    <li class=""><a href="#">6 <span class="sr-only">(current)</span></a></li>
		    <li class=""><a href="#">7 <span class="sr-only">(current)</span></a></li>
		    <li class=""><a href="#">8 <span class="sr-only">(current)</span></a></li>
		    <li class=""><a href="#">9 <span class="sr-only">(current)</span></a></li>
		    <li class="disabled"><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
		  </ul>
		</nav>
      </div>
       
    </section>
    
	
  </div>
  <!-- end main-content -->

  <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
</div>
<!-- end wrapper -->

<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
<script src="/resources/js/custom.js"></script>

</body>
</html>