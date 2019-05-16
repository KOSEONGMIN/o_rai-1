<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/cmmn/common_lib.jsp" %>

<style>
	.txt-warning {
		color : red;
	}
</style>	
	
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
<script>
    
    $(function() {
    	
    	// 이메일 중복 체크
		$("#overlayChkBtn").click(function() {
			
			var firstEmail = $("input[name='firstEmail']").val(),
				lastEmail  = $("input[name='lastEmail']").val();
			
			var email = "";
			
			if (firstEmail === "" || lastEmail === "") {
				alert("이메일을 입력하세요!");
				
				$("#overlayChkBtn").focus();
				
				return;	
			} 
				
			email = $("input[name='firstEmail']").val() + "@" + 
					$("input[name='lastEmail']").val();
			
			validChkCls.emailOverlayChkFn(email);
		})
    	
    	$(".ui-ipt").change(function() {
    		$(".txt-warning").hide();
    	})
    	
    	$(".email").change(function() {
    		$("#overlayChkBtn").removeAttr("disabled").removeClass("ui-btn-blue-md")
    				.addClass("ui-btn-gray-md").text("중복확인");
    	})
    	
    	$("#emailSelectBox").change(function() {
			var param = $(this).val();
			
			$("#lastEmail").val(param);
    	})
    	
    	$("#noLimitChk").click(function() {
    		
    		if($(this).is(":checked")) {
    			$(".limitTime").attr("readonly", "readonly");
    			
    			$("#openTime").val(0);
    			$("#closeTime").val(0);
    		} else {
    			$(".limitTime").removeAttr("readonly");
    			$("#openTime").val("");
    			$("#closeTime").val("");
    		}
    	})
    	
    	// 핸드폰 번호, 이용가능 시간 체크
    	var $num  = $(".num"),
    	    $time = $(".time");
		
		$num.numeric("positiveInteger");
	
		$num.keyup(function() {
			var $this = $(this);

			if ($this.val().length > 4) {
				$($this.val($this.val().substring(0, 4)));
			}
		})
		
		$time.numeric("positiveInteger");
    })
    
    // 담당자 정보 및 주차장 정보 입력 객체 
    var registObj = {
    		
    		// 도로명주소, 위/경도 좌표 얻기
    		searchAddrFn	: function() {
    			var roadAddress = "";
    	    	//load함수를 이용하여 core스크립트의 로딩이 완료된 후, 우편번호 서비스를 실행합니다.
    	        daum.postcode.load(function(){
    	            new daum.Postcode({
    	                oncomplete: function(data) {
    	                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
    	                    // 예제를 참고하여 다양한 활용법을 확인해 보세요.
    	                    
    	                    roadAddress = data.roadAddress;
    	                    
    	                    $("input[name='pcode']").attr("value", data.postcode);
    	                    $("input[name='roadAddress']").attr("value", data.roadAddress);
    	                    $("input[name='buildingName']").attr("value", data.buildingName);
    	                    
    	                    $.ajax({
    	                    	type	: "get",
    	                    	url		: "https://dapi.kakao.com/v2/local/search/address.json?query=" + roadAddress,
    	                    	beforeSend	: function(xhr) {
    	                    		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    	                    		xhr.setRequestHeader("Authorization", "KakaoAK b74eeef2c77ffa9b86747f30117f506a");
    	                    	},
    	                   		success	: function(documents) {
    	                   			
    	                   			var addrObj = documents.documents[0].address;
    	                   			
    	                   			// x : longitude, y : latitude
    	                   			var longitude = addrObj.x,
    	                   				latitude  = addrObj.y;
    	                   			
    	                   			$("input[name='longitude']").attr("value",longitude);
    	                   			$("input[name='latitude']").attr("value", latitude);
    	                   		},
    	                   		error	: function(e) {
    	                   			console.log("잘못된 도로명주소 입니다!");
    	                   		}
    	                    })           
    	                }
    	            }).open();
    	        });
    		},
    		
    		// 정보 입력 완료
    		registComplete	: function() {
    			
    			if (!$("#overlayChkBtn").attr("disabled") === true) {
    				alert("email 중복체크 하세요!");
    				
    				$("#overlayChkBtn").focus();
    				
    				return;
    			}

    			if (validChkCls.validChkCallFn()) {		
    				var url = "<c:url value='/joinComplete'/>";
    		    	
    				var postcode = $("#pcode").val();
    				
    				$("input[name='postcode']").val(postcode);
    				
    		    	$("#registCompleteFrm").attr("action", url);
    		    	$("#registCompleteFrm").submit();
    			}
    		}
    }
    
 	// 유효성 검사 객체
	var validChkCls = {	
		
    	// 이메일 중복체크
    	emailOverlayChkFn : function(email) {
    		
    		$.ajax({
    			url		: "<c:url value='/ajax/emailOverlayChk' />",
    			type	: "post",
    			data	: {"email" : email},
    			
    			success	: function(data) {
    				
    				if (data.isSuccess === "SUCCESS") {
    					alert("사용 가능한 email 입니다!");
    					
    					$("#overlayChkBtn").attr("disabled", "disabled").removeClass("ui-btn-gray-md")
    							.addClass("ui-btn-blue-md").text("사용가능!");
    				} else {
    					alert("이미 사용중인 email 입니다!");
    					
    					$("#firstEmail").focus();
    				}
    			},
    			error	: function(e) {
    				alert("이메일 중복체크 에러발생!");	
    			}
    		})
    	},
    	
    	// 이메일 체크
    	emailChkFn	  : function(email) {
    		var regex = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      		return regex.test(email);
    	},
    	
    	// 패스워드 체크
    	passwordChkFn	: function(password) {
    		// var re = /^(?=.{8,})(?=.*\d)(?=.*[a-z])(?!.*\s).*$/;
    		var regex = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

    		return regex.test(password);
    	},
    		
		// 정보 등록부분 빈값 체크
		emptyChkFn	: function() {
			
			var essnList = $(".ui-ipt");
			
			var emptyCount = 0;
			
			essnList.each(function(i, item) {
				
				if (CmmnJsUtil.isEmpty($(item).val())) {
					emptyCount++;
					
					return false;
				}
			})
			
			if (emptyCount > 0) {
				alert("비어있는 곳이 있습니다!");
				return false;
			}
			
			return true;
		},
		
		// 라디오버튼 체크여부
		/* radioChkFn	: function() {
			
			if($("input[name=rdo-group-mail]:checked").length === 0 || 
					$("input[name=rdo-group-phone]:checked").length === 0) {
				alert("수신 여부를 체크해주세요!");
				
				return false;
			}
			
			return true;
		}, */
		
		// 유효성 검사
		validChkCallFn	: function() {
			
	    	var email 			= $("input[name='firstEmail']").val() + "@" + $("input[name='lastEmail']").val(),
				password 		= $("#firstPwd").val(),
				firstPhoneNum 	= $("#firstPhoneNum").val(),
				lastPhoneNum  	= $("#lastPhoneNum").val(),
				fee				= $("#fee").val(),
	    		bookableCount	= $("#bookableCount").val(),
		    	totalCount		= $("#totalCount").val(),
		    	openTime		= $("#openTime").val(),
		    	closeTime		= $("#closeTime").val();
	    	
			// 이메일 체크
			if (!this.emailChkFn(email)) {
				$(".txt-warning").eq(0).text("이메일 형식이 맞지 않습니다!").show();
				
				$("#firstEmail").focus();
				
				return false;
			}
	
			// 비밀번호 체크 
			if (!this.passwordChkFn(password)) {
				
				if (password.length < 8) {
					$(".txt-warning").eq(1).text("비밀번호는 8자리 이상 이어야 합니다!").show();
					
					$("#firstPwd").focus();
					
					return false;
				} else {
					$(".txt-warning").eq(1).text("비밀번호는 영문/숫자/특수문자를 포함해야 합니다!").show();
					
					$("#firstPwd").focus();
					
					return false;
				}
			}
			
			// 비밀번호 확인 체크
			if (password !== $("input[name='pwd']").val()) {
				$(".txt-warning").eq(2).text("비밀번호가 일치하지 않습니다").show();
				
				$("#secondPwd").focus();
				
				return false;
			}
			
			/* // 휴대폰 번호 체크
			if (!CmmnJsUtil.isNumeric(firstPhoneNum) || !CmmnJsUtil.isNumeric(lastPhoneNum)) {
				$(".txt-warning").eq(3).text("휴대폰 번호는 숫자만 입력가능 합니다!").show();
				
				$("#firstPhoneNum").focus();
				
				return false;
			} */
			
			if (firstPhoneNum.length < 4 || lastPhoneNum.length < 4) {
				$(".txt-warning").eq(3).text("휴대폰 번호 형식이 올바르지 않습니다!").show();
				
				$("#firstPhoneNum").focus();
				
				return false;
			}
			    			
			// 요금 체크
			if (!CmmnJsUtil.isNumeric(fee)) {
				$(".txt-warning").eq(4).text("요금은 숫자만 입력가능 합니다!").show();
				
				$("#fee").focus();
				
				return false;
			}
			
			// 이용 가능시간 체크
			if (!$("#noLimitChk").is(":checked")) {
				
				if (Number(openTime) > 24 || Number(closeTime) > 24) {
					$(".txt-warning").eq(5).text("사용시간 형식이 올바르지 않습니다!").show();
					
					$("#openTime").focus();
					
					return false;			
				}
				
			}
			
			// 예약가능, 총  주차장 수 체크
			if (!CmmnJsUtil.isNumeric(bookableCount) || !CmmnJsUtil.isNumeric(totalCount)) {
				$(".txt-warning").eq(6).text("예약가능, 총 주차장 수는 숫자만 입력가능 합니다!").show();
				
				$("#bookableCount").focus();
				
				return false;
			}
			
			// 빈값 체크
			if (!this.emptyChkFn() /* || !this.radioChkFn() */) {
				/* var url = "<c:url value='/joinComplete.do'/>";
		    	
		    	$("#registCompleteFrm").attr("action", url);
		    	$("#registCompleteFrm").submit(); */ 
		    	return false;
			}
			
			return true;
		} 
	} 

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
	
	
    <!-- container -->
    <div id="container">
        <form id="registCompleteFrm" action="" method="post">
	        <!-- contents -->
	        <div class="center-wrap">
	            <!-- <p class="join-step mgt-70"><img src="common/images/sub/txt_img_join_step_03.png" alt="03 정보입력"></p> -->
	
	            <h3 class="heading-medium join-enter mgt-60">주차장 등록 기본정보 입력사항</h3>
	
	            <h3 class="heading-medium join-group-tit">주차장 기본 정보</h3>
	            <span class="sub-tit"><span>*</span><span>표시정보는 필수 입력 사항이니 반드시 입력해 주십시오.</span></span>
	            <div class="join-group">
	                <div class="join-row email">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>이메일</span><span class="point">*</span></h3>
	                        <input type="text" id="firstEmail" class="ui-ipt email" name="firstEmail"><span>@</span><input type="text" id="lastEmail" class="ui-ipt email" name="lastEmail">
	                        <select name="" id="emailSelectBox">
	                            <option value="">직접입력</option>
	                            <option value="naver.com">네이버</option>
	                            <option value="daum.net">다음</option>
	                            <option value="gmail.com">구글</option>
	                        </select>
	                        <button id="overlayChkBtn" type="button" class="ui-btn-gray-md">중복확인</button>
	                        <span class="txt-warning"></span>
	                    </div>
