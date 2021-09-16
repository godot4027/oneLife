<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 작성페이지</title> 

	<%-- 공통css/js --%>
	<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

	<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	<script src="/oneLife/resources/user/js/summer.js"></script>
	<style>
		.bottom_wrap1 > h1 {
			top: 10px;
		}
	</style>
</head>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
		<p></p><span>> 아파트소식 > 도란도란</span>
		<h1>이웃끼리 도란도란</h1>
		<div class="bottom_wrap2">
		</div>
	</div>
		<div class="wrap">
			<div class="board_area">
				<form method="POST">
				<div class="board_content">
					<div class="subject">
					<h1>도란도란 글쓰기</h1>
					</div>
					<div id="table">
						<div class="row">
						<span class="cell col1">제목</span>
						<span class="cell col2">
							<input size="60" type="text" name="title" placeholder="제목을 입력해주세요" onfocus="this.placeholder=''" onblur="this.placeholder='제목을 입력해주세요'" required >
						</span>
						</div>
						<div class="row">
						<span class="cell col1" id="col_content"><p>내용</p></span>
						<span class="cell col2">
							<textarea id="summernote" name="editordata" required></textarea>
						</span>
						</div> 
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