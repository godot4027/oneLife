<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
		<p></p><span>> 아파트소식 > 도란도란</span>
		<h1>이웃끼리도란도란</h1>
		<div class="bottom_wrap2">
		</div>
	</div>
	<div class="wrap">
		<div class="board_area">
			<div class="board_title">
				<h1>무료한 일상, <b>이웃들과 함께<br>도란도란</b> 이야기해보세요!</h1>
		 	</div>
			<div class="search_area">
				<form method="get">
					<span class="input_area"> 
					<input type="search" name="searchValue" placeholder="검색">
					<button type="submit" id="btn1"><img src="/oneLife/resources/user/images/Search.png"></button>
					</span>
				</form>
			</div>
			<div class="board_list">
				<ul class="board_header">
					<li class="no">번호</li>
					<li class="title">제목</li>
					<li class="nick">작성자</li>
					<li class="date">작성일</li>
					<li class="count">조회</li>
					<li class="like">좋아요</li>
				</ul>
				<ul class="board_ul">
					<li class="no">1</li>
					<li class="title">안녕하세요^^ 반가워요 
						<!-- 댓글이 달리시 -->
						<span class="comment_count">[ 5 ]</span>
					</li>
					<li class="nick">홍길동</li>
					<li class="date">2021-09-06</li>
					<li class="count">1</li>
					<li class="like">1</li>
				</ul>
			</div>
		</div>
		<div class="search_area">
			<form method="get">
				<button type="button" id="btn2" onclick="location.href='${ contextPath }/board/insert'">글쓰기</button>
			</form>
		</div>

		<ul class="board_paging">
			<li>
				<a href="javascript:;" class="btn_prev"></a>
			</li>
			<li>
				<a href="javascript:;" class="current_page">1</a>
			</li>
			<li>
				<a href="javascript:;" class="btn_next"></a>
			</li>
		</ul>
	</div>
	
	<%-- 공통 footer --%>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>


	<script>
		// 게시글 목록에 mouseover/mouseout 시 onmouseover 클래스 추가/제서 처리
		const boardList = document.querySelector('.board_list');
		
		boardList.addEventListener('mouseover', function(){
			
			if(event.target.classList.contains('board_ul'))
				event.target.classList.add('onmouseover');
			else if(event.target.parentNode.classList.contains('board_ul'))
				event.target.parentNode.classList.add('onmouseover');
		});
		
		boardList.addEventListener('mouseout', function(){
			
			if(event.target.classList.contains('board_ul'))
				event.target.classList.remove('onmouseover');
			else if(event.target.parentNode.classList.contains('board_ul'))
				event.target.parentNode.classList.remove('onmouseover');
			
		});
		
   </script>
	
</body>
</html>