<!-- 	                    <div class="join-item"> -->
<!-- 	                        <h3 class="item-tit txt-regular"><span>메일수신</span><span class="point">*</span></h3> -->
<!-- 	                        <div class="ui-radio"> -->
<!-- 	                            <input type="radio" id="rdo1" name="rdo-group-mail"> -->
<!-- 	                            <label for="rdo1">받음</label> -->
<!-- 	                        </div> -->
<!-- 	                        <div class="ui-radio"> -->
<!-- 	                            <input type="radio" id="rdo2" name="rdo-group-mail" checked> -->
<!-- 	                            <label for="rdo2">받지않음</label> -->
<!-- 	                        </div> -->
<!-- 	                        <p class="sub-info-txt"><span class="ui-bullet"></span> 수신동의시 이벤트 및 다양한 정보를 받으실 수 있습니다.</p> -->
<!-- 	                    </div> -->
	                </div>
	                <div class="join-row">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>비밀번호</span><span class="point">*</span></h3>
	                        <input id="firstPwd" type="password" class="ui-ipt" maxlength="15">
	                        <p class="sub-info-txt"><span class="ui-bullet"></span> 비밀번호는 영문/숫자/특수문자 포함 8자리~15자리</p>
	                        <span class="txt-warning"></span>
	                    </div>
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>비밀번호 확인</span><span class="point">*</span></h3>
	                        <input id="secondPwd" type="password" class="ui-ipt" name="pwd" maxlength="15">
	                        <br>
	                        <span class="txt-warning"></span>
	                    </div>
	                </div>
	                <div class="join-row phone ipt-bar">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>담당자 휴대폰</span><span class="point">*</span></h3>
	                        <select name="" id="">
	                            <option value="">010</option>
	                        </select>
	                        <span class="bar"></span>
	                        <input type="text" id="firstPhoneNum" class="ui-ipt ipt-phone num" name="firstPhoneNum" >
	                        <span class="bar"></span>
	                        <input type="text" id="lastPhoneNum" class="ui-ipt ipt-phone num" name="lastPhoneNum" >
	                        <p class="sub-info-txt"><span class="ui-bullet"></span> 예) 000 - 000 - 0000</p>
	                        <span class="txt-warning"></span>
	                    </div>
