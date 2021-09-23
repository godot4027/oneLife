<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부대시설 > 멀티코트 > 시설소개</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>

<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	 <div class="bottom_wrap1">
            <p></p><span>> 부대시설 > 멀티코트 > 시설소개</span>
            <h1>시설소개</h1>
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
                            <a>운영시간</a>
                            <ul class="explanation">
                                <li>화 ~ 토 : 08:00 ~ 21:00. 일/공휴일 : 09:00 ~ 20:00</li>
                                <li>월요일 정기 휴관</li>
                            </ul>
                        </li>
                        <li>
                            <a>시설</a>
                            <ul class="explanation">
                                <li>A코트 / B코트 / C코트</li>  
                            </ul>
                        </li>
                        <li>
                            <a>이용방법</a>
                            <ul class="explanation">
                                <li>예약신청 페이지에서 신청 가능</li>
                                <li>동시에 두 코트 이상 이용 불가</li>
                                <li>B코트 : 화,목 08:00 ~ 21:00, 토 : 08:00 ~ 14:00는 레슨코트로<br> 예약이 불가능합니다.</li>
                            </ul>
                        </li>
                        <li>
                            <a>유의사항</a>
                            <ul class="explanation">
                                <li>킥보드 및 인라인 등 인조잔디를 훼손할 수 있는 장비 출입금지</li>
                                <li>소음으로 인해 주변 세대 피해를 주는 행동은 삼가합니다.</li>
                                <li>멀티코트 내 흡연, 화기를 가지고 들어가는 일은 삼가하여 주시기 바랍니다.</li>
                            </ul>
                        </li>
                    </ul>
                    <br><br><br>
                   
                    <img src="../../git/oneLife/webapp/resources/admin/images/multicourt.jpg" width="600px" height="300px" >
                    
                </div>
            </section>
        </div>
        
           <%-- 공통 footer --%>
		<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>


</body>
</html>