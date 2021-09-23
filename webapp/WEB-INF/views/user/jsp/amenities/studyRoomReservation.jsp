<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부대시설 > 독서실 > 예약신청</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>

<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>


<div class="bottom_wrap1">
            <p></p><span>> 부대시설 > 독서실 > 예약신청</span>
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
                        <div class="reservation_A">
                            <label>날짜 선택</label> 
                            <br>
                            <input type="date" id="Date">
                            <br>
                            <a>~</a>
                            <br>
                            <input type="date" id="Date">
                            <br><br><br><br>
                            <label>좌석 선택</label>
                            <br>
                            <input type="text" id="seatNumber">
                            <button type="button" onclick="showPopup();">자리보기</button>
                        </div>
                        <div class="reservation_result">
                            <input class="submit" type="submit" value="신청하기">
                            <input class="reset" type="reset" value="취소">
                        </div>
                    </div>
                </div>
            </section>
        </div>
        
        <%-- 공통 footer --%>
		<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
		
		<%-- 팝업창 불러오기 --%>
	    <script>
	        function showPopup(){
	            window.open("studyRoomPopup.jsp","좌석선택","width=1300, height=850,left=10,top=50");
	        }
	    </script>
			
        

</body>
</html>