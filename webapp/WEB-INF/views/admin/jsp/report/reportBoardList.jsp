<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi" />
    <title>신고내역 목록</title>

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
                        <h2 class="sub_tit">신고 내역 관리</h2>
                        <div class="search_box">
                            <div class="search_top report clearfix">
                                <div class="items clearfix">
                                    <label for="reser_fac">카테고리</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">전체</option>
                                            <option value="">도란도란</option>
                                            <option value="">자유게시판</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="items clearfix">
                                    <label for="reser_fac">신고누적</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">전체</option>
                                            <option value="">0~4</option>
                                            <option value="">5이상</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="search_bot report clearfix">
                                <div class="items clearfix">
                                    <label for="">검색조건</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">아이디</option>
                                        </select>
                                    </div>
                                    <input type="text" class="input">
                                    <button type="button" class="btn">검색</button>
                                </div>
                               
                            </div>
                        </div>

                        <div class="list_content">
                            <div class="report_wrap">
                                <a href="${contextPath}/admin/report/bList" class="on">게시글</a>
                                <a href="${contextPath}/admin/report/rList">댓글</a>
                            </div>
                            <div class="table_wrap">
                                <table class="table">
                                    <colgroup>
                                        <col width="30px">
                                        <col width="100px">
                                        <col width="100px">
                                        <col width="auto">
                                        <col width="120px">
                                        <col width="120px">
                                        <col width="80px">
                                        <col width="80px">
                                        
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
                                            <th>카테고리</th>
                                            <th>게시글 번호</th>
                                            <th>게시글 제목</th>
                                            <th>작성자(닉네임)</th>
                                            <th>작성일</th>
                                            <th>조회수</th>
                                            <th>신고누적</th>
                                        </tr>
                                    </thead>
                                    <!-- 게시글일시 -->
                                    <tbody>
                                        <tr class="warning">
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                자유게시판
                                            </td>
                                            <td>
                                                23
                                            </td>
                                            <td>
                                                <a href="javascript:;" class="report_txt">게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.</a>
                                            </td>
                                            <td>
                                                <p class="status_after">홍길동</p> 
                                            </td>
                                            <td>
                                                <p class="status_after">2021.08.29 13:25</p>
                                            </td>
                                            <td>
                                                <p class="status_after">12</p>
                                            </td>
                                            <td>
                                                <p class="status_after">2</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                자유게시판
                                            </td>
                                            <td>
                                                23
                                            </td>
                                            <td>
                                                <a href="javascript:;" class="report_txt">게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.</a>
                                            </td>
                                            <td>
                                                <p class="status_after">홍길동</p> 
                                            </td>
                                            <td>
                                                <p class="status_after">2021.08.29 13:25</p>
                                            </td>
                                            <td>
                                                <p class="status_after">12</p>
                                            </td>
                                            <td>
                                                <p class="status_after">2</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                자유게시판
                                            </td>
                                            <td>
                                                23
                                            </td>
                                            <td>
                                                <a href="javascript:;" class="report_txt">게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.</a>
                                            </td>
                                            <td>
                                                <p class="status_after">홍길동</p> 
                                            </td>
                                            <td>
                                                <p class="status_after">2021.08.29 13:25</p>
                                            </td>
                                            <td>
                                                <p class="status_after">12</p>
                                            </td>
                                            <td>
                                                <p class="status_after">2</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                자유게시판
                                            </td>
                                            <td>
                                                23
                                            </td>
                                            <td>
                                                <a href="javascript:;" class="report_txt">게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.</a>
                                            </td>
                                            <td>
                                                <p class="status_after">홍길동</p> 
                                            </td>
                                            <td>
                                                <p class="status_after">2021.08.29 13:25</p>
                                            </td>
                                            <td>
                                                <p class="status_after">12</p>
                                            </td>
                                            <td>
                                                <p class="status_after">2</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                자유게시판
                                            </td>
                                            <td>
                                                23
                                            </td>
                                            <td>
                                                <a href="javascript:;" class="report_txt">게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.</a>
                                            </td>
                                            <td>
                                                <p class="status_after">홍길동</p> 
                                            </td>
                                            <td>
                                                <p class="status_after">2021.08.29 13:25</p>
                                            </td>
                                            <td>
                                                <p class="status_after">12</p>
                                            </td>
                                            <td>
                                                <p class="status_after">2</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                자유게시판
                                            </td>
                                            <td>
                                                23
                                            </td>
                                            <td>
                                                <a href="javascript:;" class="report_txt">게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.</a>
                                            </td>
                                            <td>
                                                <p class="status_after">홍길동</p> 
                                            </td>
                                            <td>
                                                <p class="status_after">2021.08.29 13:25</p>
                                            </td>
                                            <td>
                                                <p class="status_after">12</p>
                                            </td>
                                            <td>
                                                <p class="status_after">2</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                자유게시판
                                            </td>
                                            <td>
                                                23
                                            </td>
                                            <td>
                                                <a href="javascript:;" class="report_txt">게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.</a>
                                            </td>
                                            <td>
                                                <p class="status_after">홍길동</p> 
                                            </td>
                                            <td>
                                                <p class="status_after">2021.08.29 13:25</p>
                                            </td>
                                            <td>
                                                <p class="status_after">12</p>
                                            </td>
                                            <td>
                                                <p class="status_after">2</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                자유게시판
                                            </td>
                                            <td>
                                                23
                                            </td>
                                            <td>
                                                <a href="javascript:;" class="report_txt">게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.</a>
                                            </td>
                                            <td>
                                                <p class="status_after">홍길동</p> 
                                            </td>
                                            <td>
                                                <p class="status_after">2021.08.29 13:25</p>
                                            </td>
                                            <td>
                                                <p class="status_after">12</p>
                                            </td>
                                            <td>
                                                <p class="status_after">2</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                자유게시판
                                            </td>
                                            <td>
                                                23
                                            </td>
                                            <td>
                                                <a href="javascript:;" class="report_txt">게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.</a>
                                            </td>
                                            <td>
                                                <p class="status_after">홍길동</p> 
                                            </td>
                                            <td>
                                                <p class="status_after">2021.08.29 13:25</p>
                                            </td>
                                            <td>
                                                <p class="status_after">12</p>
                                            </td>
                                            <td>
                                                <p class="status_after">2</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>
                                                자유게시판
                                            </td>
                                            <td>
                                                23
                                            </td>
                                            <td>
                                                <a href="javascript:;" class="report_txt">게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.게시글 제목이 들어갑니다.</a>
                                            </td>
                                            <td>
                                                <p class="status_after">홍길동</p> 
                                            </td>
                                            <td>
                                                <p class="status_after">2021.08.29 13:25</p>
                                            </td>
                                            <td>
                                                <p class="status_after">12</p>
                                            </td>
                                            <td>
                                                <p class="status_after">2</p>
                                            </td>
                                        </tr>
                                    </tbody>
                                   <!-- 게시글 일시 -->
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