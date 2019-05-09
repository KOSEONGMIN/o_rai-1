<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles"%>
<!DOCTYPE>
<html>
	<head>
		<tiles:insertAttribute name="header"/>
  	</head>

	<body>
			<tiles:insertAttribute name="nav"/>
			<tiles:insertAttribute name="content"/>
			<tiles:insertAttribute name="footer"/>
	</body>
	
	<script>
	$('a[href^="#"]').click(function(){
			//지금 누른 a태그의 href 안에있는 #어쩌구를 가져옴
			//this는 현재 클릭한 HTML 요소를 뜻합니다. 
		  var id = $(this).attr('href');
			
			//#어쩌구의 높이를 측정해서 x라는 변수에 담음. (PPT jQuery 부분 참고)
			var x = $(id).offset().top;
			
			//x위치로 스크롤해줌. 천천히 1000ms 동안.
			$('html,body').animate({
				scrollTop : x
			},1000);

		});
	</script>
</html>