<!-- 	                    <div class="join-item"> -->
<!-- 	                        <h3 class="item-tit txt-regular"><span>문자수신</span><span class="point">*</span></h3> -->
<!-- 	                        <div class="ui-radio"> -->
<!-- 	                            <input type="radio" id="rdo3" name="rdo-group-phone"> -->
<!-- 	                            <label for="rdo3">받음</label> -->
<!-- 	                        </div> -->
<!-- 	                        <div class="ui-radio"> -->
<!-- 	                            <input type="radio" id="rdo4" name="rdo-group-phone" checked> -->
<!-- 	                            <label for="rdo4">받지않음</label> -->
<!-- 	                        </div> -->
<!-- 	                        <p class="sub-info-txt"><span class="ui-bullet"></span> 수신동의 시 다양한 정보를 받으실 수 있습니다.</p> -->
<!-- 	                    </div> -->
	                </div>
	                <div class="join-row">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>주소</span><span class="point">*</span></h3>
	                        <input type="text" id="pcode" class="ui-ipt" name="pcode" disabled > <button type="button" onclick="registObj.searchAddrFn()" data-popup="#pop-01" class="ui-btn-gray-md pop-call">우편번호검색</button>
	                        <div class="sub-addr-wrap mgt-10"><input type="text" id="roadAddress" class="ui-ipt" name="roadAddress" ></div>
	                	</div>
	                </div>	
	                <div class="join-row">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>아파트 이름</span><span class="point">*</span></h3>
	                        <input type="text" id="buildingName" class="ui-ipt" name="buildingName" >
	                    </div>
	                </div>
	                <div class="join-row phone ipt-bar">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>단위 요금</span><span class="point">*</span></h3>
	                        <input type="text" id="fee" class="ui-ipt ipt-phone" name="fee" maxlength="10"> 원 (15분당 요금)
	                        <span class="txt-warning"></span>

	                    </div>        
	                </div>
	                <div class="join-row ipt-bar">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>이용가능 시간</span><span class="point">*</span></h3>
	                        <input type="text" id="openTime" class="ui-ipt limitTime time" name="openTime" maxlength="2"> 시<span> ~ </span><input type="text" id="closeTime" class="ui-ipt limitTime time" name="closeTime" maxlength="2">시
	                        <span class="txt-warning"></span>
	                        <br>
	                        <p class="sub-info-txt"><span class="ui-bullet"></span> 0시부터 24시까지 입력가능 (숫자만 입력 가능)</p>
	                        <br>
	                        <div class="ui-chk">
	                            <input type="checkbox" id="noLimitChk" name="noLimitChk">
	                            <label for="noLimitChk">제한없음</label>
	                        </div>
	                    </div>
	                </div>
	                <div class="join-row phone ipt-bar">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>예약 가능 / 총 주차장 수</span><span class="point">*</span></h3>
	                        <input type="text" id="bookableCount" class="ui-ipt ipt-phone" name="bookableCount" maxlength="6"><span> / </span><input type="text" id="totalCount" class="ui-ipt ipt-phone" name="totalCount" maxlength="6">
	                        <span class="txt-warning"></span>
	                    </div>
	                </div> 
	            </div>
	
	            <div class="btn-join-confirm btn-wrap txt-center">
	                <button type="button" class="ui-btn-yellow-lg" onclick="registObj.registComplete()">회원가입 완료</button>
	                <button type="button" class="ui-btn-black-lg" onclick="location.href ='<c:url value="/" />'">회원가입 취소</button>
	            </div>
	            <input type="hidden" id="longitude" name="longitude" >
	            <input type="hidden" id="latitude" name="latitude" >
	            <input type="hidden" id="postcode" name="postcode" >
	        </div>
	        <!--// contents -->
        </form>
    </div>
    <!--// container -->
    <hr> 