<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi" />
    <title>입주차량 현황</title>

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
                    <div class="inVehicle_wrap">
                        <h2 class="title">입주차량 현황</h2>
                        <div class="items bg">
                            <div class="searchbox">
                                <div class="line">
                                    <label for="">조회세대</label>
                                    <div class="select">
                                        <select name="" id="">
                                            <option value="">전체</option>
                                        </select>
                                    </div>
                                    <label for="">동</label>
                                    <div class="select">
                                        <select name="" id="">
                                            <option value="">전체</option>
                                        </select>
                                    </div>
                                    <label for="">호</label>
                                </div>
                                <div class="line">
                                    <label for="">차량번호</label>
                                    <div class="input">
                                        <input type="text" name="" id="">
                                    </div>
                                    <a href="javascript:;" class="btn">검색</a>
                                </div>
                                <div class="excel_wrap">
                                    <a href="javascript:" class="excel_btn">검색 결과 엑셀로 다운받기</a>
                                </div>
                                <div class="precautions_wrap">
                                    <p>※주의사항</p>
                                    <p>세대별 기본 : 1대</p>
                                    <p>추가 : 10,000원/대</p>
                                    <p>입금 계좌 : 국민은행 kh아파트 222202-01-013452</p>
                                    <p>(꼭 입금 확인 후 등록해주세요!)</p>
                                </div>
                            </div>
                        </div>
                        <div class="items">
                            <div class="vehicleList_wrap">
                                <div class="vehicleList_head">
                                    <ul>
                                        <li>동</li>
                                        <li>호</li>
                                        <li>차량번호</li>
                                        <li>비상연락처</li>
                                        <li></li>
                                    </ul>
                                </div>

                                <div class="vehicleList_body">
                                    <!-- 한세트 -->
                                    <div class="item">
                                        <ul>
                                            <li>101</li>
                                            <li>
                                                101
                                                <a href="javascript:;" class="add_btn"><span class="ir_so">차량추가</span></a>
                                            </li>
                                            <li>(1) 35라 3579</li>
                                            <li>010-1234-1234</li>
                                            <li>
                                                <a href="javascript:;" class="close"></a>
                                            </li>
                                        </ul>
                                        <ul class="inner">
                                            <li></li>
                                            <li></li>
                                            <li>(2) 35라 3479</li>
                                            <li>010-1234-1234</li>
                                            <li> <a href="javascript:;" class="close"></a></li>
                                        </ul>
                                    </div>
                                    <!-- // 한세트 -->

                                    <div class="item">
                                        <ul>
                                            <li>101</li>
                                            <li>
                                                102
                                                <a href="javascript:;" class="add_btn"><span class="ir_so">차량추가</span></a>
                                            </li>
                                            <li>(1) 35라 3579</li>
                                            <li>010-1234-1234</li>
                                            <li>
                                                <a href="javascript:;" class="close"></a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="item">
                                        <ul>
                                            <li>101</li>
                                            <li>
                                                103
                                                <a href="javascript:;" class="add_btn"><span class="ir_so">차량추가</span></a>
                                            </li>
                                            <li>(1) 35라 3579</li>
                                            <li>010-1234-1234</li>
                                            <li>
                                                <a href="javascript:;" class="close"></a>
                                            </li>
                                        </ul>
                                        <ul class="inner">
                                            <li></li>
                                            <li></li>
                                            <li>(2) 35라 3479</li>
                                            <li>010-1234-1234</li>
                                            <li> <a href="javascript:;" class="close"></a></li>
                                        </ul>
                                    </div>

                                    <div class="item">
                                        <ul>
                                            <li>101</li>
                                            <li>
                                                104
                                                <a href="javascript:;" class="add_btn"><span class="ir_so">차량추가</span></a>
                                            </li>
                                            <li>(1) 35라 3579</li>
                                            <li>010-1234-1234</li>
                                            <li>
                                                <a href="javascript:;" class="close"></a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="item">
                                        <ul>
                                            <li>101</li>
                                            <li>
                                                105
                                                <a href="javascript:;" class="add_btn"><span class="ir_so">차량추가</span></a>
                                            </li>
                                            <li>(1) 35라 3579</li>
                                            <li>010-1234-1234</li>
                                            <li>
                                                <a href="javascript:;" class="close"></a>
                                            </li>
                                        </ul>
                                        <ul class="inner">
                                            <li></li>
                                            <li></li>
                                            <li>(2) 35라 3479</li>
                                            <li>010-1234-1234</li>
                                            <li> <a href="javascript:;" class="close"></a></li>
                                        </ul>
                                    </div>

                                    <div class="item">
                                        <ul>
                                            <li>101</li>
                                            <li>
                                                106
                                                <a href="javascript:;" class="add_btn"><span class="ir_so">차량추가</span></a>
                                            </li>
                                            <li>(1) 35라 3579</li>
                                            <li>010-1234-1234</li>
                                            <li>
                                                <a href="javascript:;" class="close"></a>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="item">
                                        <ul>
                                            <li>101</li>
                                            <li>
                                                107
                                                <a href="javascript:;" class="add_btn"><span class="ir_so">차량추가</span></a>
                                            </li>
                                            <li>(1) 35라 3579</li>
                                            <li>010-1234-1234</li>
                                            <li>
                                                <a href="javascript:;" class="close"></a>
                                            </li>
                                        </ul>
                                        <ul class="inner">
                                            <li></li>
                                            <li></li>
                                            <li>(2) 35라 3479</li>
                                            <li>010-1234-1234</li>
                                            <li> <a href="javascript:;" class="close"></a></li>
                                        </ul>
                                    </div>
                                    <div class="item">
                                        <ul>
                                            <li>101</li>
                                            <li>
                                                108
                                                <a href="javascript:;" class="add_btn"><span class="ir_so">차량추가</span></a>
                                            </li>
                                            <li>(1) 35라 3579</li>
                                            <li>010-1234-1234</li>
                                            <li>
                                                <a href="javascript:;" class="close"></a>
                                            </li>
                                        </ul>
                                       
                                    </div>
                                    <div class="item">
                                        <ul>
                                            <li>101</li>
                                            <li>
                                                109
                                                <a href="javascript:;" class="add_btn"><span class="ir_so">차량추가</span></a>
                                            </li>
                                            <li>(1) 35라 3579</li>
                                            <li>010-1234-1234</li>
                                            <li>
                                                <a href="javascript:;" class="close"></a>
                                            </li>
                                        </ul>
                                        <ul class="inner">
                                            <li></li>
                                            <li></li>
                                            <li>(2) 35라 3479</li>
                                            <li>010-1234-1234</li>
                                            <li> <a href="javascript:;" class="close"></a></li>
                                        </ul>
                                    </div>
                                    <div class="item">
                                        <ul>
                                            <li>101</li>
                                            <li>
                                                110
                                                <a href="javascript:;" class="add_btn"><span class="ir_so">차량추가</span></a>
                                            </li>
                                            <li>(1) 35라 3579</li>
                                            <li>010-1234-1234</li>
                                            <li>
                                                <a href="javascript:;" class="close"></a>
                                            </li>
                                        </ul>
                                    </div>
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
                </div>
            </secion>
        </div>
    </div>

    <!-- 팝업영역 -->
    <!-- 신규차량 등록 -->
    <div class="popup_wrap" style="display:none;">
        <div class="dim"></div>
        <div class="item">
           <div class="new_admin">
               <div class="title">신규차량 등록</div>
               <div class="new_item">
                   <label for="">등록세대</label>
                   <input type="text" name="" id="">
               </div>
               <div class="new_item">
                    <label for="">차량번호</label>
                    <input type="text" name="" id="" placeholder="ex) 35로 5432 띄어쓰기 없이 적어주세요.">
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

    <!-- 입주차량 신규 등록 확인 -->
    <div class="popup_wrap" style="display:none;">
        <div class="dim"></div>
        <div class="item">
           <div class="vehicle_new">
                <p class="vehicle_title"><span>201</span>동 <span>103</span>호 차량 등록 현황</p>
                <h3 class="vehicle_num">총 2대</h3>
                <div class="vehicle_list">
                    <ul class="v_head">
                        <li></li>
                        <li>차량번호</li>
                        <li>비상연락처</li>
                    </ul>
                    <ul class="v_body">
                        <li>1</li>
                        <li>35로 5432</li>
                        <li>010-1234-1234</li>
                    </ul>
                    <ul class="v_body">
                        <li>2</li>
                        <li>35로 5433</li>
                        <li>010-1234-1234</li>
                    </ul>
                </div>
           </div>
           <div class="new_btn_box">
               <a href="javascript:;">확인</a>
           </div>
        </div>
    </div>

    <!-- 차량정보 삭제 -->
    <div class="popup_wrap" style="display:none;">
        <div class="dim"></div>
        <div class="item">
           <div class="new_admin">
               <div class="title type02">정말로 아래의 차량 정보를 삭제하시겟습니까?</div>
               <div class="new_item">
                   <label for="">등록세대</label>
                   <input type="text" name="" id="" readonly>
               </div>
               <div class="new_item">
                    <label for="">차량번호</label>
                    <input type="text" name="" id="" placeholder="ex) 35로 5432 띄어쓰기 없이 적어주세요." readonly>
                </div>
                <div class="new_item">
                    <label for="">비상연락처</label>
                    <input type="text" name="" id="" placeholder="차주의 휴대폰 번호를 입력해주세요." readonly>
                </div>
           </div>
           <div class="new_btn_box">
               <a href="javascript:;">확인</a>
               <a href="javascript:;">취소</a>
           </div>
        </div>
    </div>
    <!-- 팝업영역 -->

</body>

</html>