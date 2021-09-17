<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입완료</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
		<p></p>
		<span>> 회원가입 > 약관동의 > 회원정보입력 > 회원가입완료</span>
		<h1>회원가입완료</h1>
		<div class="bottom_wrap2"></div>
	</div>
	
	<div class="step7_container border_test7">
		<div class="step7_content border_test7">
			<div class="step7_mail_div border_test7">
				<img src="${contextPath}/resources/user/images/update.png" alt="mail"
					class="">
			</div>
			<div class="step7_mail_txt border_test7">
				<p>회원가입이 완료되었습니다.</p>
			</div>
			<div class="step7_mailBtn_div border_test7">
				<span><a href="${ contextPath }" id="" class="lgBtn_2"
					role="button">로그인하러 가기</a> </span>
			</div>
		</div>
	</div>

	<%-- 공통 footer --%>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>	

<!-- 팝업영역 -->
<!-- 필수 약관 동의 팝업 -->
<div class="popup_wrap" style="display: none;">
	<div class="dim"></div>
	<div class="item">
		<h3 class="tit">이 페이지 내용 :</h3>
		<p class="txt">
			해당 정보를 가진 주민은 존재하지 않습니다.<br> 다시 입력해주세요.
		</p>
		<div class="btn_box">
			<a href="javascript:;" class="ok">확인</a>
		</div>
	</div>
</div>
</body>
</html>