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
	 // 담당자 정보 및 주차장 정보 입력 객체 
	    var detailObj = {
	    		
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
	    	                    
	    	                    $("input[name='postcode']").attr("value", data.postcode);
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
	    		modifyComplete	: function() {
					console.log("modifyComplete call");
					
	    			if (validChkCls.validChkCallFn()) {		
	    				var url = "<c:url value='/joinModify'/>";
	    		    	
	    				/* var firstTimeLength  = $(".time").eq(0).val().length,
	    				    secondTimeLength = $(".time").eq(1).val().length
						
	    				if (firstTimeLength === 1) {
	    					$(".time").eq(0).val("0" + $(".time").eq(0).val());
	    				}
	    				
	    				if (secondTimeLength === 1) {
	    					$(".time").eq(1).val("0" + $(".time").eq(1).val());
	    				} */
	    				
	    				console.log("??????");
	    				
	    		    	$("#modifyFrm").attr("action", url);
	    		    	$("#modifyFrm").submit();
	    			}
	    		}
	 	}
	 
	 
	 // 유효성 검사 객체
		var validChkCls = {	
	    		
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
			
			// 유효성 검사
			validChkCallFn	: function() {
				
		    	var firstPhoneNum 	= $("#d_firstPhoneNum").val(),
					lastPhoneNum  	= $("#d_lastPhoneNum").val(),
					fee				= $("#d_fee").val(),
		    		bookableCount	= $("#d_bookableCount").val(),
			    	totalCount		= $("#d_totalCount").val(),
			    	openTime		= $("#d_openTime").val(),
			    	closeTime		= $("#d_closeTime").val();
		    	
				
				if (firstPhoneNum.length < 4 || lastPhoneNum.length < 4) {
					$(".txt-warning").eq(0).text("휴대폰 번호 형식이 올바르지 않습니다!").show();
					
					$("#d_firstPhoneNum").focus();
					
					return false;
				}
				    			
				// 요금 체크
				if (!CmmnJsUtil.isNumeric(fee)) {
					$(".txt-warning").eq(1).text("요금은 숫자만 입력가능 합니다!").show();
					
					$("#d_fee").focus();
					
					return false;
				}
				
				// 이용 가능시간 체크
				if (!$("#noLimitChk").is(":checked")) {
					
					if (Number(openTime) > 24 || Number(closeTime) > 24) {
						$(".txt-warning").eq(2).text("사용시간 범위가 올바르지 않습니다!").show();
						
						$("#d_openTime").focus();
						
						return false;			
					}
					
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

		$(function() {
			$(".heading-bold-lg").html("주차장 상세 정보");
			
			$(".ui-ipt").change(function() {
	    		$(".txt-warning").hide();
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
		
	</script>
	
    <!-- container -->
    <div id="container">
        <form id="modifyFrm" action="" method="post">
	        <!-- contents -->
	        <div class="center-wrap">
	            <!-- <p class="join-step mgt-70"><img src="common/images/sub/txt_img_join_step_03.png" alt="03 정보입력"></p> -->
	
	            <h3 class="heading-medium join-enter mgt-60">주차장 등록 상세 정보</h3>
	
	            <h3 class="heading-medium join-group-tit">주차장 상세 정보</h3>
	            <span class="sub-tit"><span>*</span><span>표시정보는 필수 입력 사항이니 반드시 입력해 주십시오.</span></span>
	            <div class="join-group">
	                <div class="join-row email">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>이메일</span><span class="point">*</span></h3>
	                        <input type="text" id="d_email" class="ui-ipt email" 
	                        name="email"
	                        value="<c:out value="${apartmentVO.apt_id}" />"
	                        disabled>
	                    </div>
	                </div>
	                <div class="join-row phone ipt-bar">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>담당자 휴대폰</span><span class="point">*</span></h3>
	                        <select name="" id="">
	                            <option value="">010</option>
	                        </select>
	                        <span class="bar"></span>
	                        <input type="text" id="d_firstPhoneNum" class="ui-ipt ipt-phone num" name="firstPhoneNum" value="<c:out value="${formVO.firstPhoneNum}"/>" onfocus="this.value=''">
	                        <span class="bar"></span>
	                        <input type="text" id="d_lastPhoneNum" class="ui-ipt ipt-phone num" name="lastPhoneNum" value="<c:out value="${formVO.lastPhoneNum}"/>" onfocus="this.value=''">
	                        <p class="sub-info-txt">
	                        <span class="txt-warning"></span>
	                    </div>
	                </div>
	                <div class="join-row">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>주소</span><span class="point">*</span></h3>
	                        <input type="text" id="d_postcode" class="ui-ipt" name="postcode" disabled value="<c:out value="${apartmentVO.postcode}"/>" > <button type="button" onclick="detailObj.searchAddrFn()" data-popup="#pop-01" class="ui-btn-gray-md pop-call">우편번호검색</button>
	                        <div class="sub-addr-wrap mgt-10"><input type="text" id="d_roadAddress" class="ui-ipt" name="roadAddress" value="<c:out value="${apartmentVO.address}"/>" onfocus="this.value=''"></div>
	                	</div>
	                </div>	
	                <div class="join-row">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>아파트 이름</span><span class="point">*</span></h3>
	                        <input type="text" id="d_buildingName" class="ui-ipt" name="buildingName" value="<c:out value="${apartmentVO.apt_name}"/>" onfocus="this.value=''">
	                    </div>
	                </div>
	                <div class="join-row phone ipt-bar">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>단위 요금</span><span class="point">*</span></h3>
	                        <input type="text" id="d_fee" class="ui-ipt ipt-phone time" name="fee" maxlength="10" value="<c:out value="${apartmentVO.fee}"/>" onfocus="this.value=''"> 원 (15분당 요금)
	                        <span class="txt-warning"></span>
	                    </div>        
	                </div>
	                <div class="join-row ipt-bar">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>이용가능 시간</span><span class="point">*</span></h3>
	                        <input type="text" id="d_openTime" class="ui-ipt limitTime time" name="openTime" maxlength="2" value="<c:out value="${formVO.openTime}"/>" onfocus="this.value=''"> 시<span> ~ </span><input type="text" id="d_closeTime" class="ui-ipt limitTime time" name="closeTime" maxlength="2" value="<c:out value="${formVO.closeTime}"/>" onfocus="this.value=''">시
	                        <span class="txt-warning"></span>
	                        <br>
	                        <p class="sub-info-txt"><span class="ui-bullet"></span> 0시부터 24시까지 입력가능 (숫자만 입력 가능)</p>
	                    </div>
	                </div>
	                <div class="join-row phone ipt-bar">
	                    <div class="join-item">
	                        <h3 class="item-tit txt-regular"><span>예약 가능 / 총 주차장 수</span><span class="point">*</span></h3>
	                        <input type="text" id="d_bookableCount" class="ui-ipt ipt-phone num" name="bookableCount" maxlength="6" value="<c:out value="${apartmentVO.bookable_count}"/>" onfocus="this.value=''"><span> / </span><input type="text" id="totalCount" class="ui-ipt ipt-phone num" name="totalCount" maxlength="6" value="<c:out value="${apartmentVO.total_count}"/>" onfocus="this.value=''">
	                        <span class="txt-warning"></span>
	                    </div>
	                </div> 
	            </div>
	
	            <div class="btn-join-confirm btn-wrap txt-center">
	                <button type="button" class="ui-btn-yellow-lg" onclick="detailObj.modifyComplete()">회원정보 수정</button>
	                <button type="button" class="ui-btn-black-lg"  onclick="location.href ='<c:url value="/" />'">메인화면으로</button>
	            </div>
	            <input type="hidden" id="d_longitude" name="longitude" value="<c:out value="${apartmentVO.longitude}"/>">
	            <input type="hidden" id="d_latitude"  name="latitude" value="<c:out value="${apartmentVO.latitude}"/>">
	        </div>
	        <!--// contents -->
        </form>
    </div>
    <!--// container -->
    <hr> 