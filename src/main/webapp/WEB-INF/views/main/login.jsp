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
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body class="">

<div id="wrapper" class="clearfix">
<!--   <!-- preloader -->
<!--   <div id="preloader"> -->
<!--     <div id="spinner"> -->
<!--       <img alt="" src="images/preloaders/5.gif"> -->
<!--     </div> -->
<!--     <div id="disable-preloader" class="btn btn-default btn-sm">Disable Preloader</div> -->
<!--   </div> -->

  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: home -->
    <section id="home" class="divider bg-lighter">
      <div class="display-table">
        <div class="display-table-cell">
          <div class="container">
            <div class="row">
              <div class="col-md-6 col-md-push-3">
<!--                 <div class="text-center mb-60"><a href="#" class=""><img alt="" src="images/logo-wide.png"></a></div> -->
                <h3 class="text-theme-colored mt-0 pt-5"> 로그인</h3>
                <hr>
                <p>로그인 하면 다양한 서비스를 제공받으실 수 있습니다</p>
                
                <form id="loginFrm" class="clearfix" action="/loginProc" method="post">
                  <div class="row">
                    <div class="form-group col-md-12">
                      <label for="form_username_email">Email</label>
                      <input id="form_username_email" name="email" class="form-control" type="text">
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group col-md-12">
                      <label for="form_password">Password</label>
                      <input id="form_password" type="password" name="password" class="form-control" type="text">
                    </div>
                  </div>
                  <div class="checkbox pull-left mt-15">
                  </div>
                  <div class="form-group pull-right mt-10">
                    <button id="loginBtn" class="btn btn-danger btn-sm">Login</button>
                  </div>
                  <div class="clear text-center pt-10">
                  </div>
                  <br>
                  <div class="clear text-center pt-10">
                    <a class="btn btn-warning btn-lg btn-block no-border mt-15 mb-15" href="<c:url value='/selectJoinChoice' />" data-bg-color="#3b5998">아직 회원이 아니신가요?</a>
                    <a class="btn btn-warning btn-lg btn-block no-border" href="<c:url value='/' />" data-bg-color="#00acee">메인화면으로</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->

<!-- Footer -->
  <!-- Footer -->
  <footer id="footer" class="footer" data-bg-color="#152029">
    <div class="footer-bottom" data-bg-color="#253039">
      <div class="container pt-20 pb-20">
        <div class="row">
          <div class="col-md-6">
            <p class="font-12 text-black-777 m-0">Copyright &copy;2017 ThemeMascot. All Rights Reserved</p>
          </div>
          <div class="col-md-6 text-right">
            <div class="widget no-border m-0">
              <ul class="list-inline sm-text-center mt-5 font-12">
                <li>
                  <a href="#">FAQ</a>
                </li>
                <li>|</li>
                <li>
                  <a href="#">Help Desk</a>
                </li>
                <li>|</li>
                <li>
                  <a href="#">Support</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
</div>
<!-- end wrapper -->

<script>

	var loginFn = function() {
		
		var emailInform = $("input[name='email']").val(),
			pwdInform	= $("input[name='password']").val();
		
		if (!CmmnJsUtil.isEmpty(emailInform) 
				|| !CmmnJsUtil.isEmpty(pwdInform)) {
			alert("로그인 정보를 입력하세요!");
		}
		
		
	}

	$(function() {
		
		$("#loginBtn").click(function(e) {
			e.preventDefault();
			
			var emailInform = $("input[name='email']").val(),
				pwdInform	= $("input[name='password']").val();
		
			
			if (CmmnJsUtil.isEmpty(emailInform) 
					|| CmmnJsUtil.isEmpty(pwdInform)) {
				alert("로그인 정보를 입력하세요!");
				
				return;
			}
			
			$("#loginFrm").submit();
			
		})
		
	})
	
	// 유효성 체크 공통객체
	var CmmnJsUtil = {

			isEmpty : function(val) {
				val = val + "";
			    
				// 공백제거
				val = val.replace(/(\s*)/g, "");
			    
				if (null == val || "" == val ||
					val == undefined || typeof(val) == undefined ||
			    	"undefined" == val || "NaN" == val) {
			        return true;
			    } else {
			        return false;
			    }
			},
			    
			isNumeric : function(val) {

				if (/^[0-9]*$/.test(val)) {
			    	return true;
			    } else {
			        return false;
			    }
			}
		}

</script>

</body>
</html>