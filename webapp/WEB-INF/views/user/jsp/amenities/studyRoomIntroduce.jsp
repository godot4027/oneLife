<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부대시설 > 독서실 > 시설소개</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>

<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	 <div class="bottom_wrap1">
            <p></p><span>> 부대시설 > 독서실 > 시설소개</span>
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
                                <li>독서실 : 연중무휴(07:00 ~ 익일 02:00)</li>
                                <li>좌석 신청 시간 : 06:00 ~ 24:00(월요일도 신청가능)</li>
                            </ul>
                        </li>
                        <li>
                            <a>좌석정보</a>
                            <ul class="explanation">
                                <li>총 좌석 : 100석</li>  
                            </ul>
                        </li>
                        <li>
                            <a>이용방법</a>
                            <ul class="explanation">
                                <li>예약신청 페이지에서 신청 가능</li>
                                <li>이용현황 페이지에서 남아있는 좌석 수를 알 수 있음</li>
                            </ul>
                        </li>
                        <li>
                            <a>유의사항</a>
                            <ul class="explanation">
                                <li>같은 세대여도 지정 사용자만 사용 가능</li>
                                <li>예약 취소는 되도록 입실 1시간 전에 부탁드립니다.</li>
                                <li>소지품 분실의 위험이 있으니 반드시 자리를 비울 때<br>귀중품은 소지하여 주시기 바랍니다.
                                     분실 시 책임지지 않습니다.</li>
                            </ul>
                        </li>
                    </ul>
                    <br><br><br>
                    <img src="../../git/oneLife/webapp/resources/admin/images/studyroom.PNG" width="600px" height="300px" >
              
                </div>
            </section>
        </div>
        
        <%-- 공통 footer --%>
		<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
        

</body>
</html>