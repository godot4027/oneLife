<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>방문차량 예약목록</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>
<script src="/oneLife/resources/user/js/visitCar/visit_car.js"></script>

</head>
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
							<img src="${contextPath}/resources/user/images/Search.png" />
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
					<li class="edit">수정</li>
				</ul>
				<ul class="visitCarDetail">
					<li class="no">001</li>
					<li class="date">21-08-09</li>
					<li class="carNo">35로3930</li>
					<li class="visitPurpose">에어컨 수리 업체 방문</li>
					<li class="phone">010-1234-1234</li>
					<li class="applicant">홍길동</li>
					<li class="edit"><a href="#" id="editBtn"><i
							class="far fa-edit"></i></a></li>
				</ul>
			</div>
		</div>
		<div class="search_area">
			<form method="get">
				<button type="button" id="add">추가하기</button>
			</form>
		</div>

		<ul class="board_paging">
			<li><a href="javascript:;">&lt;</a></li>
			<li><a href="javascript:;" class="current_page">1</a></li>
			<li><a href="javascript:;">&gt;</a></li>
		</ul>
	</div>
	
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
    </script>
</body>
</html>
