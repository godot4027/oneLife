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
            <p></p><span>> 부대시설 > 멀티코트 > 이용현황</span>
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
                            <label for="datepicker">이용기간</label>
                            <input type="text" id="datepicker">

                            <label>시설</label>
                            <select name="selectBox" id="selectBox" onchange="getSelectValue();">
                                <option value="멀티코트A">멀티코트A</option>
                                <option value="멀티코트B">멀티코트B</option>
                                <option value="멀티코트C">멀티코트C</option>
                            </select>
                            
                            <input class="submit" type="submit" value="조회">
                            
                        </div>
                    </div>

                    <div class="mc_title">
                      <input type="text" id="textValue" value="">
                    </div>

                    
                    <div class="list_content">
                        <div class="table_wrap resident_list">
                     
                            <table class="multi_table">
                                <thead>
                                    <tr>
                                        <th>이용 시간</th>
                                        <th>상태</th>
                                    </tr>
                                </thead>   
                                <tbody>
                                    <tr>
                                        <th>08:00 ~ 09:00</th>
                                        <th>예약 가능</th>
                                    </tr>
                                    <tr>
                                        <th>09:00 ~ 10:00</th>
                                        <th>예약 불가</th>
                                    </tr>
                                    <tr>
                                        <th>10:00 ~ 11:00</th>
                                        <th>예약 불가</th>
                                    </tr>
                                    <tr>
                                        <th>11:00 ~ 12:00</th>
                                        <th>예약 가능</th>
                                    </tr>
                                    <tr>
                                        <th>12:00 ~ 13:00</th>
                                        <th>예약 가능</th>
                                    </tr>
                                    <tr>
                                        <th>13:00 ~ 14:00</th>
                                        <th>예약 가능</th>
                                    </tr>
                                    <tr>
                                        <th>14:00 ~ 15:00</th>
                                        <th>예약 불가</th>
                                    </tr>
                                    <tr>
                                        <th>15:00 ~ 16:00</th>
                                        <th>예약 가능</th>
                                    </tr>
                                    <tr>
                                        <th>16:00 ~ 17:00</th>
                                        <th>예약 불가</th>
                                    </tr>
                                    <tr>
                                        <th>17:00 ~ 18:00</th>
                                        <th>예약 불가</th>
                                    </tr>
                                    <tr>
                                        <th>18:00 ~ 19:00</th>
                                        <th>예약 불가</th>
                                    </tr>
                                    <tr>
                                        <th>19:00 ~ 20:00</th>
                                        <th>예약 가능</th>
                                    </tr>
                                    <tr>
                                        <th>20:00 ~ 21:00</th>
                                        <th>예약 가능</th>
                                    </tr>
                                </tbody> 
                            </table>
                       
                        </div>
                    </div>
                </div>
            </section>
        </div>
        
        <%-- select 값 --%>
	    <script>
	        function getSelectValue(){
	            var selectValue = $("#selectBox option:selected").text();
	            document.getElementById("textValue").value = selectValue;
	        }
	    </script>
        
          <%-- 공통 footer --%>
		<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
        
        

</body>
</html>