<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles" %>
<%@ include file="/WEB-INF/views/cmmn/common_lib.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<tiles:insertAttribute name="head"/>
</head>
<body>

<!--skip navigation-->
<a href="#container" class="skip-navigation">&raquo; 메뉴 건너 뛰기</a>

<!-- wrapper -->
<div id="wrapper" class="member join">
	<!-- header -->
    <header id="header" class="clearfix">
		<tiles:insertAttribute name="header"/>    
	</header>

    <!-- container -->
    <tiles:insertAttribute name="content"/>
    <!--// container -->
    <hr>

    <!-- footer -->
    <tiles:insertAttribute name="footer"/>
    <!--// footer -->

</div>
<!--// wrapper -->
</body>
</html>