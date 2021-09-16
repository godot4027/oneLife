<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원정보수정</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>

	<div class="bottom_wrap1">
		<p></p>
		<span>> 회원가입 > 회원가입 약관동의 > 회원정보</span>
		<h1>회원정보입력</h1>
		<div class="bottom_wrap2"></div>
	</div>
	
	
	<!-- -->
	<div class="step6_container border_test6">
		<form name="modify_form" id="modify_form" class="modify_form"
			action="post">
			<div class="condition_list border_test6">
				<div class="check step2_first_div border_test6">
					<div class="step2_span_left">아이디</div>
					<div class="step2_span_right">
						<input type="text" class="step2_input_text_n" readonly required>
					</div>
				</div>
				<div>
					<hr>
				</div>
				<div class="check step2_first_div border_test6">
					<div class="step2_span_left">이름</div>
					<div class="step2_span_right">
						<input type="text" class="step2_input_text_n" readonly required>
					</div>
				</div>
				<div>
					<hr>
				</div>
				<div class="check step2_first_div border_test6">
					<div class="step2_span_left">닉네임</div>
					<div class="step2_span_right">
						<input type="text" id="nickname" class="step2_input_text"
							placeholder="한글 및 영문 포함 3자 이상 입력" required> <span><a
							href="javascript:;" id="" class="ol_btn" role="button">중복확인</a> </span>
					</div>
				</div>
				<div>
					<hr>
				</div>
				<div class="check step2_first_div border_test6">
					<div class="step2_span_left">비밀번호</div>
					<div class="step2_span_right">
						<input type="text" id="pwd1" class="pwd1 step2_input_text"
							placeholder="영문 및 숫자 포함 7자 이상 입력" required> <span
							class="eyes"> <i class="fa fa-eye-slash fa-lg"></i>
						</span>
						<button class="ol_btn" id="pwdUpdateBtn" type="button"
							onclick="openPopup()";>
							<a href="pwdModify.html"></a>비밀번호 변경
						</button>
						<!-- 팝업창 띄워서 별도의 프로세스로 진행 -->
					</div>
				</div>
				<div></div>

				<div>
					<hr>
				</div>
				<div class="check step2_first_div border_test6">
					<div class="step2_span_left">연락처</div>
					<div class="step2_span_right">
						<input type="text" id="phone" class="step2_input_text" required>
					</div>
				</div>
				<div>
					<hr>
				</div>
				<div class="check step2_first_div border_test6">
					<div class="step2_span_left">이메일</div>
					<div class="step2_span_right">
						<input type="text" class="step2_input_text_n" readonly required>
					</div>
				</div>
				<div>
					<hr>
					<div class="check step2_first_div border_test6">
						<div class="step2_span_left">등록차량정보</div>
						<div class="step2_span_right">
							<span class="step6_span_office"> <img
								src="${contextPath}/resources/user/images/call.png" alt="re" class="re">
								입주차량등록은 관리사무소에게 연락주시길 바랍니다.
							</span>
						</div>
					</div>
					<div>
						<hr>
					</div>
					<div class="check step2_first_div border_test6">
						<input type="text" class="step2_input_text_dong_n" readonly
							required>
						<div class="step2_span_dongho">동</div>
						<input type="text" class="step2_input_text_ho_n" readonly required>
						<div class="step2_span_dongho">호</div>
					</div>
					<div>
						<hr>
					</div>
				</div>
				<!--                체크박스 코멘트 끝-->
				<div class="step01_btn_box border_test6"></div>
				<div class="step01_btn_box border_test6">
					<span>
						<button type="submit" id="" class="step6_updateBtn">수정하기</button>
					</span> <span>
						<button type="button" id="delete" class="step6_deleteBtn"
							onclick="deleteBtn()">탈퇴하기</button>
					</span>
				</div>
		</form>
	</div>
	<%-- 공통 footer --%>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>


<!-- 비밀번호 눈 -->
<script>
    $(".eyes").on('click',function(){ 
             $('#pwd1').toggleClass('active'); 
             if( $('#pwd1').hasClass('active') == true ){ 
                    $(this).find('.fa-eye-slash').attr('class',"fa fa-eye fa-lg");
                    $('#pwd1').attr('type',"text");
                    $('#pwd2').attr('type',"text");
                } else{ 
                    $(this).find('.fa-eye').attr('class',"fa fa-eye-slash fa-lg");
                    $('#pwd1').attr('type','password'); 
                    $('#pwd2').attr('type','password'); 
                    } 
                });
    </script>

<!-- 비밀번호 일치 불일치 -->
<script>
    pwd1.addEventListener('input',()=>{
        if(pwd1.value != pwd2.value) {// 일치안했다
            pwd1.classList.add('invalid');
            pwd2.classList.add('invalid');
            pwd_result.innerHTML = '비밀번호가 일치하지 않습니다.';
        } else {                      // 일치했다?
            pwd1.classList.remove('invalid');
            pwd2.classList.remove('invalid');
            pwd_result.innerHTML = '';
        }
    });

    pwd2.addEventListener('input', ()=>{ 
        if(pwd1.value != pwd2.value) { 
            pwd1.classList.add('invalid');
            pwd2.classList.add('invalid');
            pwd_result.innerHTML = '비밀번호가 일치하지 않습니다.';
        } else { 
            pwd1.classList.remove('invalid');
            pwd2.classList.remove('invalid');
            pwd_result.innerHTML = '';
        }
    });
</script>

<!-- 정규화 -->
<script>
    document.forms.modify_form.onsubmit = () => {
    // 2. 닉네임 검사
    // 한글 및 숫자 포함 2자 이상 입력
    if(!check(/[가-힣\d]{2,}$/, document.getElementById('nickname'),
    "한글 및 숫자 포함 2자 이상 입력하세요"))
    return false;
    
    // 3. 비밀번호 검사
    // 영문 및 숫자 포함 7자 이상 입력
    if(!check(/^[a-z\d]{7,}$/,
    document.getElementById('pwd1'),
    "비밀번호는 영문 및 숫자 포함 7자 이상 입력하세요"))
    return false;

    // 4. 연락처
    if(!check(/^[0-9]{11}$/,
    document.getElementById('phone'),
    "연락처를 입력하세요"))
    return false;
};

    // 유효성 검사용 함수 세미
    function check(regExp, input, msg) {
        if(regExp.test(input.value))
        return true;

        alert(msg);
        input.value=''; // 다시 입력하라고 비워줌
        input.focus(); 
        return false;
    }

</script>



<script>
    // 팝업창 호출
	function openPopup(url, title, width, height) {
		let left = (document.body.clientWidth/2) - (width/2)
		// 듀얼모니터를 위한 계산
		left += window.screenLeft;
		let top = (screen.availHeight/2) - (height/2);
		 
		let options = "width="+width+",height="+height+",left="+left+",top="+top;
		 
		window.open(url, title, options);
	}
</script>

<!-- 탈퇴하기  -->
<script>
    function deleteBtn(){
        confirm("정말로 탈퇴하시겠습니까?");
        $('#delete').focus();
           if(deleteBtn){
              //확인 버튼 클릭 true 
                //탈퇴하기
                
           }else{
             //취소 버튼 클릭 false
                //취소
           }
    }
</script>
</body>
</html>