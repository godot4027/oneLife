<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부대시설 > 내 예약 확인 > 멀티코트 예약 확인</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>

<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>

<div class="bottom_wrap1">
            <p></p><span>> 부대시설 > 내 예약 확인 > 멀티코트 예약 확인</span>
            <h1>멀티코트 예약 내역</h1>
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
                            <input type="month">
                            <input class="submit" type="submit" value="조회">
                        </div>
                    </div>
                    <div class="list_content">
                        <div class="table_wrap resident_list">
                            <table class="multi_table">
                                <thead>
                                    <tr>
                                        <th>신청 일자</th>
                                        <th>멀티코트장</th>
                                        <th>시간</th>
                                    </tr>
                                </thead>   
                                <tbody>
                                    <tr>
                                        <th>2021-08-24</th>
                                        <th>멀티코트B</th>
                                        <th>09:00 / 16:00</th>
                                    </tr>
                                    <tr>
                                        <th>2021-08-20</th>
                                        <th>멀티코트A</th>
                                        <th>20:00 / 22:00</th>
                                    </tr>
                                    <tr>
                                        <th>2021-08-16</th>
                                        <th>멀티코트C</th>
                                        <th>09:00 / 14:00</th>
                                    </tr>
                                    <tr>
                                        <th>2021-08-15</th>
                                        <th>멀티코트C</th>
                                        <th>09:00 / 10:00</th>
                                    </tr>
                                    <tr>
                                        <th>2021-08-12</th>
                                        <th>멀티코트A</th>
                                        <th>10:00 / 17:00</th>
                                    </tr>
                                    <tr>
                                        <th>2021-08-10</th>
                                        <th>멀티코트B</th>
                                        <th>17:00 / 18:00</th>
                                    </tr>
                                    <tr>
                                        <th>2021-08-02</th>
                                        <th>멀티코트A</th>
                                        <th>13:00 / 20:00</th>
                                    </tr>
                                </tbody> 
                            </table>
                        </div>
                    </div>
                    <div class="paging_wrap type02">
                        <a href="#" class="btn_prev"></a>
                        <a href="#:;" class="btn_num on">1</a>
                        <a href="#:;" class="btn_num">2</a>
                        <a href="#:;" class="btn_num">3</a>
                        <a href="#:;" class="btn_num">4</a>
                        <a href="#:;" class="btn_num">5</a>
                        <a href="#:;" class="btn_next"></a>
                    </div>
                </div>
            </section>
        </div>
        
              <%-- 공통 footer --%>
		<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>

</body>
</html>