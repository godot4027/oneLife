<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.member.model.vo.Member" import="admin.member.model.vo.Info_manager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<% 
	// session 객체에 담긴 loginUser 정보를 변수에 담아두기
	Member loginUser = (Member)session.getAttribute("loginUser");
	Info_manager loginUser_man = (Info_manager)session.getAttribute("loginUser_man");
%>  
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인페이지</title>
	<%-- 공통 css/js --%>
    <jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>
</head>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>
<body class="main">
   <div id="wrap">
        <header id="header">
            <div class="header">
                <h1 class=logo>
                    <a href="${contextPath }/main"><span class="ir_so">로고</span></a>
                </h1>
                <div class="top_wrap">
                    <p class="login_status">201동 103호 <span>홍길동</span>님 반갑습니다.</p>
                    <ul>
                        <li><a href="javascript:;">회원정보</a></li>
                        <li><a href="javascript:;">로그아웃</a></li>
                    </ul>
                </div>
            </div>
        </header>
        <section id="main_container">
            <div class="main_container">
                <div class="items">
                    <h2>우리 아파트 이야기</h2>
                    <ul class="myApt">
                        <li><a href="${contextPath}/vote/list">투표</a></li>
                        <li><a href="${contextPath}/visitCar">방문차량</a></li>
                        <li><a href="${contextPath}/complaint/list">아파트 민원</a></li>
                        <li><a href="${contextPath}/board/list">도란도란</a></li>
                        <li><a href="javascript:;">부대시설 예약</a></li>
                        <li><a href="javascript:;">아파트 소개</a></li>
                    </ul>
                </div>
                <div class="items">
                    <h2><a href="${contextPath}/notice/list">공지사항</a></h2>
                    <div class="main_notice_wrap">
                        <ul class="main_notice_list notice_header">
                            <li class="title">제목</li>
                            <li class="writer">작성자</li>
                            <li class="date">작성일</li>
                        </ul>
                        <ul class="main_notice_list notice_body">
                            <li class="title">주요 소식 게시판 입니다.</li>
                            <li class="writer">운영자</li>
                            <li class="date">2021-08-20</li>
                        </ul>
                        <ul class="main_notice_list notice_body">
                            <li class="title">주요 소식 게시판 입니다.</li>
                            <li class="writer">운영자</li>
                            <li class="date">2021-08-20</li>
                        </ul>
                        <ul class="main_notice_list notice_body">
                            <li class="title">주요 소식 게시판 입니다.</li>
                            <li class="writer">운영자</li>
                            <li class="date">2021-08-20</li>
                        </ul>
                        <ul class="main_notice_list notice_body">
                            <li class="title">주요 소식 게시판 입니다.</li>
                            <li class="writer">운영자</li>
                            <li class="date">2021-08-20</li>
                        </ul>
                        <ul class="main_notice_list notice_body">
                            <li class="title">주요 소식 게시판 입니다.</li>
                            <li class="writer">운영자</li>
                            <li class="date">2021-08-20</li>
                        </ul>
                        <ul class="main_notice_list notice_body">
                            <li class="title">주요 소식 게시판 입니다.</li>
                            <li class="writer">운영자</li>
                            <li class="date">2021-08-20</li>
                        </ul>
                        <ul class="main_notice_list notice_body">
                            <li class="title">주요 소식 게시판 입니다.</li>
                            <li class="writer">운영자</li>
                            <li class="date">2021-08-20</li>
                        </ul>
                        <ul class="main_notice_list notice_body">
                            <li class="title">주요 소식 게시판 입니다.</li>
                            <li class="writer">운영자</li>
                            <li class="date">2021-08-20</li>
                        </ul>
                        <ul class="main_notice_list notice_body">
                            <li class="title">주요 소식 게시판 입니다.</li>
                            <li class="writer">운영자</li>
                            <li class="date">2021-08-20</li>
                        </ul>
                        <ul class="main_notice_list notice_body">
                            <li class="title">주요 소식 게시판 입니다.</li>
                            <li class="writer">운영자</li>
                            <li class="date">2021-08-20</li>
                        </ul>
                        <ul class="main_notice_list notice_body">
                            <li class="title">주요 소식 게시판 입니다.</li>
                            <li class="writer">운영자</li>
                            <li class="date">2021-08-20</li>
                        </ul>
                        <ul class="main_notice_list notice_body">
                            <li class="title">주요 소식 게시판 입니다.</li>
                            <li class="writer">운영자</li>
                            <li class="date">2021-08-20</li>
                        </ul>
                    </div>

                </div>
                <div class="items">
                    <h2>우리 아파트 주요 일정</h2>
                    <div class="main_calendar">
                        <div class="cal_head">
                            <a href="javascript:;">&lt;</a>
                            <p>2021.08</p>
                            <a href="javascript:;">&gt;</a>
                        </div>
                        <div class="cal_body">
                            <ul class="cal_week">
                                <li>일</li>
                                <li>월</li>
                                <li>화</li>
                                <li>수</li>
                                <li>목</li>
                                <li>금</li>
                                <li>토</li>
                            </ul>
                            <ul class="cal_day">
                              <li><a href="javascript:;">1</a></li>
                              <li><a href="javascript:;">2</a></li>
                              <li><a href="javascript:;">3</a></li>
                              <li><a href="javascript:;">4</a></li>
                              <li><a href="javascript:;">5</a></li>
                              <li class="on"><a href="javascript:;">6</a></li>
                              <li><a href="javascript:;">7</a></li>
                              <li><a href="javascript:;">8</a></li>
                              <li><a href="javascript:;">9</a></li>
                              <li><a href="javascript:;">10</a></li>
                              <li><a href="javascript:;">11</a></li>
                              <li><a href="javascript:;">12</a></li>
                              <li><a href="javascript:;">13</a></li>
                              <li><a href="javascript:;">14</a></li>
                              <li><a href="javascript:;">15</a></li>
                              <li><a href="javascript:;">16</a></li>
                              <li><a href="javascript:;">17</a></li>
                              <li><a href="javascript:;">18</a></li>
                              <li><a href="javascript:;">19</a></li>
                              <li><a href="javascript:;">20</a></li>
                              <li><a href="javascript:;">21</a></li>
                              <li><a href="javascript:;">22</a></li>
                              <li><a href="javascript:;">23</a></li>
                              <li><a href="javascript:;">24</a></li>
                              <li><a href="javascript:;">25</a></li>
                              <li><a href="javascript:;">26</a></li>
                              <li><a href="javascript:;">27</a></li>
                              <li><a href="javascript:;">28</a></li>
                              <li><a href="javascript:;">29</a></li>
                              <li><a href="javascript:;">30</a></li>
                              <li><a href="javascript:;">31</a></li>
                              <li class="hide"><a href="javascript:;">1</a></li>
                              <li class="hide"><a href="javascript:;">2</a></li>
                              <li class="hide"><a href="javascript:;">3</a></li>
                              <li class="hide"><a href="javascript:;">4</a></li>
                            </ul>

                            <p class="cal_status">
                                08.07 토요일
                            </p>
                        </div>

                        <ul class="cal_list">
                            <li>단지 엘레베이터 점검</li>
                            <li>단지 엘레베이터 점검</li>
                            <li>단지 엘레베이터 점검</li>
                            <li>단지 엘레베이터 점검</li>
                            <li>단지 엘레베이터 점검</li>
                            <li>단지 엘레베이터 점검</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
   </div>
</body>
</html>