<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아파트민원 작성페이지</title> 

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

<style>
.col3 > span {
position: relative;
top: 9px;
}
.col3 {
    width: 1140px;
}

</style>
</head>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
		<p></p><span>> 아파트민원</span>
		<h1>아파트 민원</h1>
		<div class="bottom_wrap2">
		</div>
	</div>
		<div class="wrap">
			<div class="complaint_area">
				<form method="POST" action="${ contextPath }/complaint/insert">
				<input type="hidden" name="c_no" value="${ c_no }">
				<div class="complaint_content">
					<div class="subject">
					<h1>문의내용 작성</h1>
					</div>
					<div id="table">
						<div class="row">
						<span class="cell col1">제목</span>
						<span class="cell col2">
							<input size="60" type="text" name="title" placeholder="제목을 입력해주세요" onfocus="this.placeholder=''" onblur="this.placeholder='제목을 입력해주세요'" required >
						</span>
						</div>
						<div class="row">
						<span class="cell col1" id="col_content">내용</span>
						<span class="cell col2">
							<textarea cols="110" rows="30" name="content" placeholder="문의하실 내용을 입력해주세요" onfocus="this.placeholder=''" onblur="this.placeholder='문의하실 내용을 입력해주세요'"
								style="resize: none;" required></textarea>
						</span>
						</div> 
					</div>
					<div class="row">
					<span class="cell col3">
						<input type="checkbox" name="open" value="N" id="open">
						<label for="open"> 비밀글로 문의하기</label><span> (관리사무소만 내 민원을 볼 수 있습니다)</span> 
					</span>
					</div>
				</div>
				<div class="btn_area">
					<button type="button" id="btn4" onclick="noticeCancel()">취소</button>
					<button type="submit" id="btn2">글올리기</button>
				</div>
			</form>
			</div>
		</div>
		
		<%-- 공통 footer --%>
		<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>

		<script>
			function noticeCancel(){
				if (confirm("작성중인 글쓰기를 종료하시겠습니까?")) {
					javascript:history.back();
				}
			}
		</script>

	
</body>
</html>