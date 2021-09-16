<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi" />
    <title>부대시설 예약 목록</title>
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
                        <h2 class="sub_tit">부대시설 예약관리</h2>
                        <div class="search_box">
                            <div class="search_top clearfix">
                                <div class="items clearfix">
                                    <label for="reser_fac">예약시설</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">전체</option>
                                            <option value="">독서실</option>
                                            <option value="">멀티코트장</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="items clearfix">
                                    <label for="reser_fac">예약타입</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">전체</option>
                                            <option value="">정기권</option>
                                            <option value="">일일석</option>
                                            <option value="">A</option>  
                                            <option value="">B</option>  
                                            <option value="">C</option>  
                                        </select>
                                    </div>
                                </div>
                                <div class="items clearfix">
                                    <label for="reser_fac">예약타입</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">전체</option>
                                            <option value="">사용전</option>
                                            <option value="">사용중</option>
                                            <option value="">사용완료</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="items clearfix">
                                    <label for="">예약일자</label>
                                    <div class="calendar clearfix">
                                        <input type="text" name="" id="" class="cal" readonly>
                                        <span>~</span>
                                        <input type="text" name="" id="" class="cal" readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="search_bot clearfix">
                                <div class="items clearfix">
                                    <label for="">검색조건</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">전체</option>
                                            <option value="">아이디</option>
                                            <option value="">이름</option>
                                            <option value="">핸드폰번호</option>
                                        </select>
                                    </div>
                                    <input type="text" class="input">
                                    <button type="button" class="btn">검색</button>
                                </div>
                               
                            </div>
                        </div>

                        <div class="list_content">
                            <div class="table_wrap">
                                <table class="table">
                                    <colgroup>
                                        <col width="30px">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="115px">
                                        <col width="25%">
                                        <col width="25%">
                                        <col width="8%">
                                    </colgroup>
                                    <caption class="ir_so">부대시설 예약목록</caption>
                                    <thead>
                                        <tr>
                                            <th>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="checkAll" id="checkAll">
                                                    <label for="checkAll"></label>
                                                </div>
                                            </th>
                                            <th>No.</th>
                                            <th>예약 시설</th>
                                            <th>예약 타입</th>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>핸드폰 번호</th>
                                            <th>예약 일자</th>
                                            <th>예약 마감시간</th>
                                            <th>예약 상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>1</td>
                                            <td>독서실</td>
                                            <td>정기권</td>
                                            <td>abc123</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>2021년 08월 28일 21시 21분</td>
                                            <td>2021년 08월 28일 21시 21분 <span class="bold">(3시간)</span></td>
                                            <td>
                                                <p class="status_before">사용전</p>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil2">
                                                    <label for="facil2"></label>
                                                </div>
                                            </td>
                                            <td>2</td>
                                            <td>독서실</td>
                                            <td>일일권</td>
                                            <td>abc123</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>2021년 08월 28일 21시 21분</td>
                                            <td>2021년 08월 28일 21시 21분 <span class="bold">(3시간)</span></td>
                                            <td>
                                                <p class="status_ing">사용중</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil3">
                                                    <label for="facil3"></label>
                                                </div>
                                            </td>
                                            <td>3</td>
                                            <td>독서실</td>
                                            <td>일일권</td>
                                            <td>abc123</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>2021년 08월 28일 21시 21분</td>
                                            <td>2021년 08월 28일 21시 21분 <span class="bold">(3시간)</span></td>
                                            <td>
                                                <p class="status_after">사용완료</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil4">
                                                    <label for="facil4"></label>
                                                </div>
                                            </td>
                                            <td>4</td>
                                            <td>독서실</td>
                                            <td>일일권</td>
                                            <td>abc123</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>2021년 08월 28일 21시 21분</td>
                                            <td>2021년 08월 28일 21시 21분 <span class="bold">(3시간)</span></td>
                                            <td>
                                                <p class="status_after">사용완료</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil5">
                                                    <label for="facil5"></label>
                                                </div>
                                            </td>
                                            <td>5</td>
                                            <td>독서실</td>
                                            <td>일일권</td>
                                            <td>abc123</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>2021년 08월 28일 21시 21분</td>
                                            <td>2021년 08월 28일 21시 21분 <span class="bold">(3시간)</span></td>
                                            <td>
                                                <p class="status_after">사용완료</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil6">
                                                    <label for="facil6"></label>
                                                </div>
                                            </td>
                                            <td>6</td>
                                            <td>독서실</td>
                                            <td>일일권</td>
                                            <td>abc123</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>2021년 08월 28일 21시 21분</td>
                                            <td>2021년 08월 28일 21시 21분 <span class="bold">(3시간)</span></td>
                                            <td>
                                                <p class="status_after">사용완료</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil7">
                                                    <label for="facil7"></label>
                                                </div>
                                            </td>
                                            <td>7</td>
                                            <td>독서실</td>
                                            <td>일일권</td>
                                            <td>abc123</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>2021년 08월 28일 21시 21분</td>
                                            <td>2021년 08월 28일 21시 21분 <span class="bold">(3시간)</span></td>
                                            <td>
                                                <p class="status_after">사용완료</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil8">
                                                    <label for="facil8"></label>
                                                </div>
                                            </td>
                                            <td>8</td>
                                            <td>독서실</td>
                                            <td>일일권</td>
                                            <td>abc123</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>2021년 08월 28일 21시 21분</td>
                                            <td>2021년 08월 28일 21시 21분 <span class="bold">(3시간)</span></td>
                                            <td>
                                                <p class="status_after">사용완료</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil9">
                                                    <label for="facil9"></label>
                                                </div>
                                            </td>
                                            <td>9</td>
                                            <td>독서실</td>
                                            <td>일일권</td>
                                            <td>abc123</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>2021년 08월 28일 21시 21분</td>
                                            <td>2021년 08월 28일 21시 21분 <span class="bold">(3시간)</span></td>
                                            <td>
                                                <p class="status_after">사용완료</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil10">
                                                    <label for="facil10"></label>
                                                </div>
                                            </td>
                                            <td>10</td>
                                            <td>독서실</td>
                                            <td>일일권</td>
                                            <td>abc123</td>
                                            <td>홍길동</td>
                                            <td>010-1234-5678</td>
                                            <td>2021년 08월 28일 21시 21분</td>
                                            <td>2021년 08월 28일 21시 21분 <span class="bold">(3시간)</span></td>
                                            <td>
                                                <p class="status_after">사용완료</p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="btn_box">
                                <a href="javascript:;" class="remove">삭제</a>
                            </div>
                            <div class="paging_wrap">
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
    <!-- 삭제 팝업 -->
    <div class="popup_wrap" style="display:none;">
        <div class="dim"></div>
        <div class="item">
            <h3 class="tit">예약 내역 삭제</h3>
            <p class="txt">총 2건의 예약내역을 삭제하시겠습니까?</p>
            <div class="btn_box">
                <a href="javascript:;" class="ok">삭제</a>
                <a href="javascript:;" class="cancle">취소</a>
            </div>
        </div>
    </div>

     <!-- 삭제완료 팝업 -->
     <div class="popup_wrap" style="display:none;">
        <div class="dim"></div>
        <div class="item">
            <h3 class="tit">예약 내역 삭제</h3>
            <p class="txt">총 2건의 예약내역이 삭제되었습니다.</p>
            <div class="btn_box">
                <a href="javascript:;" class="ok">확인</a>
            </div>
        </div>
    </div>
    <!-- 팝업영역 -->

</body>

</html>