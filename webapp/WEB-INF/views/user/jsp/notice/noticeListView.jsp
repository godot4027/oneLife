<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="user.member.model.vo.Member" import="admin.member.model.vo.Info_manager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
	<!-- css -->
<!--      <link rel="stylesheet" href="/oneLife/resources/user/fonts/fonts.css">
     <link rel="stylesheet" href="/oneLife/resources/user/css/reset.css">
     <link rel="stylesheet" href="/oneLife/resources/user/css/jquery-ui.min.css">
     <link rel="stylesheet" href="/oneLife/resources/user/css/noticestyle.css">
     <link rel="stylesheet" href="/oneLife/resources/user/css/style.css"> -->
<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
		<p></p><span>> 아파트소식 > 공지사항</span>
		<h1>공지사항</h1>
		<div class="bottom_wrap2">
		</div>
	</div>
	<div class="wrap">
		<div class="notice_area">
			<div class="notice_title">
				<h1>KH PARK의 <b>공지 및<br>새로운 소식</b>을 전해 드립니다.</h1>
			</div>
			<div class="search_area">
				<form method="get" action="${ contextPath }/notice/list">
					<span class="input_area"> 
					<input type="search" name="searchValue" placeholder="검색" value="${ param.searchValue }">
					<button type="submit" id="btn1"><img src="/oneLife/resources/user/images/Search.png"></button>
					</span>
					<%-- <input type="hidden" name="title" value="${ noticeList.n_title }">
					<input type="hidden" name="content" value="${ noticeList.n_content }"> --%>
				</form>
			</div>
			<div class="notice_list">
				<ul class="notice_header">
					<li class="no">번호</li>
					<li class="title">제목</li>
					<li class="nick">작성자</li>
					<li class="date">작성일</li>
					<li class="count">조회</li>
				</ul>
				<c:forEach var="n" items="${ noticeList }">
				<ul class="notice_ul" onclick="detailView(${ n.n_no })">
					<li class="no">${ n.n_no }</li>
					<li class="title">${ n.n_title }</li>
					<li class="nick">${ n.m_nick }</li>
					<li class="date">${ n.modify_date }</li>
					<li class="count">${ n.n_count }</li>
				</ul>
				</c:forEach>
			</div>
			
		</div>
		<div class="search_area">
			<form method="get">
				<button type="button" id="btn2" onclick="location.href='${ contextPath }/notice/list'">목록</button>
				<!-- 관리자만 버튼 보이게-->
				<c:if test="${ !empty loginUser_man }">
				<button type="button" id="btn3" onclick="location.href='${ contextPath }/notice/insert'">작성하기</button>
				</c:if>  
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
		const noticeList = document.querySelector('.notice_list');
		
		noticeList.addEventListener('mouseover', function(){
			
			if(event.target.classList.contains('notice_ul'))
				event.target.classList.add('onmouseover');
			else if(event.target.parentNode.classList.contains('notice_ul'))
				event.target.parentNode.classList.add('onmouseover');
		});
		
		noticeList.addEventListener('mouseout', function(){
			
			if(event.target.classList.contains('notice_ul'))
				event.target.classList.remove('onmouseover');
			else if(event.target.parentNode.classList.contains('notice_ul'))
				event.target.parentNode.classList.remove('onmouseover');
			
		});
		
		function detailView(n_no){
	 		// nno를 쿼리스트링에 데이터로 넘김
	 		location.href='${contextPath}/notice/detail?n_no='+n_no;
	 	}
		
   </script>
	
</body>
</html>