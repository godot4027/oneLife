<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>방문차량 예약목록</title>
<script src="https://kit.fontawesome.com/1be9c91961.js"
	crossorigin="anonymous"></script>
<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>
<script src="/oneLife/resources/user/js/visitCar/visit_car.js"></script>
<%if (session.getAttribute("msg") != null) { %>
<script>
	alert('<%= session.getAttribute("msg")%>');
</script>
<%
	session.removeAttribute("msg");

} %>
</head>
<style>
.fa-edit {
	font-size: 20px;
	margin: 0;
}
</style>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>

	<div class="bottom_wrap1">
		<p></p>
		<span>> 방문차량 > 방문예약 목록</span>
		<h1>방문차량 목록</h1>
		<div class="bottom_wrap2"></div>
	</div>

	<div class="wrap">
		<div>
			<div class="visitCar_title">
				<h1>방문차량 예약내역을 확인하실 수 있습니다!</h1>
			</div>
			<div class="search_area">
				<form method="get">
					<span class="input_area"> <input type="search"
						name="searchValue" placeholder="검색" />
						<button type="submit" id="sear_btn">
							<img src="/oneLife/resources/user/images/Search.png" />
						</button>
					</span>
				</form>
			</div>
			<div class="vistCarList">
				<ul class="vistCarList_header">
					<li class="no">등록번호</li>
					<li class="date">방문일</li>
					<li class="carNo">차량번호</li>
					<li class="visitPurpose">방문목적</li>
					<li class="phone">비상연락처</li>
					<li class="applicant">신청인</li>
					<li class="date">수정일</li>
					<li class="date">방문현황</li>
					<li class="edit">수정</li>
				</ul>
				<c:forEach var="v" items="${visitCarList}">
					<ul class="visitCarDetail" onclick="detailView(${v.VC_ID})">
						<li class="no">${v.VC_ID}</li>
						<li class="date">${v.VC_DATE}</li>
						<li class="carNo">${v.VC_NO}</li>
						<li class="visitPurpose">${v.VC_PURPOSE}</li>
						<li class="phone">${v.VC_PHONE}</li>
						<li class="applicant">${v.r_NAME}</li>
						<li class="date">${v.VC_MODIFYDATE}</li>
						<li class="date">${v.VC_STATUS }</li>
						<c:set var="status" value="N" />
						<c:set var="current" value="<%=new java.util.Date()%>" />
						<fmt:formatDate value="${current }" type="both"
							pattern="yyyy-MM-dd" var="today" />
						<c:choose>
							<c:when
								test="${v.u_NO == loginUser.u_NO && v.VC_STATUS eq status && v.VC_DATE >= today}">
								<li class="edit"><a href="#" id="editBtn"><i
										class="far fa-edit"></i></a></li>
							</c:when>
							<c:otherwise>
								<li class="edit"></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</c:forEach>
			</div>
		</div>
		<div class="search_area">
			<form method="get">
				<button type="button" id="add" onclick="goRegister()">추가하기</button>
			</form>
		</div>
		<ul class="board_paging">
			<!-- 맨 처음으로 (<<) -->
			<li><a href="${contextPath }/visitCarList?page=1${searchParam}">&lt;&lt;</a></li>
			<!-- 이전 페이지로(<) -->
			<li><c:choose>
					<c:when test="${pi.page > 1 }">
						<a
							href="${contextPath }/visitCarList?page=${pi.page-1}${searchParam}">&lt;</a>
					</c:when>
					<c:otherwise>
						<a href="#">&lt;</a>
					</c:otherwise>
				</c:choose></li>

			<!-- 페이지 목록 (최대 10개) -->
			<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
				<li><c:choose>
						<c:when test="${p eq pi.page }">
							<a href="#" class="current_page">${p}</a>
						</c:when>
						<c:otherwise>
							<a href="${contextPath }/visitCarList?page=${p}${searchParam}">${p}</a>
						</c:otherwise>
					</c:choose></li>
			</c:forEach>

			<!-- 다음 페이지로 (>) -->
			<li><c:choose>
					<c:when test="${pi.page < pi.maxPage }">
						<a
							href="${contextPath }/visitCarList?page=${pi.page+1}${searchParam}">&gt;</a>
					</c:when>
					<c:otherwise>
						<a href="#">&gt;</a>
					</c:otherwise>
				</c:choose></li>

			<!-- 맨 끝으로 (>>) -->
			<li><a
				href="${contextPath }/visitCarList?page=${pi.maxPage}${searchParam}">&gt;&gt;</a></li>
		</ul>
		<!-- <ul class="board_paging">
			<li><a href="javascript:;">&lt;</a></li>
			<li><a href="javascript:;" class="current_page">1</a></li>
			<li><a href="javascript:;">&gt;</a></li>
		</ul> -->
	</div>
	<!-- <div id="warningModal" class="modal">
		<div class="modal-content">
			<p>방문일이 지난 내역은 수정하실 수 없습니다.</p>
			<span id="warningClose" class="close">&times;</span>
		</div>
	</div> -->


	<%-- 공통 footer --%>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>


	<div id="warningModal" class="modal">
		<div class="modal-content">
			<p>방문일이 지난 내역은 수정하실 수 없습니다.</p>
			<span id="warningClose" class="close">&times;</span>
		</div>
	</div>

	<script>
      // 게시글 목록에 mouseover/mouseout 시 onmouseover 클래스 추가/제서 처리
      const noticeList = document.querySelector(".vistCarList");

      noticeList.addEventListener("mouseover", function () {
        if (event.target.classList.contains("visitCarDetail"))
          event.target.classList.add("onmouseover");
        else if (event.target.parentNode.classList.contains("visitCarDetail"))
          event.target.parentNode.classList.add("onmouseover");
      });

      noticeList.addEventListener("mouseout", function () {
        if (event.target.classList.contains("visitCarDetail"))
          event.target.classList.remove("onmouseover");
        else if (event.target.parentNode.classList.contains("visitCarDetail"))
          event.target.parentNode.classList.remove("onmouseover");
      });

      var warningModal = document.getElementById("warningModal");

      // Get the button that opens the modal
      var fixBtn = document.getElementById("fixBtn");

      var warningClose = document.getElementById("warningClose");

      // When the user clicks on the button, open the modal
      editBtn.onclick = function () {
        if (false) {
          // 방문일이 지났으면 모달창, 아니면 수정페이지로 이동
          warningModal.style.display = "block";
        }
      };

      // When the user clicks on <span> (x), close the modal
      warningClose.onclick = function () {
        warningModal.style.display = "none";
      };

      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function (event) {
        if (event.target == warningModal) {
          warningModal.style.display = "none";
        }
      };
      
      function goRegister() {
			location.href = "${contextPath}/visitCarRegister";
		};
		
		function detailView(vid){
			location.href = '${contextPath}/visitCarFix?vid=' + vid;
		}
    </script>
</body>
</html>
