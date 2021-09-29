<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자리 선택</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>
<style>
	.library_pop{width: 1280px; padding: 40px 80px; box-sizing: border-box;}
	.library_pop .sub_tit{font-size: 30px; margin-bottom: 20px;}
	.library_pop .library_wrap{}
	.library_pop .library_wrap .library_head{position: relative; margin-bottom: 10px;}
	.library_pop .library_wrap .library_head{}
	.library_pop .library_wrap .library_head .input .cal{display: block; width: 160px; height: 30px; line-height: 30px; border: 1px solid #000;box-sizing: border-box;background:url(../images/ico_cal.png) no-repeat right 10px center;padding: 0 10px; padding-right: 35px; cursor: pointer;}
	.library_pop .library_wrap .library_head .input .cal_today{display: block; width: 160px; height: 30px; line-height: 30px; border: 1px solid #000;box-sizing: border-box;background:url(../images/ico_cal.png) no-repeat right 10px center;padding: 0 10px; padding-right: 35px; cursor: pointer;}
	
	.library_pop .library_wrap .library_head .status_item{position: absolute; bottom:0; right:0;}
	.library_pop .library_wrap .library_head .status_item p{position: relative; line-height: 14px; padding-left: 40px; margin-top: 5px;}
	.library_pop .library_wrap .library_head .status_item p:before{display: block; content:''; position: absolute; top:calc(50% - 4px); left:0; width: 37px; height: 8px;font-size: 10px; background: #E6E6E6;}
	.library_pop .library_wrap .library_head .status_item p:nth-child(2):before{background: #3C90F2;}
	.library_pop .library_wrap .library_head .status_item p:nth-child(3):before{background: #C30000;}
	.library_pop .library_wrap .library_body{display: flex; border:1px solid #000; border-radius: 10px;}
	.library_pop .library_wrap .library_body > div{}
	.library_pop .library_wrap .library_body .seat_item{width:calc(100% - 220px);  height: 660px; box-sizing: border-box; overflow: auto; padding-right: 5px;}
	.library_pop .library_wrap .library_body .seat_item ul{display: flex; flex-wrap: wrap;}
	.library_pop .library_wrap .library_body .seat_item ul li{position: relative; padding: 12px; box-sizing: border-box; height: 83px; margin-bottom: 20px; border-top:1px solid #000; margin-top: -1px;}
	.library_pop .library_wrap .library_body .seat_item ul li:before{display: block; content:''; position: absolute; left: 0; bottom: 0; width: 73px; height: 1px; background:#000; }
	.library_pop .library_wrap .library_body .seat_item ul li:after{display: block; content:''; position: absolute; right: 0; top: 0; width: 1px; height: 100%; background:#000;}
	.library_pop .library_wrap .library_body .seat_item ul li a{display: block; width: 60px; height: 60px; box-sizing: border-box; border-radius:10px; background:#E6E6E6; text-align: center; margin-right: 11px;}
	.library_pop .library_wrap .library_body .seat_item ul li a .status{font-size: 11px; letter-spacing: 0; padding-top: 6px;}
	.library_pop .library_wrap .library_body .seat_item ul li a .seatNum{font-size: 24px; font-weight: bold; letter-spacing: 0; padding-top: 1px;}
	.library_pop .library_wrap .library_body .seat_item ul li a .endDate{font-size: 11px; letter-spacing: 0; color:#fff; padding-top: 1px;}
	
	.library_pop .library_wrap .library_body .seat_item ul li.use a{background: #3C90F2;}
	.library_pop .library_wrap .library_body .seat_item ul li.use a .status{ color:#fff;}
	.library_pop .library_wrap .library_body .seat_item ul li.use a .seatNum{ color:#fff;}
	
	.library_pop .library_wrap .library_body .seat_item ul li.on a{background: #C30000;}
	.library_pop .library_wrap .library_body .seat_item ul li.on a .status{ color:#fff;}
	.library_pop .library_wrap .library_body .seat_item ul li.on a .seatNum{ color:#fff;}
	
	.library_pop .library_wrap .library_body .plan_item{width: 260px; box-sizing: border-box; padding: 5px 5px 5px 10px;}
	.library_pop .library_wrap .library_body .plan_item div{width: 100%; box-sizing: border-box; height: 315px; line-height: 315px; text-align: center; font-size: 24px; font-weight: bold; border:1px solid #000;}
	.library_pop .library_wrap .library_body .plan_item .exit_item{margin-bottom: 20px;}
	.library_pop .library_wrap .library_body .plan_item .lounge_item{}
</style>

<!-- 이미 예약내역이있을시 -->
   <c:if test="${status eq 'fail'}">
   	<script>
   		opener.document.getElementById('seatNumber').value = '';
   		alert("이미 예약내역이 존재합니다. 다른날을 선택해주세요!");
   		window.close();
   	</script>
   </c:if>

</head>

<body>

<div id="wrap">
        <div class="view_wrap library_pop">
            <h2 class="sub_tit">자리 선택</h2>
            <div class="library_wrap">
                <div class="library_head">
                	<div class="input">
                        <input type="text" name="dayInput" id="dayInput" value="${param.today}" class="cal_today" disabled>
                    </div>
                    <div class="status_item">
                        <p>빈좌석</p>
                        <p>사용중인 좌석</p>
                        <p>선택한 좌석</p>
                    </div>
                </div>
                <div class="library_body">
                    <div class="seat_item">
                      <ul>
                            <!-- 사용중 or 예약석 좌석일시 -->
                           <c:set var="num" value="${0}"/>
                           <c:forEach var="item" begin="${1}" end="${140}" varStatus="status">
                            	<c:choose>
                            		<c:when test="${fList.size() > 0 && fList.get(num).fcSeatNo eq status.count}">
                            			<c:set var="num" value="${num + 1}"/>
                            			<li class="use">
			                                <a href="javascript:;">
			                                    <p class="status">On</p>
			                                    <h3 class="seatNum">${item}</h3>
			                                    <!-- <p class="endDate">~08.26</p> -->
			                                    <input type="hidden" name="seatNum" value="${item}">
			                                </a>
			                            </li>
			                            
			                            <c:if test="${fList.size() <= num}">
			                            	<c:set var="num" value="${fList.size() - 1}"/>
			                            </c:if>
                            		</c:when>
                            		<c:otherwise>
                            			<li>
			                                <a href="javascript:;">
			                                    <p class="status">Off</p>
			                                    <h3 class="seatNum">${item}</h3>
			                                    <!-- <p class="endDate">~08.26</p> -->
			                                    <input type="hidden" name="seatNum" value="${item}">
			                                </a>
			                            </li>
                            		</c:otherwise>
                            	</c:choose>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="plan_item">
                            <div class="exit_item">
                                출입구
                            </div>
                            <div class="lounge_item">
                                휴게실
                            </div>
                    </div>
                </div>
                <div class="libaray_btn">
                	<a href="javascript:sb();">신청하기</a>
                	<a href="javascript:cancle();">취소하기</a>
                </div>

            </div>
        </div>
        
    </div>
  
    <script>
 		// 좌석선택했을시 on 클래스 추가 이미사용중인 좌석메세지 표시
	    $('.library_pop .library_wrap .library_body .seat_item ul li a').click(function(){
	    	if($(this).parent().hasClass('use')){
	    		alert("이미 사용중인 좌석입니다. 다른자리를 선택해주세요!");
	    	}else{
	    		$('.library_pop .library_wrap .library_body .seat_item ul li').removeClass('on');
		    	$(this).parent('li').addClass('on');
	    	}
	    });
 		
	 	// 신청하기 버튼
 		function sb() {
 			let liClass = $('.library_pop .library_wrap .library_body .seat_item ul li');
 			
 			if(!liClass.hasClass('on')){
 				alert("좌석을 선택해주세요!");
 			}else{
 				opener.document.getElementById('seatNumber').value = $('.seat_item ul li.on').find('input[type=hidden]').val();
 				window.close();
 			}
 		}
 		
 		// 취소하기 버튼
 		function cancle() {
 			window.close();
 		}
    </script>
    
    


</body>
</html>