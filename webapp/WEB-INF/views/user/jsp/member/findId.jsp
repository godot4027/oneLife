<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>아이디 찾기</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
		<p></p>
		<span>> 아이디찾기</span>
		<h1>아이디 찾기</h1>
		<div class="bottom_wrap2"></div>
	</div>
	
	<div class="step4_container border_test4">
		<form name="id_form" id="id_form" class="id_form" action="post">
			<div class="step4_content border_test4">
				<div class="step4_find_div border_test4 clearfix">
					<div class="step4_idf_div border_test4">
						<span><a href="javascript:;" id="idf" class="idf"
							role="button">아이디 찾기</a> </span>
					</div>
					<div class="step4_pwf_div border_test4">
						<span><a href="javascript:;" id="idf" class="idf"
							role="button">비밀번호 찾기</a> </span>
					</div>

					<div class="step4_write_div border_test4">
						<div class="check step2_first_div border_test">
							<div class="step2_span_left">이름</div>
							<div class="step2_span_right">
								<input type="text" class="step2_input_text" required>
							</div>
						</div>
						<hr>
						<div class="check step2_first_div border_test4">
							<div class="step2_span_left">이메일</div>
							<div class="step2_span_right">
								<input type="text" class="step2_input_text" required>
							</div>
						</div>
					</div>
					<div class="step4_fbtn_div border_test4">
						<span><button type=submit id="" class="fid_btn"
								type="submit">아이디 찾기</button> </span>
					</div>
					<div class="step4_lorr_div border_test4">
						<ul>
							<li><a href="javascript:;">로그인</a></li>
							<li><a href="javascript:;">회원가입</a></li>
						</ul>
					</div>
				</div>
			</div>
	</div>
	</form>
	</div>
	
	<%-- 공통 footer --%>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>

</body>
</html>