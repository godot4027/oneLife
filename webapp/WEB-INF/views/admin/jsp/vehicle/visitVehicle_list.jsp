<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi" />
    <title>방문차량 예약 현황</title>

	<jsp:include page="/WEB-INF/views/admin/common/link.jsp"></jsp:include>	

</head>
<body>
    <div id="wrap">
        <%-- header 공통 적용 --%>
        <jsp:include page="/WEB-INF/views/admin/common/header.jsp"></jsp:include>
        
        <div class="container">
        	<%-- menubar 공통 적용  --%>
        	<jsp:include page="/WEB-INF/views/admin/common/menubar.jsp"></jsp:include>

            <secion id="content">
                <div class="content">
                    <div class="list_wrap">
                        <h2 class="sub_tit">방문차량 예약 현황</h2>
                        <div class="search_box type02">
                            <a href="javascript:;" class="vehicle_btn">방문차량 현장접수</a>
                            
                            <div class="search_top clearfix">
                                <div class="items clearfix">
                                    <label for="">예약일자</label>
                                    <div class="calendar clearfix">
                                        <input type="text" name="" id="" class="cal" readonly>
                                        <span>~</span>
                                        <input type="text" name="" id="" class="cal" readonly>
                                    </div>
                                    <div class="checkbox">
                                        <input type="checkbox" name="test" id="test">
                                        <label for="test">전체조회</label>
                                    </div>
                                    
                                </div>
                                <div class="items clearfix">
                                    <label for="reser_fac">입차현황</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">전체</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="search_bot type02 clearfix">
                                <div class="items clearfix">
                                    <label for="">차량번호</label>
                                    <input type="text" class="input" placeholder="띄어쓰기 없이 입력해주세요!" style="width:244px;">
                                </div>
                                <div class="items clearfix">
                                    <label for="reser_fac">방문세대</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">동</option>
                                        </select>
                                    </div>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">호</option>
                                        </select>
                                    </div>
                                    <button type="button" class="btn">검색</button>
                                </div>
                            </div>
                        </div>

                        <h3 class="table_title">2021년 8월 20일 ~ 2021년 8월 21일</h3>

                        <div class="list_content">
                            <div class="table_wrap">
                                <table class="table">
                                    <colgroup>
                                        <col width="60px">
                                        <col width="auto">
                                        <col width="auto">
                                        <col width="auto">
                                        <col width="auto">
                                        <col width="auto">
                                        <col width="auto">
                                        <col width="auto">
                                        <col width="auto">
                                    </colgroup>
                                    <caption class="ir_so">방문차량 예약 현황</caption>
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>방문일</th>
                                            <th>차량 번호</th>
                                            <th>방문 세대</th>
                                            <th>방문 목적</th>
                                            <th>신청인</th>
                                            <th>신청인 연락처</th>
                                            <th>차주 연락처</th>
                                            <th>입차 현황</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>2021/08/07</td>
                                            <td>35라3579</td>
                                            <td>201동 104호</td>
                                            <td>친척 방문</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>010-1567-1579</td>
                                            <td><p class="status_before2">입차</p></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>2021/08/07</td>
                                            <td>35라3579</td>
                                            <td>201동 104호</td>
                                            <td>친척 방문</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>010-1567-1579</td>
                                            <td><p class="status_ing">입차 완료</p></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>2021/08/07</td>
                                            <td>35라3579</td>
                                            <td>201동 104호</td>
                                            <td>친척 방문</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>010-1567-1579</td>
                                            <td><p class="status_ing">입차 완료</p></td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>2021/08/07</td>
                                            <td>35라3579</td>
                                            <td>201동 104호</td>
                                            <td>친척 방문</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>010-1567-1579</td>
                                            <td><p class="status_ing">입차 완료</p></td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>2021/08/07</td>
                                            <td>35라3579</td>
                                            <td>201동 104호</td>
                                            <td>친척 방문</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>010-1567-1579</td>
                                            <td><p class="status_ing">입차 완료</p></td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>2021/08/07</td>
                                            <td>35라3579</td>
                                            <td>201동 104호</td>
                                            <td>친척 방문</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>010-1567-1579</td>
                                            <td><p class="status_ing">입차 완료</p></td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>2021/08/07</td>
                                            <td>35라3579</td>
                                            <td>201동 104호</td>
                                            <td>친척 방문</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>010-1567-1579</td>
                                            <td><p class="status_ing">입차 완료</p></td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>2021/08/07</td>
                                            <td>35라3579</td>
                                            <td>201동 104호</td>
                                            <td>친척 방문</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>010-1567-1579</td>
                                            <td><p class="status_ing">입차 완료</p></td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>2021/08/07</td>
                                            <td>35라3579</td>
                                            <td>201동 104호</td>
                                            <td>친척 방문</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>010-1567-1579</td>
                                            <td><p class="status_ing">입차 완료</p></td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>2021/08/07</td>
                                            <td>35라3579</td>
                                            <td>201동 104호</td>
                                            <td>친척 방문</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>010-1567-1579</td>
                                            <td><p class="status_ing">입차 완료</p></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="paging_wrap type02">
                                <a href="javascript:;" class="btn_prev"></a>
                                <a href="javascript:;" class="btn_num on">1</a>
                                <a href="javascript:;" class="btn_num">2</a>
                                <a href="javascript:;" class="btn_num">3</a>
                                <a href="javascript:;" class="btn_num">4</a>
                                <a href="javascript:;" class="btn_num">5</a>
                                <a href="javascript:;" class="btn_next"></a>
                            </div>

                        </div>
                    </div>
                </div>
            </secion>
        </div>
    </div>

    <!-- 팝업영역 -->
    <!-- 방문차량 현장접수 -->
    <div class="popup_wrap" style="display:none;">
        <div class="dim"></div>
        <div class="item">
           <div class="new_admin">
               <div class="title">방문차량 현장접수</div>
               <div class="new_item">
                   <label for="">방문일</label>
                   <input type="text" name="" id="">
               </div>
               <div class="new_item">
                    <label for="">차량번호</label>
                    <input type="text" name="" id="" placeholder="ex) 35로 5432 띄어쓰기 없이 적어주세요.">
                </div>
                <div class="new_item">
                    <label for="">방문목적</label>
                    <input type="text" name="" id="" placeholder="ex) 에어컨 수리 업체 방문">
                </div>
                <div class="new_item">
                    <label for="">비상연락처</label>
                    <input type="text" name="" id="" placeholder="차주의 휴대폰 번호를 입력해주세요.">
                </div>
           </div>
           <div class="new_btn_box">
               <a href="javascript:;">등록하기</a>
               <a href="javascript:;">취소하기</a>
           </div>
        </div>
    </div>
    <!-- 팝업영역 -->

</body>

</html>