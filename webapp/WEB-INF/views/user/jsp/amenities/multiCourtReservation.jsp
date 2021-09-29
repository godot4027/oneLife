<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부대시설 > 멀티코트 > 이용현황</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>

<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>

<div class="bottom_wrap1">
            <p></p><span>> 부대시설 > 멀티코트 > 예약신청</span>
            <h1>예약신청</h1>
            <div class="bottom_wrap2">
            </div>
        </div>

         <div class="amenities_container">
            <nav id="amenities_nav">
                <div class="amenities_nav">
                    <ul class="nav_outer">
                        <li>
                            <p>독서실</p>
                            <ul class="nav_inner">
                                <li>
                                    <a href="<%= request.getContextPath() %>/srIntro">시설소개</a>
                                    <a href="<%= request.getContextPath() %>/srRes">예약신청</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <p>멀티코트</p>
                            <ul class="nav_inner">
                                <li>
                                    <a href="<%= request.getContextPath() %>/mcIntro">시설소개</a>
                                    <a href="<%= request.getContextPath() %>/mcRes">예약신청</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <p>내 예약 확인</p>
                            <ul class="nav_inner">
                                <li>
                                    <a href="<%= request.getContextPath() %>/srHistory">독서실</a>
                                    <a href="<%= request.getContextPath() %>/mcHistory">멀티코트</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>

            <section id="amenities_content">
                <div class="amenities_content">
                    <ul class="subject">
                        <li>
                            <p>신청자 정보를 입력해 주세요.</p>
                            <ul class="explanation">
                                <li>신청 확인시 입력하신 정보로 확인 가능하오니 정확하게 입력해주시기 바랍니다.</li>
                            </ul>
                        </li>
                    </ul>
                    <hr>
                    <div class="reservation_wrap1">
                        <label class="selectCourt">코트 선택</label>
                        <br>
                        <div class="selectRadio">
                            <label for="multiA" class="multiRadio">멀티코트A</label>
                            <input type="radio" id="multiA" name="selectMulti">
                            <label for="multiB" class="multiRadio">멀티코트B</label>
                            <input type="radio" id="multiB" name="selectMulti">
                            <label for="multiC" class="multiRadio">멀티코트C</label>
                            <input type="radio" id="multiC" name="selectMulti">
                        </div>
                        <br>
                        <label class="selectDate">날짜 선택</label>
                        <br>
                        <input class="cal" type="text">
                    </div>
                    <div class="reservation_wrap3">
                        <label class="selectTime">시간 선택</label>
                        <br>
                        <div class="time_wrap">
                            <input type="time" class="startTime" min="09:00" max="21:00" step="3600" required>
                            &nbsp;&nbsp;시작시간
                            <input type="time" class="endTime">
                            &nbsp;&nbsp;마감시간
                        </div>
                    </div>
                    <div class="reservation_submit">
                        <input class="submit" type="submit" value="신청하기">
                        <input class="reset" type="reset" value="취소">
                    </div>
                </div>
            </section>
        </div>
        
             <%-- 공통 footer --%>
		<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
        


</body>
</html>