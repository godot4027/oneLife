<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi" />
    <title>주요일정 관리 목록</title>

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
                        <h2 class="sub_tit">주요일정 예약관리</h2>
                        <div class="search_box">
                            <div class="search_top clearfix">
                                <div class="items clearfix">
                                    <label for="reser_fac">일정 타입</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">전체</option>
                                            <option value="">독서실</option>
                                            <option value="">멀티코트장</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="items clearfix">
                                    <label for="reser_fac">공개 여부</label>
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
                                    <label for="">일정 예정일</label>
                                    <div class="calendar clearfix">
                                        <input type="text" name="" id="" class="cal" readonly>
                                    </div>
                                </div>
                            </div>
                            <div class="search_bot week clearfix">
                                <div class="items clearfix">
                                    <label for="">검색 조건</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">일정 내용</option>
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
                                        <col width="50px">
                                        <col width="100px">
                                        <col width="130px">
                                        <col width="100px">
                                        <col width="auto">
                                        <col width="130px">
                                    </colgroup>
                                    <caption class="ir_so">주요일정 관리 목록</caption>
                                    <thead>
                                        <tr>
                                            <th>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="checkAll" id="checkAll">
                                                    <label for="checkAll"></label>
                                                </div>
                                            </th>
                                            <th>No.</th>
                                            <th>일정 예정일</th>
                                            <th>일정 타입</th>
                                            <th>일정 내용</th>
                                            <th>공개여부</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- 한세트 -->
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>1</td>
                                            <td>2021.08.06</td>
                                            <td class="emp">공동생활</td>
                                            <td>
                                               <div class="tb_txt_box">
                                                    <a href="javascript:;" class="txt">
                                                        한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트한줄처리테스트
                                                    </a>
                                               </div>
                                            </td>
                                            <td>
                                                <p>공개</p>
                                            </td>
                                        </tr>
                                        <tr class="view_item">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td colspan="2">
                                                <div class="table_view">
                                                    <p class="txt">게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!
                                                    </p>
                                                    <a href="javascript:;" class="view_btn">일정 수정</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <!-- 한세트 -->

                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>2</td>
                                            <td>2021.08.06</td>
                                            <td class="emp">공동생활</td>
                                            <td>
                                               <div class="tb_txt_box">
                                                    <a href="javascript:;" class="txt">
                                                        단지 엘레베이터 점검
                                                    </a>
                                               </div>
                                            </td>
                                            <td>
                                                <p class="status_after">비공개</p>
                                            </td>
                                        </tr>
                                        <tr class="view_item">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td colspan="2">
                                                <div class="table_view">
                                                    <p class="txt">게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!
                                                    </p>
                                                    <a href="javascript:;" class="view_btn">일정 수정</a>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>3</td>
                                            <td>2021.08.06</td>
                                            <td class="emp">공동생활</td>
                                            <td>
                                               <div class="tb_txt_box">
                                                    <a href="javascript:;" class="txt">
                                                        단지 엘레베이터 점검
                                                    </a>
                                               </div>
                                            </td>
                                            <td>
                                                <p class="status_before">공개</p>
                                            </td>
                                        </tr>
                                        <tr class="view_item">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td colspan="2">
                                                <div class="table_view">
                                                    <p class="txt">게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!
                                                    </p>
                                                    <a href="javascript:;" class="view_btn">일정 수정</a>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>4</td>
                                            <td>2021.08.06</td>
                                            <td class="emp">공동생활</td>
                                            <td>
                                               <div class="tb_txt_box">
                                                    <a href="javascript:;" class="txt">
                                                        단지 엘레베이터 점검
                                                    </a>
                                               </div>
                                            </td>
                                            <td>
                                                <p class="status_before">공개</p>
                                            </td>
                                        </tr>
                                        <tr class="view_item">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td colspan="2">
                                                <div class="table_view">
                                                    <p class="txt">게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!
                                                    </p>
                                                    <a href="javascript:;" class="view_btn">일정 수정</a>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>5</td>
                                            <td>2021.08.06</td>
                                            <td class="emp">공동생활</td>
                                            <td>
                                               <div class="tb_txt_box">
                                                    <a href="javascript:;" class="txt">
                                                        단지 엘레베이터 점검
                                                    </a>
                                               </div>
                                            </td>
                                            <td>
                                                <p class="status_before">공개</p>
                                            </td>
                                        </tr>
                                        <tr class="view_item">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td colspan="2">
                                                <div class="table_view">
                                                    <p class="txt">게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!
                                                    </p>
                                                    <a href="javascript:;" class="view_btn">일정 수정</a>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>6</td>
                                            <td>2021.08.06</td>
                                            <td class="emp">공동생활</td>
                                            <td>
                                               <div class="tb_txt_box">
                                                    <a href="javascript:;" class="txt">
                                                        단지 엘레베이터 점검
                                                    </a>
                                               </div>
                                            </td>
                                            <td>
                                                <p class="status_before">공개</p>
                                            </td>
                                        </tr>
                                        <tr class="view_item">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td colspan="2">
                                                <div class="table_view">
                                                    <p class="txt">게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!
                                                    </p>
                                                    <a href="javascript:;" class="view_btn">일정 수정</a>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>7</td>
                                            <td>2021.08.06</td>
                                            <td class="emp">공동생활</td>
                                            <td>
                                               <div class="tb_txt_box">
                                                    <a href="javascript:;" class="txt">
                                                        단지 엘레베이터 점검
                                                    </a>
                                               </div>
                                            </td>
                                            <td>
                                                <p class="status_before">공개</p>
                                            </td>
                                        </tr>
                                        <tr class="view_item">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td colspan="2">
                                                <div class="table_view">
                                                    <p class="txt">게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!
                                                    </p>
                                                    <a href="javascript:;" class="view_btn">일정 수정</a>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>8</td>
                                            <td>2021.08.06</td>
                                            <td class="emp">공동생활</td>
                                            <td>
                                               <div class="tb_txt_box">
                                                    <a href="javascript:;" class="txt">
                                                        단지 엘레베이터 점검
                                                    </a>
                                               </div>
                                            </td>
                                            <td>
                                                <p class="status_before">공개</p>
                                            </td>
                                        </tr>
                                        <tr class="view_item">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td colspan="2">
                                                <div class="table_view">
                                                    <p class="txt">게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!
                                                    </p>
                                                    <a href="javascript:;" class="view_btn">일정 수정</a>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>9</td>
                                            <td>2021.08.06</td>
                                            <td class="emp">공동생활</td>
                                            <td>
                                               <div class="tb_txt_box">
                                                    <a href="javascript:;" class="txt">
                                                        단지 엘레베이터 점검
                                                    </a>
                                               </div>
                                            </td>
                                            <td>
                                                <p class="status_before">공개</p>
                                            </td>
                                        </tr>
                                        <tr class="view_item">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td colspan="2">
                                                <div class="table_view">
                                                    <p class="txt">게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!
                                                    </p>
                                                    <a href="javascript:;" class="view_btn">일정 수정</a>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>10</td>
                                            <td>2021.08.06</td>
                                            <td class="emp">공동생활</td>
                                            <td>
                                               <div class="tb_txt_box">
                                                    <a href="javascript:;" class="txt">
                                                        단지 엘레베이터 점검
                                                    </a>
                                               </div>
                                            </td>
                                            <td>
                                                <p class="status_before">공개</p>
                                            </td>
                                        </tr>
                                        <tr class="view_item">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td colspan="2">
                                                <div class="table_view">
                                                    <p class="txt">게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!게시글의 상세게시글이나오는 구간입니다.!
                                                    </p>
                                                    <a href="javascript:;" class="view_btn">일정 수정</a>
                                                </div>
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
            <h3 class="tit">주요 일정 삭제</h3>
            <p class="txt">총 2건의 일정을 삭제하시겠습니까?</p>
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
            <h3 class="tit">주요 일정 삭제</h3>
            <p class="txt">총 2건의 일정이 삭제되었습니다.</p>
            <div class="btn_box">
                <a href="javascript:;" class="ok">확인</a>
            </div>
        </div>
    </div>
    <!-- 팝업영역 -->
    <script>
        $(function(){
            $('.tb_txt_box .txt').click(function(){
                $(this).parents('tr').toggleClass('on');
                $(this).parents('tr').next('.view_item').find('.table_view').stop().slideToggle(300);

            })
        })

    </script>
</body>
</html>