<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표하기</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
		<p></p><span>> 아파트소식 > 투표하기</span>
		<h1>투표하기</h1>
		<div class="bottom_wrap2">
		</div>
	</div>
	<div class="wrap">
		<div class="vote_area">
			<div class="vote_title">
				<h1>비대면으로 안전하게, <b>언제 어디서든<br>투표</b>를 진행해보세요!</h1>
			</div>
			<div class="search_area">
				<form method="get">
					<span class="input_area"> 
					<input type="search" name="searchValue" placeholder="검색">
					<button type="submit" id="btn1"><img src="/oneLife/resources/user/images/Search.png"></button>
					</span>
				</form>
			</div>
			<div class="vote_list">
				<ul class="vote_header">
					<li class="no">번호</li>
					<li class="title">제목</li>
					<li class="nick">작성자</li>
					<li class="date">기간</li>
					<li class="count">조회</li>
				</ul>
				<ul class="vote_ul">
					<li class="no">1</li>
					<li class="state"><span>투표 진행중</span></li>
					<li class="title">제 20기 동별대표자선출 투표</li>
					<li class="nick">관리자</li>
					<li class="date">2021-08-20~2021-08-30</li>
					<li class="count">1</li>
				</ul>
			</div>
			
		</div>
		<div class="search_area">
			<form method="get">
				<button type="button" id="btn2">목록</button>
				<!-- 관리자만 버튼 보이게-->
				<button type="button" id="btn3">작성하기</button>
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
		const voteList = document.querySelector('.vote_list');
		
		voteList.addEventListener('mouseover', function(){
			
			if(event.target.classList.contains('vote_ul'))
				event.target.classList.add('onmouseover');
			else if(event.target.parentNode.classList.contains('vote_ul'))
				event.target.parentNode.classList.add('onmouseover');
		});
		
		voteList.addEventListener('mouseout', function(){
			
			if(event.target.classList.contains('vote_ul'))
				event.target.classList.remove('onmouseover');
			else if(event.target.parentNode.classList.contains('vote_ul'))
				event.target.parentNode.classList.remove('onmouseover');
			
		});
		
   </script>
	
</body>
</html>