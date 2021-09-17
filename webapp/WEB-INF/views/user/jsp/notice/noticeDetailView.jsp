<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세페이지</title>

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
				<form method="post" name="noticeForm">
					<div class="notice_content">
						<div class="subject"></div>
						<div id="table">
							<div class="row">
							<span class="cell col1">제목</span>
							<span class="cell col2">${ notice.n_title }</span>
							</div>
							<div class="row">
							<span class="cell col1">글쓴이</span>
							<span class="cell col2">${ notice.m_nick }</span>
							</div>
							<div class="row">
							<span class="cell col1">날짜</span>
							<span class="cell col2">${ notice.modify_date }</span>
							</div>
				 		</div>
						 <div class="detail_content">
						<pre class="col3">${ notice.n_content }</pre>	
						</div>
					</div>
					<div class="btn_area">
						<button type="button" id="btn2" onclick="location.href='${ contextPath }/notice/list'">목록</button>
						<!-- 관리자한테만 보임 -->
						<c:if test="${ !empty loginUser_man }">
						<button type="button" id="btn3" onclick="updateNoticeView()">수정하기</button>
						<button type="button" id="btn3" onclick="noticeDelete()">삭제하기</button>
						<form namr="noticeForm" method="post">
							<input type="hidden" name="n_no" value="${ notice.n_no }">
						</form>
						</c:if> 
					</div>
				</form>
			</div>
		</div>

		<%-- 공통 footer --%>
		<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
		<c:if test="${ !empty loginUser_man }">
		<script>
			function updateNoticeView(){
				document.forms.noticeForm.action = "${contextPath}/notice/updateView";
				document.forms.noticeForm.submit();
			}

			function noticeDelete(){
				if (confirm("게시글을 삭제 하시겠습니까?")) {
					document.forms.noticeForm.action = "${contextPath}/notice/delete";
					document.forms.noticeForm.submit();
				}
			}
		</script>
		</c:if>
</body>
</html>