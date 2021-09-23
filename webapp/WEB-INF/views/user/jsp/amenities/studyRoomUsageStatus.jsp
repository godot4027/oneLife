<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부대시설 > 독서실 > 이용현황</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>

<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
            <p></p><span>> 부대시설 > 독서실 > 이용현황</span>
            <h1>이용현황</h1>
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
                    <div class="search_box">
                        <div class="search_main">
                            <label>이용기간</label>
                            <input type="text" class="datepicker" id="datepicker">
                            <input class="submit" type="submit" value="조회">
                        </div>
                    </div>

                    
                    <div class="sr_title">
                        <a>좌석현황</a>
                    </div>


                    <div class="list_content">
                        <div class="table_wrap resident_list">
                            <hr>
                            <table class="table">
                                <tr>
                                    <th>총 좌석</th>
                                    <th>100석</th>
                                </tr>
                                <tr>
                                    <th>예약 좌석</th>
                                    <th>62석</th>
                                </tr>
                                <tr>
                                    <th>예약 가능 좌석</th>
                                    <th>38석</th>
                                </tr>
                                <tr>
                                    <th>예약 비율</th>
                                    <th>62.0%</th>
                                </tr>
                            </table>
                            <hr>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        
         <%-- 공통 footer --%>
		<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>

</body>
</html>