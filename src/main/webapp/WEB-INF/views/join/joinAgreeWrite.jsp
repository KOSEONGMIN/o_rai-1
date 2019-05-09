<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/cmmn/common_lib.jsp" %>

<script>
	var submitFn = function() {
		
		var termChkArr = essnTermChk();
		
		if (termChkArr.length != 2) {
			return false;
		}
		
		$("#termsForm").attr("action", "<c:out value='/joinRegist' />");
		$("#termsForm").submit();
	}
	
	var essnTermChk = function() {
		
		var checkedTermNoArr = [];
	
		// 1. 필수 약관 체크 여부
		$("[data-essnAgrYn='Y']").each(function(idx, obj) {
			
			if (!obj.checked) {
				
				alert("필수 약관동의를 체크해주세요!");
				
				return false;
				
			} else {
				checkedTermNoArr.push(obj.value);

			}
		})
		
		return checkedTermNoArr;
		
	}

	$(function() {
		
		// 전체 약관 동의
		$(".chk_full_agreement").click(function() {
			var $chkAll = $(this);
			
			if($chkAll.is(":checked")) {
				$("input[name=chkAgreement]").prop("checked", true);
			} else {
				$("input[name=chkAgreement]").prop("checked", false);
			}
		})
		
	})	


</script>

<div id="container">
        <form id="termsForm" action="" method="post">
        <!-- contents -->
        <div class="center-wrap">
            <!-- <p class="join-step mgt-70"><img src="<c:url value='common/images/sub/txt_img_join_step_02.png' />" alt="02 약관동의"></p> -->

            <h3 class="heading-medium h3-join-agree mgt-60">회원 약관 동의</h3>

            <h4 class="heading-right h4-join-agree mgt-35">이용약관 동의(필수)<span class="txt-medium">*</span></h4>
            <div class="scroll-box mgt-10">
                <dl>
                    <dt>제 1장 총칙</dt>
                    <dd>
                        <dl>
                            <dt>제1조 (목적)</dt>
                            <dd>주차장 쉐어링 사이트 이용과 관련하여 회사와 회원 사이의 필요한 사항을 규정합니다.</dd>
                            <dt>제2조 (정의)</dt>
                            <dd>
                                                                    이 약관에서 사용하는 용어는 다음과 같습니다.
                                <ul>
                                    <li>①'주차장 쉐어링' 이란, 아파트 혹은 주택의 남아있는 주차장을 빌려주는 것을 말합니다.</li>
                                    <li>② '이용자'란, ‘주차장 쉐어링'어플에 접속하여 서비스를 제공받는 회원을 말합니다.</li>
                                </ul>
                            </dd>
                        </dl>
                    </dd>
                    <dt>제 2장 총칙</dt>
                    <dd>
                        <dl>
                            <dt>제1조 (목적)</dt>
                            <dd>사이트 이용과 관련하여 회사와 회원 사이의 필요한 사항을 규정합니다.</dd>
                            <dt>제2조 (정의)</dt>
                            <dd>
                                                                   이 약관에서 사용하는 용어는 다음과 같습니다.
                                <ul>
                                    <li>①'주차장 쉐어링' 이란, 아파트 혹은 주택의 남아있는 주차장을 빌려주는 것을 말합니다.</li>
                                    <li>② '이용자'란, ‘주차장 쉐어링'어플에 접속하여 서비스를 제공받는 회원을 말합니다.</li>
                                </ul>
                            </dd>
                        </dl>
                    </dd>
                </dl>
            </div>
            <div class="txt-right mgt-10">
                <div class="ui-chk-purple-right">
                    <input type="checkbox" id="chk1" name="chkAgreement" data-essnAgrYn="Y" value="essn1">
                    <label for="chk1"><span>위의 약관을 모두 읽었으며 동의합니다.</span></label>
                </div>
            </div>

            <h4 class="heading-right h4-join-agree mgt-35">개인정보 수집 및 이용동의(필수)<span class="txt-medium">*</span></h4>
            <div class="scroll-box mgt-10">
                <dl>
                    <dt>제 1장 총칙</dt>
                    <dd>
                        <dl>
                            <dt>제1조 (목적)</dt>
                            <dd>사이트 이용과 관련하여 회사와 회원 사이의 필요한 사항을 규정합니다.</dd>
                            <dt>제2조 (정의)</dt>
                            <dd>
                                                                   이 약관에서 사용하는 용어는 다음과 같습니다.
                                <ul>
                                    <li>①'주차장 쉐어링' 이란, 아파트 혹은 주택의 남아있는 주차장을 빌려주는 것을 말합니다.</li>
                                    <li>② '이용자'란, ‘주차장 쉐어링'어플에 접속하여 서비스를 제공받는 회원을 말합니다.</li>
                                </ul>
                            </dd>
                        </dl>
                    </dd>
                    <dt>제 2장 총칙</dt>
                    <dd>
                        <dl>
                            <dt>제1조 (목적)</dt>
                            <dd>사이트 이용과 관련하여 회사와 회원 사이의 필요한 사항을 규정합니다.</dd>
                            <dt>제2조 (정의)</dt>
                            <dd>
                                                                   이 약관에서 사용하는 용어는 다음과 같습니다.
                                <ul>
                                    <li>①'주차장 쉐어링' 이란, 아파트 혹은 주택의 남아있는 주차장을 빌려주는 것을 말합니다.</li>
                                    <li>② '이용자'란, ‘주차장 쉐어링'어플에 접속하여 서비스를 제공받는 회원을 말합니다.</li>
                                </ul>
                            </dd>
                        </dl>
                    </dd>
                </dl>
            </div>
            <div class="txt-right mgt-10">
                <div class="ui-chk-purple-right">
                    <input type="checkbox" id="chk2" name="chkAgreement" data-essnAgrYn="Y" value="essn2">
                    <label for="chk2"><span>위의 약관을 모두 읽었으며 동의합니다.</span></label>
                </div>
            </div>
			<br>
            <div class="gray-box txt-right mgt-15">
                <div class="ui-chk-purple-right">
                    <input type="checkbox" id="chk7" class="chk_full_agreement">
                    <label for="chk7"><strong class="text">[ 전체동의 ] 전체 약관에 동의합니다.</strong></label>
                </div>
            </div>

            <div class="number-ipt-wrap txt-center mgt-60">
                <div class="inner-wrap inline-block">
                    <div class="relative" style="padding-left:0px;">
						<button class="ui-btn-blue-md btn-certify" type="button" onclick="location.href='<c:url value="/" />'" style="background-color:gray;"><span class="txt-medium">비동의</span></button>
						<button class="ui-btn-yellow-md btn-certify" type="button" onclick="submitFn()"><span class="txt-medium">동의</span></button>
                    </div>
                </div>
            </div>
        </div>
        <!--// contents -->
        </form>
    </div>
    <!--// container -->
    <hr>
