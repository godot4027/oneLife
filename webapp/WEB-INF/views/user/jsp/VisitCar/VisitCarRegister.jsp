<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>방문차량 등록</title>
    
    <%-- 공통css/js --%>
	<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>
	<script src="/oneLife/resources/user/js/visitCar/visit_car.js"></script>
  </head>
  <body>
  	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
		<p></p>
		<span>> 방문차량 > 방문차량 등록</span>
		<h1>방문차량 등록</h1>
		<div class="bottom_wrap2"></div>
	</div>
  
    <div class="wrap wrap2 contentFull">
      <div class="register_left">
        <img class="blue_car" src="/oneLife/resources/user/images/blue_car.png" />
      </div>
      <div class="register_right">
        <div class="div_desc">
          <p class="register_check">확인하세요!</p>
          <p>
            방문 후 익일 또는 그 이후까지 아파트 내에 주차를 할 예정이면
            해당되는 날짜에 모두 예약하시기 바랍니다
          </p>
        </div>
        <hr />
        <form class="visit_form" action="" method="">
          <div class="div_input">
            <label>방문일</label>
            <input type="date" placeholder="방문일을 선택해주세요" />
          </div>
          <div class="div_input">
            <label>차량번호</label>
            <input
              type="text"
              placeholder="ex)35로5432 띄어쓰기 없이 입력해주세요"
            />
          </div>
          <div class="div_input">
            <label>방문목적</label>
            <input type="text" placeholder="ex)에어컨 수리 업체 방문" />
          </div>
          <div class="div_input">
            <label>비상연락처</label>
            <input type="tel" placeholder="차주의 휴대폰 번호를 입력해주세요" />
          </div>
          <hr />
          <div class="register_button">
            <button class="register_btn myBtn" id="myBtn" type="button">
              등록하기
            </button>
            <div id="myModal" class="modal">
              <!-- Modal content -->
              <div class="modal-content">
                <p class="register_confirm">정말로 등록하시겠습니까?</p>
                <div class="modal_button">
                  <button class="register_ok">확인</button>
                  <button class="close">취소</button>
                </div>
              </div>
            </div>
            <button class="register_cancel" id="cancle_btn" type="button">
              취소하기
            </button>
            <div id="myModal2" class="modal">
              <!-- Modal content -->
              <div class="modal-content">
                <p class="register_confirm">정말로 취소하시겠습니까?</p>
                <div class="modal_button">
                  <button type="button" class="register_ok" onclick="cancleRegister()">취소</button>
                  <button id="back" class="close">돌아가기</button>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
    
    <%-- 공통 footer --%>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
    
    <script type="text/javascript">
    	function cancleRegister() {
    		location.href = "${contextPath}/visitCar";
    	}
    </script>
  </body>
</html>