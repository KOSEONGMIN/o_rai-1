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

<!-- Revolution Slider 5.x CSS settings -->
<link  href="/resources/js/revolution-slider/css/settings.css" rel="stylesheet" type="text/css"/>
<link  href="/resources/js/revolution-slider/css/layers.css" rel="stylesheet" type="text/css"/>
<link  href="/resources/js/revolution-slider/css/navigation.css" rel="stylesheet" type="text/css"/>

<!-- CSS | Theme Color -->
<link href="/resources/css/colors/theme-skin-color-set1.css" rel="stylesheet" type="text/css">

<!-- external javascripts -->
<!-- <script src="/resources/js/jquery-2.2.4.min.js"></script> -->
<script type="text/javascript" src="/resources/common/js/jquery.1.11.0.min.js"></script>
<script src="/resources/js/jquery-ui.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<!-- JS | jquery plugin collection for this theme -->
<script src="/resources/js/jquery-plugin-collection.js"></script>

<!-- Revolution Slider 5.x SCRIPTS -->
<script src="/resources/js/revolution-slider/js/jquery.themepunch.tools.min.js"></script>
<script src="/resources/js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>

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
<!--       <img alt="" src="/resources/images/preloaders/5.gif"> -->
<!--     </div> -->
<!--     <div id="disable-preloader" class="btn btn-default btn-sm">Disable Preloader</div> -->
<!--   </div> -->
  
  <!-- Header -->
  <header id="header" class="header">
    <div class="header-top bg-theme-colored border-top-theme-colored2-2px sm-text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="widget text-white">
              <ul class="list-inline xs-text-center text-white">
                <li class="m-0 pl-10 pr-10"> <a href="#" class="text-white"><i class="fa fa-phone text-theme-colored2"></i> 123-456-789</a> </li>
                <li class="m-0 pl-10 pr-10"> 
                  <a href="#" class="text-white"><i class="fa fa-envelope-o text-theme-colored2 mr-5"></i> contact@yourdomain.com</a> 
                </li>
              </ul>
            </div>
          </div>
