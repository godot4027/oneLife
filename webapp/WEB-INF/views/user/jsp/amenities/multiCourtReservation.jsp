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

        <div class="container">
            <nav id="nav">
                <div class="nav">
                    <ul class="category">
                        <li>
                            <a>독서실</a>
                            <ul class="inner">
                                <li>
                                    <a href="<%= request.getContextPath() %>/srIntro">시설소개</a>
                                </li>
                                <li>
                                    <a href="<%= request.getContextPath() %>/srUse">이용현황</a>
                                </li>
                                <li>
                                    <a href="<%= request.getContextPath() %>/srRes">예약신청</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a>멀티코트</a>
                            <ul class="inner">
                                <li>
                                    <a href="<%= request.getContextPath() %>/mcIntro">시설소개</a>
                                </li>
                                <li>
                                    <a href="<%= request.getContextPath() %>/mcUse">이용현황</a>
                                </li>
                                <li>
                                    <a href="<%= request.getContextPath() %>/mcRes">예약신청</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a>내 예약 확인</a>
                            <ul class="inner">
                                <li>
                                    <a href="<%= request.getContextPath() %>/srHistory">독서실 예약 확인</a>
                                </li>
                                <li>
                                    <a href="<%= request.getContextPath() %>/mcHistory">멀티코트 예약 확인</a>
                                </li>
                            </ul>
                        </li>  
                    </ul>
                </div>
            </nav>

            <section id="content">
                <div class="content">  
                    <ul class="subject">
                        <li>
                            <a>신청자 정보를 입력해 주세요.</a>
                            <ul class="explanation">
                                <li>신청 확인시 입력하신 정보로 확인 가능하오니 정확하게 입력해주시기 바랍니다.</li>
                            </ul>
                        </li>
                    </ul>
                    <br>
                    <hr>
                    <br><br><br>

                    <div class="reservation_wrap">
                        <div class="reservation_B">
                            <label for="multiA">멀티코트A</label>
                            <input type="radio" id="multiA">
                            <label for="multiB">멀티코트B</label>
                            <input type="radio" id="multiB">
                            <label for="multiC">멀티코트C</label>
                            <input type="radio" id="multiC">
                            <br>
                            <input type="date">
                            <br>
                            <input type="time">
                            <a>~</a>
                            <input type="time">
                        </div>
                        <div class="reservation_result">
                            <input type="submit" value="신청하기">
                            <input type="reset" value="취소">
                        </div>
                    </div>
                </div>
            </section>
        </div>
        
             <%-- 공통 footer --%>
		<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
        


</body>
</html>