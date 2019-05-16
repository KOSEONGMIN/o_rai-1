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
<title>오라이</title>

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
<script src="<c:url value="/resources/js/jquery.fileDownload.js"/>"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- danger: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<script>
	
	$(function() {
		var aptTitle = "<c:out value='${aptInform.apt_name}' />" + " (" + 
				"<c:out value='${aptInform.address}' />" + ")";
		
		$("#aptTitle").html(aptTitle);
		
		<c:forEach var="firstBoardList" items="${boardList}" >
			<c:if test="${firstBoardList.enter_time ne null}" >
				$(".enterBtn" + <c:out value='${firstBoardList.book_index}' />).attr("disabled", true);
				$(".enterBtn" + <c:out value='${firstBoardList.book_index}' />).removeClass("btn-primary");
				
				var enterTime = "<c:out value='${firstBoardList.enter_time}' />";
				
				enterTime = enterTime.substring(0, enterTime.length - 2);
				
				$(".enterBtn" + <c:out value='${firstBoardList.book_index}' />).parent("td").next().html(enterTime);
				$(".enterBtn" + <c:out value='${firstBoardList.book_index}' />).parent("td").next().next().next().html("사용중");
			</c:if>
			
			<c:if test="${firstBoardList.leave_time ne null}">
				$(".leaveBtn" + <c:out value='${firstBoardList.book_index}' />).attr("disabled", true);
				$(".leaveBtn" + <c:out value='${firstBoardList.book_index}' />).removeClass("btn-danger");
				
				var leaveTime = "<c:out value='${firstBoardList.leave_time}' />";
				
				leaveTime = leaveTime.substring(0, leaveTime.length - 2);
				
				$(".leaveBtn" + <c:out value='${firstBoardList.book_index}' />).parent("td").next().next().html(leaveTime);
				$(".leaveBtn" + <c:out value='${firstBoardList.book_index}' />).parent("td").next().next().next().html("사용완료");
			</c:if>
		</c:forEach>
		
		var currentPage  = "<c:out value= '${pagingVO.page}' />",
			totalPage	 = "<c:out value= '${pagingVO.totPage}' />",
			scaleEndPage = "<c:out value= '${pagingVO.scaleEndPage}' />",
			prevPage     = "<c:out value= '${pagingVO.prevPage}' />";	

		$(".pageCls" + currentPage).addClass("active");
		
		if (Number(prevPage) === 0) {
			$("#previous").hide();
		}
		
		if (Number(scaleEndPage) >= Number(totalPage)) {
			$("#next").hide();
		}
		
		$(".enterBtn").on("click", function(e) {
			var $this = $(this);
			
			var param = $this.data("options");
			
			var that = $this;
			
			$.ajax({
				
				type : "POST",
				url	 : "/addCurrentDate",
				data : {"bookIndex" : param, "way" : "enter"},
				
				success : function(data) {
					
					if (data.result === "SUCCESS") {
					
						that.attr("disabled", true);
						that.removeClass("btn-primary");

						/* that.parent("td").next().html(enterTime);
						
						that.parent("td").next().next().next().html("사용중"); */
						
						location.reload();
					}
						
				}
			})
			
		})
		
		$(".leaveBtn").on("click", function(e) {
			var $this = $(this);
			
			if ($this.prev().attr("disabled") !== "disabled") {
				alert("입차 버튼을 먼저 누르세요!");
				
				return;
			}
			
			var param = $this.data("options");
			
			var that = $this;
			
			$.ajax({
				
				type : "POST",
				url	 : "/addCurrentDate",
				data : {"bookIndex" : param, "way" : "leave"},
				
				success : function(data) {

					that.attr("disabled", true);
					that.removeClass("btn-danger");
					
					location.reload();
				}
			})
		})
		
		$(".userDetail").on("click", function(e) {
			// a 태그 이벤트 제거
			e.preventDefault();
			
			var $this = $(this);
			
			console.log("#detail : ", $this);
			
			var that = $this;
			
			$.ajax({
				url	: "/selectUserInform",
				type : "post",
				data : {"userIndex" : $(this).data("options")},
				async: false,
				
				success	: function(data) {
					
					$(".userName").html("사용자명 : " + data.user_name);
					$(".userPhone").html("전화번호 : " + data.user_phone);
					$(".userCarNum").html("차번호 : " + data.car_number);
					$(".userCarType").html("차종 : " + data.car_type);
				}
				
			})
			
			$("#myModal").modal();
			
		})
		
		$(".blackListBtn").on("click", function(e) {
			e.preventDefault();
			
			var $this = $(this);
			
			console.log($(this));
			
			var param = {
					
				"userIndex" : $this.data("options"),
				
				"bookIndex" : $this.data("bookidx")
			}
			
			console.log(param);
			
			var that = $this;
			
			$.ajax({
				
				type : "POST",
				url	 : "/addBlackList",
				data : param,
				
				success : function (data) {
					if (data.result === "SUCCESS")
						alert(data.msg);
					else if (data.result === "FAILDAY")
						alert(data.msg);
					else if (data.result === "FAILALEADY")
						alert(data.msg);
					
				}
			})
			
		})
		
		
		$("#btn-excel").on("click", function () {
	        var $preparingFileModal = $("#preparing-file-modal");
	        
	        $preparingFileModal.dialog({ modal: true });
	        
	        $("#progressbar").progressbar({value: false});
	        
	        $.fileDownload("/downloadExcel", {
	            successCallback: function (url) {
	                $preparingFileModal.dialog('close');
	            },
	            failCallback: function (responseHtml, url) {
	                $preparingFileModal.dialog('close');
	                $("#error-modal").dialog({ modal: true });
	            }
	        });
	        
	        // 버튼의 원래 클릭 이벤트를 중지 시키기 위해 필요합니다.
	        return false;
    	});
		
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
         		<h3 class="userName">사용자명 : </h3>
         	</div>
         	<div>
         		<h3 class="userPhone">전화번호: </h3>
         	</div>
         	<div>
         		<h3 class="userCarNum">차 번호 : </h3>
         	</div>
<!--          	<div> -->
<!--          		<h3 class="userCarType">차종 : </h3><button id="blackListBtn" class="btn-danger blackListBtn">블랙리스트 등록</button> -->
<!--          	</div> -->
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
              <li class=""><a href=<c:out value="/" />>홈으로</a></li>
              <li class=""><a href=<c:out value="/joinDetail" />>세부정보 조회/수정</a></li>
              <li class=""><a href=<c:out value="/logoutProc" />>로그아웃</a></li>
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
            <h2 id="aptTitle" class="title">주차장 예약 현황</h2>
            <hr>
            <p>주차장 예약자 명단 입니다.</p>
       		<button id="btn-excel">예약내역 다운로드</button> <!-- 파일 생성중 보여질 진행막대를 포함하고 있는 다이얼로그 입니다. --> 
       		<div title="Data Download" id="preparing-file-modal" style="display: none;"> 
       			<div id="progressbar" style="width: 100%; height: 22px; margin-top: 20px;"></div> 
       		</div> 
       		
       		<!-- 에러발생시 보여질 메세지 다이얼로그 입니다. --> 
       		<div title="Error" id="error-modal" style="display: none;"> 
       			<p>생성실패.</p> 
       		</div>
			<br/>
			<br/>
              <div data-example-id="hoverable-table" class="bs-example"> 
              	<table class="table table-hover table-bordered"> 
              		<thead> 
              			<tr> 
              				<th>NO</th> 
              				<th>사용자</th> 
              				<th>차량번호</th> 
              				<th>사용시간</th>
              				<th>입/출차 여부</th>
              				<th>입차시간</th>
              				<th>출차시간</th>
              				<th>사용여부</th>
              				<th>블랙리스트</th>  
              			</tr> 
              		</thead> 
              		<tbody>
              			<c:forEach items="${boardList}" var="boardList" >
              				<tr> 
	              				<th scope="row"><c:out value="${boardList.book_index}" /></th> 
	              				<td><a style="cursor:pointer" data-options="<c:out value="${boardList.user_index}" />" class="userDetail user<c:out value="${boardList.user_index}" />"><c:out value="${boardList.user_id}" /></a></td> 
	              				<td><c:out value="${boardList.car_number}" /></td> 
	              				<td><fmt:formatDate pattern="yyyy.MM.dd HH:mm:ss" value="${boardList.start_time}" />
	              					~ <fmt:formatDate pattern="yyyy.MM.dd HH:mm:ss" value="${boardList.finish_time}" />
	              				</td>
	              				<td><button class="btn-primary enterBtn enterBtn<c:out value='${boardList.book_index}' />" data-options="<c:out value='${boardList.book_index}' />">입차</button>
	              					<button class="btn-danger leaveBtn leaveBtn<c:out value='${boardList.book_index}' />" data-options="<c:out value='${boardList.book_index}' />">출차</button>
	              				</td>
	              				<td>입차 이전</td>
	              				<td>출차 이전</td>
              					<td>대기중</td>
              					<td><button class="btn-warning blackListBtn" data-bookIdx=<c:out value="${boardList.book_index}" /> data-option=<c:out value="${boardList.user_index}" />>블랙리스트 등록</button></td>
              				</tr> 
              			</c:forEach> 
              		</tbody> 
              	</table> 
              </div>
              <hr>
          </div>
        </div>
		<nav>
		  <ul class="pagination pull-right">
		    <li id="previous" class=""><a href="/board?page=<c:out value='${pagingVO.prevPage}' />" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
		    
		    <c:forEach var="num" begin="${pagingVO.scaleStartPage}" end="${pagingVO.scaleEndPage}" >
		    	<li class="pageCls<c:out value='${num}' />"><a href="/board?page=<c:out value='${num}' />"><c:out value="${num}" /><span class="sr-only">(current)</span></a></li>
		    </c:forEach>
		    
		    <li id="next" class=""><a href="/board?page=<c:out value='${pagingVO.nextPage}' />" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
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