<!--           <div class="col-md-4 pr-0"> -->
<!--             <div class="widget"> -->
<!--               <ul class="styled-icons icon-sm icon-theme-colored2 pull-right flip sm-pull-none sm-text-center mt-5"> -->
<!--                 <li><a href="#"><i class="fa fa-facebook"></i></a></li> -->
<!--                 <li><a href="#"><i class="fa fa-twitter"></i></a></li> -->
<!--                 <li><a href="#"><i class="fa fa-google-plus"></i></a></li> -->
<!--                 <li><a href="#"><i class="fa fa-instagram"></i></a></li> -->
<!--                 <li><a href="#"><i class="fa fa-linkedin"></i></a></li> -->
<!--               </ul> -->
<!--             </div> -->
<!--           </div> -->
		  <div class="col-md-4 pr-0">
		  </div>	
          <div class="col-md-2">
            <ul class="list-inline sm-pull-none sm-text-center text-right text-white mb-sm-20 mt-10">
            	<c:choose>
            		<c:when test="${sessionVO eq null }" >
            			<li class="m-0 pl-10"> <a href="<c:url value='login' />" class="text-white ajaxload-popup"><i class="fa fa-user-o mr-5 text-white"></i> Login /</a> </li>
            			<li class="m-0 pl-0 pr-10"> 
                			<a href="<c:url value='selectJoinChoice' />" class="text-white ajaxload-popup"><i class="fa fa-edit mr-5"></i>Register</a> 
              			</li>
            		</c:when>
            		<c:otherwise>
            			 <li class="m-0 pl-10"> <a href="<c:url value='logoutProc' />" class="text-white ajaxload-popup"><i class="fa fa-user-o mr-5 text-white"></i> Logout </a> </li>             
            		</c:otherwise>
            	</c:choose>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div style="background: url(/resources/img/background.png); width:1580px; height:385px">
    	
    </div>
    
    <div class="header-nav">
      <div class="header-nav-wrapper navbar-scrolltofixed bg-white">
        <div class="container">
          <nav id="menuzord" class="menuzord default theme-colored menuzord-responsive">
            <ul class="menuzord-menu">
              <li class="active"><a href="#home">Home</a>
                <ul class="dropdown">
                  <li><a href="#">Multipage Layouts</a>
                    <ul class="dropdown">
                      <li><a href="index-mp-layout1.html">Layout1</a></li>
                      <li><a href="index-mp-layout2.html">Layout2</a></li>
                      <li><a href="index-mp-layout3.html">Layout3</a></li>
                      <li><a href="index-mp-layout4.html">Layout4</a></li>
                      <li><a href="index-mp-layout5.html">Layout5</a></li>
                      <li><a href="index-mp-layout6.html">Layout6</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Singlepage Layouts</a>
                    <ul class="dropdown">
                      <li><a href="index-sp-layout1.html">Layout1</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Boxed Layouts</a>
                    <ul class="dropdown">
                      <li><a href="index-boxed-mp-layout1.html">Layout1</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Dark Layouts</a>
                    <ul class="dropdown">
                      <li><a href="index-dark-mp-layout1.html">Layout1</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Magazine Home Layouts</a>
                    <ul class="dropdown">
                      <li><a href="index-magazine-home-layout1.html">Magazine Home layout1</a></li>
                      <li><a href="index-magazine-home-layout2.html">Magazine Home layout2</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Hot Layouts <span class="label label-success">New</span></a>
                    <ul class="dropdown">
                      <li><a href="index-hot-personal-home.html">Personal Home Layout</a></li>
                      <li><a href="index-vertical-nav-layout1.html">Vertical-Nav layout1</a></li>
                    </ul>
                  </li>
                  <li><a href="index-hot-shop-home.html">Shop Home</a></li>
                  <li><a href="#">Home Variations</a>
                    <ul class="dropdown">
                      <li><a href="#">Rev Slider</a>
                        <ul class="dropdown">
                          <li><a href="index-home-variation-revslider-style1.html">Layout1</a></li>
                          <li><a href="index-home-variation-revslider-style2.html">Layout2</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Maximage Slider</a>
                        <ul class="dropdown">
                          <li><a href="index-home-variation-maximageslider-style1.html">Layout1</a></li>
                          <li><a href="index-home-variation-maximageslider-style2.html">Layout2</a></li>
                          <li><a href="index-home-variation-maximageslider-style3.html">Layout3</a></li>
                        </ul>
                      </li>
                      <li><a href="index-home-variation-owl-carousel.html">Owl Carousel</a></li>
                      <li><a href="index-home-variation-owl-image-slider.html">Owl Image Slider</a></li>
                      <li><a href="index-home-variation-typed-text.html">Typed Text Layout</a></li>
                      <li><a href="index-home-variation-video-background.html">Youtube Background Video</a></li>
                      <li><a href="index-home-variation-html5-video.html">Html5 Background Video</a></li>
                      <li><a href="index-home-variation-bg-image-parallax.html">Bg Image Parallax Layout</a></li>
                      <li><a href="index-home-variation-bg-static.html">Bg Static Layout</a></li>
                      <li><a href="#">Home Appointment Form</a>
                        <ul class="dropdown">
                          <li><a href="index-home-variation-appointment-form-style1.html">Layout1</a></li>
                          <li><a href="index-home-variation-appointment-form-style2.html">Layout2</a></li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a href="#">Features <span class="label label-success">New</span></a>
                <ul class="dropdown">
                  <li><a href="features-preloader.html">Preloaders</a></li>
                  <li><a href="#">Layout Variations</a>
                    <ul class="dropdown">
                      <li><a href="#">Boxed Layout</a>
                        <ul class="dropdown">
                          <li><a href="features-index-boxed-layout1.html">Layout 1</a></li>
                          <li><a href="features-index-boxed-layout2.html">Layout 2</a></li>
                          <li><a href="features-index-boxed-layout3.html">Layout 3</a></li>
                          <li><a href="features-index-boxed-layout4.html">Layout 4</a></li>
                          <li><a href="features-index-boxed-layout5.html">Layout 5</a></li>
                        </ul>
                      </li>
                      <li><a href="#">RTL Layout</a>
                        <ul class="dropdown">
                          <li><a href="features-index-rtl-layout1.html">Layout 1</a></li>
                          <li><a href="features-index-rtl-layout2-boxed.html">Layout 2 - Boxed</a></li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                  <li><a href="#">Header</a>
                    <ul class="dropdown">
                      <li><a href="features-header-style1.html">Header Style1</a></li>
                      <li><a href="features-header-style2.html">Header Style2</a></li>
                      <li><a href="features-header-style3.html">Header Style3</a></li>
                      <li><a href="features-header-style4.html">Header Style4</a></li>
                      <li><a href="features-header-style5.html">Header Style5</a></li>
                      <li><a href="features-header-style6.html">Header Style6</a></li>
                      <li><a href="features-header-style7.html">Header Style7</a></li>
                      <li><a href="features-header-style8.html">Header Style8</a></li>
                      <li><a href="features-header-style9.html">Header Style9</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Header Modern</a>
                    <ul class="dropdown">
                      <li><a href="#">Style 1</a>
                        <ul class="dropdown">
                          <li><a href="features-header-modern-style1.html">Dark</a></li>
                          <li><a href="features-header-modern-style1-white.html">White</a></li>
                          <li><a href="features-header-modern-style1-theme-colored.html">Theme Colored</a></li>
                          <li><a href="features-header-modern-style1-side-panel.html">Side Push Panel</a></li>
                          <li><a href="features-header-modern-style1-side-panel2.html">Side Push Panel 2</a></li>
                          <li><a href="features-header-modern-style1-contact-info-box.html">With Contact Info Box</a></li>
                          <li><a href="features-header-modern-style1-contact-info-box-small.html">With Contact Info Box Small</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Style 2</a>
                        <ul class="dropdown">
                          <li><a href="features-header-modern-style2.html">Dark</a></li>
                          <li><a href="features-header-modern-style2-white.html">White</a></li>
                          <li><a href="features-header-modern-style2-theme-colored.html">Theme Colored</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Style 3</a>
                        <ul class="dropdown">
                          <li><a href="features-header-modern-style3.html">Dark</a></li>
                          <li><a href="features-header-modern-style3-white.html">White</a></li>
                          <li><a href="features-header-modern-style3-theme-colored.html">Theme Colored</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Style 4</a>
                        <ul class="dropdown">
                          <li><a href="features-header-modern-style4.html">Dark</a></li>
                          <li><a href="features-header-modern-style4-white.html">White</a></li>
                          <li><a href="features-header-modern-style4-theme-colored.html">Theme Colored</a></li>
                          <li><a href="features-header-modern-style4-theme-colored2.html">Theme Colored2</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Style 5</a>
                        <ul class="dropdown">
                          <li><a href="features-header-modern-style5.html">Dark</a></li>
                          <li><a href="features-header-modern-style5-white.html">White</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Style 6</a>
                        <ul class="dropdown">
                          <li><a href="features-header-modern-style6.html">Dark</a></li>
                          <li><a href="features-header-modern-style6-white.html">White</a></li>
                          <li><a href="features-header-modern-style6-theme-colored.html">Theme Colored</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Style 7</a>
                        <ul class="dropdown">
                          <li><a href="features-header-modern-style7.html">Dark</a></li>
                          <li><a href="features-header-modern-style7-white.html">White</a></li>
                          <li><a href="features-header-modern-style7-theme-colored.html">Theme Colored</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Style 8</a>
                        <ul class="dropdown">
                          <li><a href="features-header-modern-style8.html">Dark</a></li>
                          <li><a href="features-header-modern-style8-white.html">White</a></li>
                          <li><a href="features-header-modern-style8-theme-colored.html">Theme Colored</a></li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                  <li><a href="#">Header Floating</a>
                    <ul class="dropdown">
                      <li><a href="features-header-floating-header1.html">Sample 1</a></li>
                      <li><a href="features-header-floating-header2.html">Sample 2</a></li>
                      <li><a href="features-header-floating-header3.html">Sample 3</a></li>
                      <li><a href="features-header-floating-header4.html">Sample 4</a></li>
                      <li><a href="features-header-floating-header5.html">Sample 5</a></li>
                      <li><a href="features-header-floating-header6.html">Sample 6</a></li>
                      <li><a href="features-header-floating-header7.html">Sample 7</a></li>
                      <li><a href="features-header-floating-header8.html">Sample 8</a></li>
                      <li><a href="features-header-floating-header9.html">Sample 9</a></li>
                      <li><a href="features-header-floating-header10.html">Sample 10</a></li>
                      <li><a href="features-header-floating-header11.html">Sample 11</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Page Title</a>
                    <ul class="dropdown">
                      <li><a href="features-page-title-text-left.html">Text Left</a></li>
                      <li><a href="features-page-title-text-center.html">Text Center</a></li>
                      <li><a href="features-page-title-text-right.html">Text Right</a></li>
                      <li><a href="features-page-title-mini-version.html">Mini Version</a></li>
                      <li><a href="features-page-title-big-version.html">Big Version</a></li>
                      <li><a href="features-page-title-extra-big-version.html">Extra Big Version</a></li>
                      <li><a href="features-page-title-bg-white.html">Bg White</a></li>
                      <li><a href="features-page-title-bg-image.html">Bg Image</a></li>
                      <li><a href="features-page-title-bg-image-parallax.html">Bg Image Parallax</a></li>
                      <li><a href="features-page-title-bg-video.html">Bg Video</a></li>
                      <li><a href="features-page-title-full-transparent.html">Full Transparent</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Side Push Panel</a>
                    <ul class="dropdown">
                      <li><a href="features-side-push-panel-left-overlay.html">Left Overlay</a></li>
                      <li><a href="features-side-push-panel-left-push.html">Left Push</a></li>
                      <li><a href="features-side-push-panel-right-overlay.html">Right Overlay</a></li>
                      <li><a href="features-side-push-panel-right-push.html">Right Push</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Form</a>
                    <ul class="dropdown">
                      <li><a href="#">Subscribe Form</a>
                        <ul class="dropdown">
                          <li><a href="form-subscribe.html">Form style 1</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Appointment Form</a>
                        <ul class="dropdown">
                          <li><a href="form-appointment-style1.html">Form style 1</a></li>
                          <li><a href="form-appointment-style2.html">Form style 2</a></li>
                          <li><a href="form-appointment-style3.html">Form style 3</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Job Apply Form</a>
                        <ul class="dropdown">
                          <li><a href="form-job-apply-style1.html">Form style 1</a></li>
                          <li><a href="form-job-apply-style2.html">Form style 2</a></li>
                          <li><a href="form-job-apply-style3.html">Form style 3</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Quick Contact Form</a>
                        <ul class="dropdown">
                          <li><a href="form-quick-contact-style1.html">Form style 1</a></li>
                          <li><a href="form-quick-contact-style2.html">Form style 2</a></li>
                          <li><a href="form-quick-contact-style3.html">Form style 3</a></li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                  <li><a href="#">Paypal Form</a>
                    <ul class="dropdown">
                      <li><a href="#">Donation Onetime</a>
                        <ul class="dropdown">
                          <li><a href="form-paypal-donate-onetime-style1.html">Style1</a></li>
                          <li><a href="form-paypal-donate-onetime-style2.html">Style2</a></li>
                          <li><a href="form-paypal-donate-onetime-style3.html">Style3</a></li>
                          <li><a href="form-paypal-donate-onetime-style4.html">Style4</a></li>
                          <li><a href="form-paypal-donate-onetime-style5.html">Style5</a></li>
                          <li><a href="form-paypal-donate-onetime-style6.html">Style6</a></li>
                          <li><a href="form-paypal-donate-onetime-style7.html">Style7</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Donation Recurring</a>
                        <ul class="dropdown">
                          <li><a href="form-paypal-donate-recurring-style1.html">Style1</a></li>
                          <li><a href="form-paypal-donate-recurring-style2.html"> Style2</a></li>
                          <li><a href="form-paypal-donate-recurring-style3.html">Style3</a></li>
                          <li><a href="form-paypal-donate-recurring-style4.html">Style4</a></li>
                          <li><a href="form-paypal-donate-recurring-style5.html">Style5</a></li>
                        </ul>
                      </li>
                      <li><a href="#">Both Onetime/Recurring</a>
                        <ul class="dropdown">
                          <li><a href="form-paypal-donate-both-onetime-recurring-style1.html">Style1</a></li>
                          <li><a href="form-paypal-donate-both-onetime-recurring-style2.html">Style2</a></li>
                          <li><a href="form-paypal-donate-both-onetime-recurring-style3.html">Style3</a></li>
                          <li><a href="form-paypal-donate-both-onetime-recurring-style4.html">Style4</a></li>
                          <li><a href="form-paypal-donate-both-onetime-recurring-style5.html">Style5</a></li>
                        </ul>
                      </li>
                      <li><a href="form-paypal-cart-style1.html">Cart Payment</a></li>
                      <li><a href="form-paypal-order-style1.html">Order Payment Style1</a></li>
                      <li><a href="form-paypal-order-style2.html">Order Payment Style2</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Popup Promo Box</a>
                    <ul class="dropdown">
                      <li><a href="features-popup-promo-box.html">Default</a></li>
                      <li><a href="features-popup-promo-box-cookie-enabled.html">Cookie Enabled</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Footer</a>
                    <ul class="dropdown">
                      <li><a href="features-footer-style10-fixed-footer.html#footer">Fixed Footer</a></li>
                      <li><a href="features-footer-style1.html#footer">Footer One</a></li>
                      <li><a href="features-footer-style2.html#footer">Footer Two</a></li>
                      <li><a href="features-footer-style3.html#footer">Footer Three</a></li>
                      <li><a href="features-footer-style4.html#footer">Footer Four</a></li>
                      <li><a href="features-footer-style5.html#footer">Footer Five</a></li>
                      <li><a href="features-footer-style6.html#footer">Footer Six</a></li>
                      <li><a href="features-footer-style7.html#footer">Footer Seven</a></li>
                      <li><a href="features-footer-style8.html#footer">Footer Eight</a></li>
                      <li><a href="features-footer-style9.html#footer">Footer Nine</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a href="#">Pages</a>
                <ul class="dropdown">
                  <li><a href="form-appointment-style2.html">Free Consulting</a></li>
                  <li><a href="form-login-register-style1.html">Login or Register</a></li>
                  <li><a href="#">About</a>
                    <ul class="dropdown">
                      <li><a href="page-about-style1.html">About Style 1</a></li>
                      <li><a href="page-about-style2.html">About Style 2</a></li>
                      <li><a href="page-about-style3.html">About Style 3</a></li>
                      <li><a href="page-about-style4.html">About Style 4</a></li>
                    </ul>
                  </li>
                  <li><a href="#home">Service</a>
                    <ul class="dropdown">
                      <li><a href="page-services-style1.html">Service Style1</a></li>
                      <li><a href="page-services-style2.html">Service Style2</a></li>
                      <li><a href="page-services-style3.html">Service Style3</a></li>
                      <li><a href="page-service-financial-analysis.html">Service Details</a></li>
                    </ul>
                  </li>
                  <li><a href="#home">Team</a>
                    <ul class="dropdown">
                      <li><a href="page-team-style1.html">Team style1</a></li>
                      <li><a href="page-team-style2.html">Team style2</a></li>
                      <li><a href="page-team-details.html">Team Details</a></li>
                    </ul>
                  </li>
                  <li><a href="#home">Project</a>
                    <ul class="dropdown">
                      <li><a href="page-project-style1.html">Project 1</a></li>
                      <li><a href="page-project-style2.html">Project 2</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Contact</a>
                    <ul class="dropdown">
                      <li><a href="page-contact1.html">Contact style 1</a></li>
                      <li><a href="page-contact2.html">Contact style 2</a></li>
                      <li><a href="page-contact3.html">Contact style 3</a></li>
                      <li><a href="page-contact4.html">Contact style 4</a></li>
                      <li><a href="page-contact5-with-multiple-marker.html">Contact 5 - Multiple Marker</a></li>
                      <li><a href="page-contact6-with-multiple-marker.html">Contact 6 - Multiple Marker</a></li>
                      <li><a href="page-contact7-google-recaptcha.html">Contact 7 - reCAPTCHA</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Gallery</a>
                    <ul class="dropdown">
                      <li><a href="page-gallery-3col.html">3 Columns</a></li>
                      <li><a href="page-gallery-3col-only-image.html">3 Columns Only Image</a></li>
                      <li><a href="page-gallery-4col.html">4 Columns</a></li>
                      <li><a href="page-gallery-4col-only-image.html">4 Columns Only Image</a></li>
                      <li><a href="page-gallery-grid.html">Grids (2-10 Columns)</a></li>
                      <li><a href="page-gallery-grid-animation.html">Grids with Animation (2-10 Columns)</a></li>
                      <li><a href="page-gallery-3col-tiles.html">3 Columns Tiles</a></li>
                      <li><a href="page-gallery-4col-tiles.html">4 Columns Tiles</a></li>
                      <li><a href="page-gallery-masonry-tiles.html">Tiles (2-10 Columns)</a></li>
                      <li><a href="page-gallery-masonry-tiles-animation.html">Tiles with Animation (2-10 Columns)</a></li>
                      <li><a href="page-gallery-prettyphoto.html">Pretty Photo Gallery</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Pricing</a>
                    <ul class="dropdown">
                      <li><a href="page-pricing-style1.html">Pricing style1</a></li>
                      <li><a href="page-pricing-style2.html">Pricing style2</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Shop</a>
                    <ul class="dropdown">
                      <li><a href="shop-category.html">Category</a></li>
                      <li><a href="shop-category-sidebar.html">Category Sidebar</a></li>
                      <li><a href="shop-product-details.html">Product Details</a></li>
                      <li><a href="shop-cart.html">Cart</a></li>
                      <li><a href="shop-checkout.html">Checkout</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Job</a>
                    <ul class="dropdown">
                      <li><a href="job-list.html">Job List</a></li>
                      <li><a href="job-details-style1.html">Job Details Style1</a></li>
                      <li><a href="job-details-style2.html">Job Details Style2</a></li>
                    </ul>
                  </li>
                  <li><a href="#">FAQ</a>
                    <ul class="dropdown">
                      <li><a href="page-faq-style1.html">FAQ Style1</a></li>
                      <li><a href="page-faq-style2.html">FAQ Style2</a></li>
                      <li><a href="page-faq-style3.html">FAQ Style3</a></li>
                      <li><a href="page-faq-style4.html">FAQ Style4</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Page 404</a>
                    <ul class="dropdown">
                      <li><a href="page-404-style1.html">style1</a></li>
                      <li><a href="page-404-style2.html">style2</a></li>
                      <li><a href="page-404-style3.html">style3</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Coming Soon</a>
                    <ul class="dropdown">
                      <li><a href="page-coming-soon-style1.html">style1</a></li>
                      <li><a href="page-coming-soon-style2.html">style2</a></li>
                      <li><a href="page-coming-soon-style3.html">style3</a></li>
                      <li><a href="page-coming-soon-style4.html">style4</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Under Construction</a>
                    <ul class="dropdown">
                      <li><a href="page-under-construction-style1.html">style1</a></li>
                      <li><a href="page-under-construction-style2.html">style2</a></li>
                      <li><a href="page-under-construction-style3.html">style3</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a href="#">Service</a>
                <ul class="dropdown">
                  <li><a href="page-service-business-consulting.html">Business Consulting</a></li>
                  <li><a href="page-service-financial-analysis.html">Financial Analysis</a></li>
                  <li><a href="page-service-investment-banking.html">Investment Banking</a></li>
                  <li><a href="page-service-investment-planning.html">Investment Planning</a></li>
                  <li><a href="page-service-online-consulting.html">Online Consulting</a></li>
                  <li><a href="page-service-saving-investments.html">Saving Investments</a></li>
                </ul>
              </li>
              <li><a href="#">Blog</a>
                <ul class="dropdown">
                  <li><a href="#">Blog Classic</a>
                    <ul class="dropdown dropdown-left">
                      <li><a href="blog-classic-no-sidebar.html">Blog Classic No Sidebar</a></li>
                      <li><a href="blog-classic-left-sidebar.html">Blog Classic Left Sidebar</a></li>
                      <li><a href="blog-classic-right-sidebar.html">Blog Classic Right Sidebar</a></li>
                      <li><a href="blog-classic-both-sidebar.html">Blog Classic Both Sidebar</a></li>
                      <li><a href="blog-classic-left-thumbs.html">Blog Classic Left Thumbs</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Blog Grid</a>
                    <ul class="dropdown dropdown-left">
                      <li><a href="blog-grid-2-column.html">Blog Grid 2 Column</a></li>
                      <li><a href="blog-grid-3-column.html">Blog Grid 3 Column</a></li>
                      <li><a href="blog-grid-4-column.html">Blog Grid 4 Column</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Blog Masonry</a>
                    <ul class="dropdown dropdown-left">
                      <li><a href="blog-masonry-2-column.html">Blog Masonry 2 Column</a></li>
                      <li><a href="blog-masonry-3-column.html">Blog Masonry 3 Column</a></li>
                      <li><a href="blog-masonry-4-column.html">Blog Masonry 4 Column</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Blog Single</a>
                    <ul class="dropdown dropdown-left">
                      <li><a href="blog-single-no-sidebar.html">Blog Single No Sidebar</a></li>
                      <li><a href="blog-single-left-sidebar.html">Blog Single Left Sidebar</a></li>
                      <li><a href="blog-single-right-sidebar.html">Blog Single Right Sidebar</a></li>
                      <li><a href="blog-single-both-sidebar.html">Blog Single Both Sidebar</a></li>
                      <li><a href="blog-single-disqus-comments.html">Blog Single Discuss Comments</a></li>
                      <li><a href="blog-single-facebook-comments.html">Blog Single Facebook Comments</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Blog Infinity Scroll</a>
                    <ul class="dropdown dropdown-left">
                      <li><a href="blog-extra-infinity-scroll.html">Blog Infinity Scroll Default</a></li>
                      <li><a href="blog-extra-infinity-scroll-lazyload.html">Blog Infinity Scroll Lazyload</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Blog Timeline</a>
                    <ul class="dropdown dropdown-left">
                      <li><a href="blog-timeline.html">Blog Timeline Default</a></li>
                      <li><a href="blog-timeline-masonry.html">Blog Timeline Masonry</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              
              <li><a href=<c:out value="/board" />>Board</a>
                <ul class="dropdown">
                  <li><a href="#">Blog Classic</a>
                    <ul class="dropdown dropdown-left">
                      <li><a href="blog-classic-no-sidebar.html">Blog Classic No Sidebar</a></li>
                      <li><a href="blog-classic-left-sidebar.html">Blog Classic Left Sidebar</a></li>
                      <li><a href="blog-classic-right-sidebar.html">Blog Classic Right Sidebar</a></li>
                      <li><a href="blog-classic-both-sidebar.html">Blog Classic Both Sidebar</a></li>
                      <li><a href="blog-classic-left-thumbs.html">Blog Classic Left Thumbs</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Blog Grid</a>
                    <ul class="dropdown dropdown-left">
                      <li><a href="blog-grid-2-column.html">Blog Grid 2 Column</a></li>
                      <li><a href="blog-grid-3-column.html">Blog Grid 3 Column</a></li>
                      <li><a href="blog-grid-4-column.html">Blog Grid 4 Column</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Blog Masonry</a>
                    <ul class="dropdown dropdown-left">
                      <li><a href="blog-masonry-2-column.html">Blog Masonry 2 Column</a></li>
                      <li><a href="blog-masonry-3-column.html">Blog Masonry 3 Column</a></li>
                      <li><a href="blog-masonry-4-column.html">Blog Masonry 4 Column</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Blog Single</a>
                    <ul class="dropdown dropdown-left">
                      <li><a href="blog-single-no-sidebar.html">Blog Single No Sidebar</a></li>
                      <li><a href="blog-single-left-sidebar.html">Blog Single Left Sidebar</a></li>
                      <li><a href="blog-single-right-sidebar.html">Blog Single Right Sidebar</a></li>
                      <li><a href="blog-single-both-sidebar.html">Blog Single Both Sidebar</a></li>
                      <li><a href="blog-single-disqus-comments.html">Blog Single Discuss Comments</a></li>
                      <li><a href="blog-single-facebook-comments.html">Blog Single Facebook Comments</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Blog Infinity Scroll</a>
                    <ul class="dropdown dropdown-left">
                      <li><a href="blog-extra-infinity-scroll.html">Blog Infinity Scroll Default</a></li>
                      <li><a href="blog-extra-infinity-scroll-lazyload.html">Blog Infinity Scroll Lazyload</a></li>
                    </ul>
                  </li>
                  <li><a href="#">Blog Timeline</a>
                    <ul class="dropdown dropdown-left">
                      <li><a href="blog-timeline.html">Blog Timeline Default</a></li>
                      <li><a href="blog-timeline-masonry.html">Blog Timeline Masonry</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a href=<c:out value="/joinDetail" />>Detail</a>
              </li>
            </ul>
            <div class="pull-right sm-pull-none mb-sm-15">
              
            </div>
          </nav>
        </div>
      </div>
    </div>
  </header>
  
  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: home -->
    <section id="home">
      <div class="container-fluid p-0">
        
        <!-- START REVOLUTION SLIDER 5.0.7 -->
        <div id="rev_slider_home_wrapper" class="rev_slider_wrapper" data-alias="news-gallery34" style="margin:0px auto; background-color:#ffffff; padding:0px; margin-top:0px; margin-bottom:0px;">
          <!-- START REVOLUTION SLIDER 5.0.7 fullwidth mode -->
          <div id="rev_slider_home" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.0.7">
            <ul>
              <!-- SLIDE 1 -->
              <li data-index="rs-1" data-transition="fade" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="http://placehold.it/1920x1080" data-rotate="0"  data-fstransition="fade" data-saveperformance="off" data-title="Web Show" data-description="">
                <!-- MAIN IMAGE -->
                <img src="/resources/img/background2.jpg" alt="" data-bgposition="center 30%" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                <!-- LAYERS -->
                <!-- LAYER NR. 1 -->
                <div class="tp-caption tp-shape tp-shapewrapper tp-resizeme rs-parallaxlevel-0 bg-theme-colored-transparent-1" 
                  id="slide-1-layer-1" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                  data-width="full"
                  data-height="full"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
                  data-start="500" 
                  data-basealign="slide" 
                  data-responsive_offset="on" 
                  style="z-index: 5;background-color:rgba(0, 0, 0, 0.35);border-color:rgba(0, 0, 0, 1.00);"> 
                </div>
                <!-- LAYER NR. 2 -->
                <div class="tp-caption tp-resizeme rs-parallaxlevel-0 text-white text-uppercase font-roboto-slab font-weight-700" 
                  id="slide-1-layer-2" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['170','150','135','135']" 
                  data-fontsize="['32','28','22','20']"
                  data-lineheight="['56','50','46','40']"
                  data-fontweight="['800','700','700','700']"
                  data-textalign="['center','center','center','center']"
                  data-width="['700','650','600','420']"
                  data-height="none"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="600" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 5; white-space: nowrap; font-weight:700;">최선의 서비스를 제공합니다
                </div>
                <!-- LAYER NR. 3 -->
                <div class="tp-caption tp-resizeme rs-parallaxlevel-0 text-white text-uppercase font-roboto-slab font-weight-700" 
                  id="slide-1-layer-3" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['225','195','175','175']" 
                  data-fontsize="['60','52','42','36']"
                  data-lineheight="['70','60','50','45']"
                  data-fontweight="['800','700','700','700']"
                  data-textalign="['center','center','center','center']"
                  data-width="['700','650','600','420']"
                  data-height="none"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="600" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 5; white-space: nowrap; font-weight:700;">Park Sharing <span class="text-theme-colored2">Service</span>
                </div>
                <!-- LAYER NR. 4 -->
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0" 
                  id="slide-1-layer-4" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['305','260','225','225']"
                  data-fontsize="['15','15',14',16']"
                  data-lineheight="['22','24','24','24']"
                  data-fontweight="['400','400','400','400']"
                  data-textalign="['center','center','center','center']"
                  data-width="['800','650','600','460']"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="700" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 5; white-space: nowrap;">
                </div>
                <!-- LAYER NR. 5 -->
                <div class="tp-caption rs-parallaxlevel-0" 
                  id="slide-1-layer-5" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['370','330','290','290']" 
                  data-width="none"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;" 
                  data-mask_out="x:0;y:0;" 
                  data-start="800"
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  data-responsive="off"
                  style="z-index: 5; white-space: nowrap; letter-spacing:1px;">
                </div>
              </li>
              <!-- SLIDE 2 -->
              <li data-index="rs-2" data-transition="fade" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="http://placehold.it/1920x1080" data-rotate="0"  data-fstransition="fade" data-saveperformance="off" data-title="Web Show" data-description="">
                <!-- MAIN IMAGE -->
                <img src="/resources/img/background.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                <!-- LAYERS -->
                <!-- LAYER NR. 1 -->
                <div class="tp-caption tp-shape tp-shapewrapper tp-resizeme rs-parallaxlevel-0 bg-theme-colored-transparent-1" 
                  id="slide-2-layer-1" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                  data-width="full"
                  data-height="full"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
                  data-start="500" 
                  data-basealign="slide" 
                  data-responsive_offset="on" 
                  style="z-index: 5;background-color:rgba(0, 0, 0, 0.35);border-color:rgba(0, 0, 0, 1.00);"> 
                </div>
                <!-- LAYER NR. 2 -->
                <div class="tp-caption tp-resizeme rs-parallaxlevel-0 text-white text-uppercase font-roboto-slab font-weight-700" 
                  id="slide-2-layer-2" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['170','150','135','135']" 
                  data-fontsize="['32','28','22','20']"
                  data-lineheight="['56','50','46','40']"
                  data-fontweight="['800','700','700','700']"
                  data-textalign="['center','center','center','center']"
                  data-width="['700','650','600','420']"
                  data-height="none"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="600" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 5; white-space: nowrap; font-weight:700;">최선의 서비스를 제공합니다
                </div>
                <!-- LAYER NR. 3 -->
                <div class="tp-caption tp-resizeme rs-parallaxlevel-0 text-white text-uppercase font-roboto-slab font-weight-700" 
                  id="slide-2-layer-3" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['225','195','175','175']" 
                  data-fontsize="['60','52','42','36']"
                  data-lineheight="['70','60','50','45']"
                  data-fontweight="['800','700','700','700']"
                  data-textalign="['center','center','center','center']"
                  data-width="['700','650','600','420']"
                  data-height="none"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="600" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 5; white-space: nowrap; font-weight:700;">Park Sharing<span class="text-theme-colored2">Service</span>
                </div>
                <!-- LAYER NR. 4 -->
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0" 
                  id="slide-2-layer-4" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['305','260','225','225']"
                  data-fontsize="['15','15',14',16']"
                  data-lineheight="['22','24','24','24']"
                  data-fontweight="['400','400','400','400']"
                  data-textalign="['center','center','center','center']"
                  data-width="['800','650','600','460']"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="700" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 5; white-space: nowrap;">
                </div>
                <!-- LAYER NR. 5 -->
                <div class="tp-caption rs-parallaxlevel-0" 
                  id="slide-2-layer-5" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['370','330','290','290']" 
                  data-width="none"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;" 
                  data-mask_out="x:0;y:0;" 
                  data-start="800"
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  data-responsive="off"
                  style="z-index: 5; white-space: nowrap; letter-spacing:1px;">
                </div>
              </li>
              <!-- SLIDE 3 -->
              <li data-index="rs-3" data-transition="fade" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-thumb="http://placehold.it/1920x1080" data-rotate="0"  data-fstransition="fade" data-saveperformance="off" data-title="Web Show" data-description="">
                <!-- MAIN IMAGE -->
                <img src="/resources/img/background3.jpg" alt="" data-bgposition="center 40%" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                <!-- LAYERS -->
                <!-- LAYER NR. 1 -->
                <div class="tp-caption tp-shape tp-shapewrapper tp-resizeme rs-parallaxlevel-0 bg-theme-colored-transparent-1" 
                  id="slide-3-layer-1" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" 
                  data-width="full"
                  data-height="full"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="opacity:0;s:1000;e:Power3.easeInOut;s:1000;e:Power3.easeInOut;" 
                  data-start="500" 
                  data-basealign="slide" 
                  data-responsive_offset="on" 
                  style="z-index: 5;background-color:rgba(0, 0, 0, 0.35);border-color:rgba(0, 0, 0, 1.00);"> 
                </div>
                <!-- LAYER NR. 2 -->
                <div class="tp-caption tp-resizeme rs-parallaxlevel-0 text-white text-uppercase font-roboto-slab font-weight-700" 
                  id="slide-3-layer-2" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['170','150','135','135']" 
                  data-fontsize="['32','28','22','20']"
                  data-lineheight="['56','50','46','40']"
                  data-fontweight="['800','700','700','700']"
                  data-textalign="['center','center','center','center']"
                  data-width="['700','650','600','420']"
                  data-height="none"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="600" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 5; white-space: nowrap; font-weight:700;">최선의 서비스를 제공합니다
                </div>
                <!-- LAYER NR. 3 -->
                <div class="tp-caption tp-resizeme rs-parallaxlevel-0 text-white text-uppercase font-roboto-slab font-weight-700" 
                  id="slide-3-layer-3" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['225','195','175','175']" 
                  data-fontsize="['60','52','42','36']"
                  data-lineheight="['70','60','50','45']"
                  data-fontweight="['800','700','700','700']"
                  data-textalign="['center','center','center','center']"
                  data-width="['700','650','600','420']"
                  data-height="none"
                  data-whitespace="normal"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="600" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 5; white-space: nowrap; font-weight:700;">Park Sharing <span class="text-theme-colored2">Service</span>
                </div>
                <!-- LAYER NR. 4 -->
                <div class="tp-caption tp-resizeme text-white rs-parallaxlevel-0" 
                  id="slide-3-layer-4" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['305','260','225','225']"
                  data-fontsize="['15','15',14',16']"
                  data-lineheight="['22','24','24','24']"
                  data-fontweight="['400','400','400','400']"
                  data-textalign="['center','center','center','center']"
                  data-width="['800','650','600','460']"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
                  data-mask_out="x:0;y:0;s:inherit;e:inherit;" 
                  data-start="700" 
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  style="z-index: 5; white-space: nowrap;">
                </div>
                <!-- LAYER NR. 5 -->
                <div class="tp-caption rs-parallaxlevel-0" 
                  id="slide-3-layer-5" 
                  data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" 
                  data-y="['top','top','top','top']" data-voffset="['370','330','290','290']" 
                  data-width="none"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-transform_idle="o:1;"
                  data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
                  data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
                  data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
                  data-mask_in="x:0px;y:0px;" 
                  data-mask_out="x:0;y:0;" 
                  data-start="800"
                  data-splitin="none" 
                  data-splitout="none" 
                  data-responsive_offset="on" 
                  data-responsive="off"
                  style="z-index: 5; white-space: nowrap; letter-spacing:1px;">
                </div>
              </li>
            </ul>
            <div class="tp-bannertimer tp-bottom" style="height: 5px; background-color: rgba(255, 255, 255, 0.2);"></div>
          </div>
        </div>

        <!-- END REVOLUTION SLIDER -->
        <script type="text/javascript">
          var tpj=jQuery;
          var revapi34;
          tpj(document).ready(function() {
            if(tpj("#rev_slider_home").revolution == undefined){
              revslider_showDoubleJqueryError("#rev_slider_home");
            }else{
              revapi34 = tpj("#rev_slider_home").show().revolution({
                sliderType:"standard",
                jsFileLocation:"js/revolution-slider/js/",
                sliderLayout:"fullwidth",
                dottedOverlay:"none",
                delay:5000,
                navigation: {
                  keyboardNavigation:"on",
                  keyboard_direction: "horizontal",
                  mouseScrollNavigation:"off",
                  onHoverStop:"on",
                  touch:{
                    touchenabled:"on",
                    swipe_threshold: 75,
                    swipe_min_touches: 1,
                    swipe_direction: "horizontal",
                    drag_block_vertical: false
                  }
                  ,
                  arrows: {
                    style:"zeus",
                    enable:true,
                    hide_onmobile:true,
                    hide_under:600,
                    hide_onleave:true,
                    hide_delay:200,
                    hide_delay_mobile:1200,
                    tmp:'<div class="tp-title-wrap">    <div class="tp-arr-imgholder"></div> </div>',
                    left: {
                      h_align:"left",
                      v_align:"center",
                      h_offset:30,
                      v_offset:0
                    },
                    right: {
                      h_align:"right",
                      v_align:"center",
                      h_offset:30,
                      v_offset:0
                    }
                  }/* ,
                  bullets: {
                    enable:true,
                    hide_onmobile:true,
                    hide_under:600,
                    style:"metis",
                    hide_onleave:true,
                    hide_delay:200,
                    hide_delay_mobile:1200,
                    direction:"horizontal",
                    h_align:"center",
                    v_align:"bottom",
                    h_offset:0,
                    v_offset:30,
                    space:5,
                    tmp:'<span class="tp-bullet-img-wrap"><span class="tp-bullet-image"></span></span>'
                  } */
                },
                viewPort: {
                  enable:true,
                  outof:"pause",
                  visible_area:"80%"
                },
                responsiveLevels:[1240,1024,778,480],
                gridwidth:[1240,1024,778,480],
                gridheight:[600,550,500,450],
                lazyType:"none",
                parallax: {
                  type:"scroll",
                  origo:"enterpoint",
                  speed:400,
                  levels:[5,10,15,20,25,30,35,40,45,50],
                },
                shadow:0,
                spinner:"off",
                stopLoop:"off",
                stopAfterLoops:-1,
                stopAtSlide:-1,
                shuffle:"off",
                autoHeight:"off",
                hideThumbsOnMobile:"off",
                hideSliderAtLimit:0,
                hideCaptionAtLimit:0,
                hideAllCaptionAtLilmit:0,
                debugMode:false,
                fallbacks: {
                  simplifyAll:"off",
                  nextSlideOnWindowFocus:"off",
                  disableFocusListener:false,
                }
              });
            }
          }); /*ready*/
        </script>
      <!-- END REVOLUTION SLIDER -->

      </div>
    </section>

    <!-- Section: Features -->
    <section id="features">
      <div class="container">
        <div class="section-title text-center">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h2 class="text-uppercase title">주차장 쉐어링에 오신 것을<span class="text-theme-colored2"> 환영합니다</span></h2>
              <div class="diamond-line-centered-theme-colored2"></div>
              <p>사용자들에게 주차장 공간을 대여해 주세요</p>
            </div>
          </div>
        </div>
        <div class="section-content">
          <div class="row">
            <div class="col-sm-6 col-md-4">
              <div class="feature-item maxwidth400 mb-sm-30">
                <div class="thumb">
                  <img src="<c:url value='/resources/img/register2.png' />" alt="" class="img-fullwidth">
                  <div class="title">
                    <a href="#"><h3> 주차장 대여<i class="fa fa-caret-right pull-right mt-5"></i></h3></a>
                    <p>사용자들에게 대여해 줄 주차장을 등록합니다</p>
                    <a href="#" class="text-theme-colored2">Read More <span class="fa fa-angle-right"></span></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4">
              <div class="feature-item maxwidth400">
                <div class="thumb">
                  <img src="<c:url value='/resources/img/service.jpg' />" alt="" class="img-fullwidth">
                  <div class="title">
                    <a href="#"><h3> 서비스 제공<i class="fa fa-caret-right pull-right mt-5"></i></h3></a>
                    <p>등록된 주차장을 대여해 주는 서비스를 제공합니다</p>
                    <a href="#" class="text-theme-colored2">Read More <span class="fa fa-angle-right"></span></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4">
              <div class="feature-item maxwidth400">
                <div class="thumb">
                  <img src="<c:url value='/resources/img/finance.jpg' />" alt="" class="img-fullwidth">
                  <div class="title">
                    <a href="#"><h3> 수익 창출<i class="fa fa-caret-right pull-right mt-5"></i></h3></a>
                    <p>비어있는 주차장을 제공하여 수익을 창출할 수 있습니다</p>
                    <a href="#" class="text-theme-colored2">Read More <span class="fa fa-angle-right"></span></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: Services -->
    <section id="services" class="services bg-silver-light">
      <div class="container pb-20">
        <div class="section-title">
          <div class="row">
            <div class="col-md-12">
              <h2 class="text-uppercase title">Popular <span class="text-theme-colored2">Services</span></h2>
              <div class="diamond-line-left-theme-colored2"></div>
            </div>
          </div>
        </div>
        <div class="section-content">
          <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-4">
              <div class="icon-box left media p-0 mb-40"> <a class="media-left pull-left flip" href="#"><i class="fa fa-bar-chart-o text-theme-colored2"></i></a>
                <div class="media-body">
                  <h4 class="media-heading heading font-weight-600">Financial Analysis</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum consectetur sit ullam perspiciatis, deserunt.</p>
                </div>
              </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
              <div class="icon-box left media p-0 mb-40"> <a class="media-left pull-left flip" href="#"><i class="fa fa-area-chart text-theme-colored2"></i></a>
                <div class="media-body">
                  <h4 class="media-heading heading font-weight-600">Business Growth</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum consectetur sit ullam perspiciatis, deserunt.</p>
                </div>
              </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
              <div class="icon-box left media p-0 mb-40"> <a class="media-left pull-left flip" href="#"><i class="fa fa-pie-chart text-theme-colored2"></i></a>
                <div class="media-body">
                  <h4 class="media-heading heading font-weight-600">Success Report</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum consectetur sit ullam perspiciatis, deserunt.</p>
                </div>
              </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
              <div class="icon-box left media p-0 mb-40"> <a class="media-left pull-left flip" href="#"><i class="fa fa-cubes text-theme-colored2"></i></a>
                <div class="media-body">
                  <h4 class="media-heading heading font-weight-600">Marketing Plan</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum consectetur sit ullam perspiciatis, deserunt.</p>
                </div>
              </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
              <div class="icon-box left media p-0 mb-40"> <a class="media-left pull-left flip" href="#"><i class="fa fa-globe text-theme-colored2"></i></a>
                <div class="media-body">
                  <h4 class="media-heading heading font-weight-600">Global Business</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum consectetur sit ullam perspiciatis, deserunt.</p>
                </div>
              </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4">
              <div class="icon-box left media p-0 mb-40"> <a class="media-left pull-left flip" href="#"><i class="fa fa-bug text-theme-colored2"></i></a>
                <div class="media-body">
                  <h4 class="media-heading heading font-weight-600">Risk Management</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum consectetur sit ullam perspiciatis, deserunt.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Section: About -->
    <section id="about">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h2 class="text-uppercase title mt-0">Our Success<span class="text-theme-colored2"> Reports</span></h2>
            <div class="diamond-line-left-theme-colored2"></div>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam modi consequuntur maxime voluptates earum illo sunt, veritatis maiores doloribus ut id, nostrum. Temporibus odit quas illum eos dolores itaque facilis omnis beatae saepe eum. Odit labore vel temporibus quasi.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam modi consequuntur maxime voluptates earum illo sunt, veritatis maiores doloribus ut id, nostrum. Temporibus odit quas illum eos dolores itaque facilis omnis beatae saepe eum. Odit labore vel temporibus.</p>
            <a class="btn btn-theme-colored btn-lg font-weight-600 mt-15" href="#">View Details</a>
          </div>
        </div>
      </div>
    </section>

   <!-- Section: Client Say -->
    <section class="layer-overlay overlay-theme-colored-7 parallax" data-bg-img="http://placehold.it/1920x1080">
      <div class="container pt-90 pb-90">
        <div class="row">
          <div class="col-md-10 col-md-offset-1">
            <div class="owl-carousel-1col nav-testimonials" data-nav="true">
              <div class="item">
                <div class="testimonial-wrapper text-center">
                  <div class="thumb"><img class="img-circle img-thumbnail mb-15" alt="" src="http://placehold.it/75x75"></div>
                  <div class="content pt-10">
                    <p class="font-16 text-white font-weight-300">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neque est quasi, quas ipsam, expedita placeat facilis odio illo ex accusantium eaque itaque officiis et sit. Vero quo, impedit neque.</p>
                    <h4 class="author text-white mt-20 mb-5">Catherine Grace - <span class="text-theme-colored2 font-14">Designer</span></h4>
                    <p class="text-gray-darkgray">26th October 2017</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimonial-wrapper text-center">
                  <div class="thumb"><img class="img-circle img-thumbnail mb-15" alt="" src="http://placehold.it/75x75"></div>
                  <div class="content pt-10">
                    <p class="font-16 text-white font-weight-300">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neque est quasi, quas ipsam, expedita placeat facilis odio illo ex accusantium eaque itaque officiis et sit. Vero quo, impedit neque.</p>
                    <h4 class="author text-white mt-20 mb-5">Catherine Grace - <span class="text-theme-colored2 font-14">Designer</span></h4>
                    <p class="text-gray-darkgray">26th October 2017</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimonial-wrapper text-center">
                  <div class="thumb"><img class="img-circle img-thumbnail mb-15" alt="" src="http://placehold.it/75x75"></div>
                  <div class="content pt-10">
                    <p class="font-16 text-white font-weight-300">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Neque est quasi, quas ipsam, expedita placeat facilis odio illo ex accusantium eaque itaque officiis et sit. Vero quo, impedit neque.</p>
                    <h4 class="author text-white mt-20 mb-5">Catherine Grace - <span class="text-theme-colored2 font-14">Designer</span></h4>
                    <p class="text-gray-darkgray">26th October 2017</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    </div>
  <!-- end main-content -->
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

<!-- Footer Scripts -->
<!-- JS | Chart-->
<!-- <script src="js/chart.js"></script> -->
<!-- JS | Custom script for all pages -->
<!-- <script src="js/custom.js"></script> -->

<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
      (Load Extensions only on Local File Systems ! 
       The following part can be removed on Server for On Demand Loading) -->
<script type="text/javascript" src="/resources/js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script>
<script type="text/javascript" src="/resources/js/revolution-slider/js/extensions/revolution.extension.carousel.min.js"></script>
<script type="text/javascript" src="/resources/js/revolution-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript" src="/resources/js/revolution-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="/resources/js/revolution-slider/js/extensions/revolution.extension.migration.min.js"></script>
<script type="text/javascript" src="/resources/js/revolution-slider/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="/resources/js/revolution-slider/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="/resources/js/revolution-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="/resources/js/revolution-slider/js/extensions/revolution.extension.video.min.js"></script>

</body>
</html>