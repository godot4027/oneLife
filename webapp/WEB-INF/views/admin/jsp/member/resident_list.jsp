<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>oneLife << 입주자명부 목록</title>

<%-- css/js 파일 --%>
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
                        <h2 class="sub_tit">입주자 명부</h2>
                        <div class="search_box">
                            <div class="search_top resident clearfix">
                                <div class="items clearfix">
                                    <label for="reser_fac">동</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">전체</option>
                                            <option value="">101</option>
                                            <option value="">102</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="items clearfix">
                                    <label for="reser_fac">호</label>
                                    <input type="text" name="" id="" class="input">
                                </div>
                                <div class="items clearfix">
                                    <label for="reser_fac">거주 타입</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">전체</option>
                                            <option value="">세대주</option>
                                            <option value="">세대원</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="items clearfix">
                                    <label for="reser_fac">가입 여부</label>
                                    <div class="select">
                                        <select name="" id="reser_fac">
                                            <option value="">전체</option>
                                            <option value="">가입</option>
                                            <option value="">미가입</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="search_bot resident clearfix">
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
                            <div class="table_wrap resident_list">
                                <table class="table">
                                    <colgroup>
                                        <col width="auto">
                                        <col width="auto">
                                        <col width="auto">
                                        <col width="auto">
                                        <col width="auto">
                                        <col width="auto">
                                        <col width="auto">
                                        <col width="auto">
                                    </colgroup>
                                    <caption class="ir_so">입주자 명부 목록</caption>
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>동</th>
                                            <th>호수</th>
                                            <th>이름</th>
                                            <th>이메일</th>
                                            <th>거주타입</th>
                                            <th>가입여부</th>
                                            <th>변경</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td rowspan="10" class="dong">101</td>
                                            <td rowspan="3" class="ho">101</td>
                                            <td>홍길동</td>
                                            <td>hong@naver.com</td>
                                            <td>
                                                <p class="tag type01">세대주</p>
                                            </td>
                                            <td>
                                                <p class="tag type01">가입</p>
                                            </td>
                                            <td class="modify" rowspan="3">
                                                <a href="${contextPath}/admin/member/view" class="tag">변경</a>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>홍길동</td>
                                            <td>hong@naver.com</td>
                                            <td>
                                                <p class="tag type02">세대원</p>
                                            </td>
                                            <td>
                                                <p class="tag type03">미가입</p>
                                            </td> 
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>홍길동</td>
                                            <td>hong@naver.com</td>
                                            <td>
                                                <p class="tag type02">세대원</p>
                                            </td>
                                            <td>
                                                <p class="tag type01">가입</p>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>4</td>
                                            <td rowspan="3" class="ho">102</td>
                                            <td>홍길동</td>
                                            <td>hong@naver.com</td>
                                            <td>
                                                <p class="tag type01">세대주</p>
                                            </td>
                                            <td>
                                                <p class="tag type01">가입</p>
                                            </td>
                                            <td rowspan="3" class="modify">
                                                <a href="${contextPath}/admin/member/view" class="tag">변경</a>
                                             </td>
                                        </tr>
                                    
                                        <tr>
                                            <td>5</td>
                                            <td>홍길동</td>
                                            <td>hong@naver.com</td>
                                            <td>
                                                <p class="tag type02">세대원</p>
                                            </td>
                                            <td>
                                                <p class="tag type01">가입</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>홍길동</td>
                                            <td>hong@naver.com</td>
                                            <td>
                                                <p class="tag type02">세대원</p>
                                            </td>
                                            <td>
                                                <p class="tag type01">가입</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td rowspan="3" class="ho">103</td>
                                            <td>홍길동</td>
                                            <td>hong@naver.com</td>
                                            <td>
                                                <p class="tag type01">세대주</p>
                                            </td>
                                            <td>
                                                <p class="tag type01">가입</p>
                                            </td>
                                            <td rowspan="3" class="modify">
                                               <a href="${contextPath}/admin/member/view" class="tag">변경</a>
                                             </td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>홍길동</td>
                                            <td>hong@naver.com</td>
                                            <td>
                                                <p class="tag type02">세대원</p>
                                            </td>
                                            <td>
                                                <p class="tag type01">가입</p>
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>홍길동</td>
                                            <td>hong@naver.com</td>
                                            <td>
                                                <p class="tag type02">세대원</p>
                                            </td>
                                            <td>
                                                <p class="tag type01">가입</p>
                                            </td>
                                            
                                        </tr>
                                        <tr class="disabled">
                                            <td>10</td>
                                            <td class="ho">104</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td class="modify">-</td>
                                        </tr>
                                    </tbody>
                                </table>
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
     <!-- 삭제완료 팝업 -->
     <div class="popup_wrap" style="display:none;">
        <div class="dim"></div>
        <div class="item">
            <h3 class="tit">입주자 명부 변경</h3>
            <p class="txt">입주자 명부가 정상적으로 변경되었습니다.</p>
            <div class="btn_box">
                <a href="javascript:;" class="ok">확인</a>
            </div>
        </div>
    </div>
    <!-- 팝업영역 -->
</body>
</html>