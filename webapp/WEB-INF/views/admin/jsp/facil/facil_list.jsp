<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        
            <section id="content">
                <div class="content">
                    <div class="list_wrap">
                        <h2 class="sub_tit">부대시설 예약관리</h2>
                        <form action="${contextPath}/admin/facil/list">
	                        <div class="search_box">
	                            <div class="search_top clearfix">
	                                <div class="items clearfix">
	                                    <label for="reser_fac">예약시설</label>
	                                    <div class="select">
	                                        <select name="facilName" id="reser_fac">
	                                            <option value="all">전체</option>
	                                            <option value="독서실">독서실</option>
	                                            <option value="멀티코트장">멀티코트장</option>
	                                        </select>
	                                    </div>
	                                </div>
	                                <div class="items clearfix">
	                                    <label for="reser_fac">예약타입</label>
	                                    <div class="select">
	                                        <select name="facilType" id="reser_fac">
	                                            <option value="all">전체</option>
	                                            <option value="일일권">일일권</option>
	                                            <option value="A">A</option>  
	                                            <option value="B">B</option>  
	                                            <option value="C">C</option>  
	                                        </select>
	                                    </div>
	                                </div>
	                                <div class="items clearfix">
	                                    <label for="reser_fac">예약상태</label>
	                                    <div class="select">
	                                        <select name="facilStatus" id="reser_fac">
	                                            <option value="all">전체</option>
	                                            <option value="Y">예약취소</option>
	                                            <option value="before">사용전</option>
	                                            <option value="ing">사용중</option>
	                                            <option value="after">사용완료</option>
	                                        </select>
	                                    </div>
	                                </div>
	                                <div class="items clearfix">
	                                    <label for="">예약일자</label>
	                                    <div class="calendar clearfix">
	                                        <input type="text" name="facilDay" id="" class="cal" readonly>
	                                        <div class="checkbox">
												<input type="checkbox" name="allDay" id="allDay" checked>
												<label for="allDay">전체조회</label>
											</div>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="search_bot clearfix">
	                                <div class="items clearfix">
	                                    <label for="">검색조건</label>
	                                    <div class="select">
	                                        <select name="searchName" id="reser_fac">
	                                            <option value="id">아이디</option>
	                                            <option value="name">이름</option>
	                                            <option value="phone">핸드폰번호</option>
	                                        </select>
	                                    </div>
	                                    <input type="text" class="input" name="searchValue">
	                                    <button type="submit" class="btn">검색</button>
	                                </div>
	                            </div>
	                        </div>
						</form>

                        <div class="list_content">
                            <div class="table_wrap">
                                <table class="table">
                                    <colgroup>
                                        <col width="60px">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="115px">
                                        <col width="20%">
                                        <col width="20%">
                                        <col width="20%">
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
                                            <th>예약 시작시간</th>
                                            <th>예약 마감시간</th>
                                            <th>예약 상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    	<c:forEach var="f" items="${fList}">
                                    	<tr>
                                            <td>
                                                <div class="checkbox">
                                                    <input type="checkbox" name="facilCheck" id="facil1">
                                                    <label for="facil1"></label>
                                                </div>
                                            </td>
                                            <td>${f.fcNo}</td>
                                            <td>${f.fcName}</td>
                                            <td>${f.fcSeatType}</td>
                                            <td>${f.uId}</td>
                                            <td>${f.rName}</td>
                                            <td>${f.uPhone}</td>
                                            <td>
                                            	<fmt:formatDate value="${f.faDate}" pattern="yyyy년 MM월 dd일 HH시mm분"/>
                                            </td>
                                            <td>
                                            	<fmt:formatDate value="${f.fcStart}" pattern="yyyy년 MM월 dd일 HH시mm분"/>
                                            </td>
                                            <td>
                                            	<fmt:formatDate value="${f.fcEnd}" pattern="yyyy년 MM월 dd일 HH시mm분"/>
                                            </td>
                                            <td>
                                                <p class="status_before">사용전</p>
                                            </td>
                                        </tr>
                                    	</c:forEach>
                                        
                                    </tbody>
                                </table>
                            </div>
                            <div class="btn_box">
                                <a href="javascript:;" class="remove">삭제</a>
                            </div>
                            
                            <%-- 검색결과에대한 파라미터값 저장 --%>
                          	<c:if test="${!empty param.managerListSearch && !empty param.managerListValue}">
                          		<c:set var="searchParam" value="&managerListSearch=${param.managerListSearch}&managerListValue=${param.managerListValue}"/>
                          	</c:if>
                          	<jsp:include page="/WEB-INF/views/admin/common/paging.jsp"	flush="false">
								<jsp:param name="listSize" value="${fList.size()}" />
								<jsp:param name="piPage" value="${pi.page}" />
								<jsp:param name="startPage" value="${pi.startPage}" />
								<jsp:param name="endPage" value="${pi.endPage}" />
								<jsp:param name="maxPage" value="${pi.maxPage}" />
								<jsp:param name="pageUrl"
									value="${pageContext.request.requestURL}" />
								<jsp:param name="search" value="${searchParam}" />
							</jsp:include>
                            
                            
                        </div>
                    </div>
                </div>
            </section>
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