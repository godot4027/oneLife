<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- contextPath --%>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>

<header id="header">
    <div class="header">
        <h1 class=logo>
            <a href="javascript:;"><span class="ir_so">로고</span></a>
        </h1>
        <div class="top_wrap">
            <p class="login_status">201동 103호 <span>홍길동</span>님 반갑습니다.</p>
            <ul>
                <li><a href="javascript:;">회원정보</a></li>
                <li><a href="javascript:;">로그아웃</a></li>
            </ul>
        </div>
        <nav class="nav_wrap">
            <ul>
                <li><a href="javascript:;">아파트 소개</a></li>
                <li><a href="javascript:;">아파트 소식</a></li>
                <li><a href="javascript:;">부대시설</a></li>
                <li><a href="javascript:;">방문차량</a></li>
                <li><a href="javascript:;">아파트 민원</a></li>
            </ul>
            <div class="nav_inner_wrap">
                <ul class="inner_item">
                    <li><a href="javascript:;">아파트 소개</a></li>
                </ul>
                <ul class="inner_item">
                    <li><a href="javascript:;">공지사항</a></li>
                    <li><a href="javascript:;">도란도란</a></li>
                    <li><a href="javascript:;">투표하기</a></li>
                    <li><a href="javascript:;">주요일정</a></li>
                </ul>
                <ul class="inner_item">
                    <li><a href="javascript:;">독서실 예약</a></li>
                    <li><a href="javascript:;">멀티 코트장 예약</a></li>
                </ul>
                <ul class="inner_item">
                    <li><a href="javascript:;">방문차량 등록</a></li>
                    <li><a href="javascript:;">방문예약 목록</a></li>
                </ul>
                <ul class="inner_item">
                    <li><a href="javascript:;">아파트 민원</a></li>
                </ul>
            </div>
        </nav>
    </div>
</header>

<!-- 메뉴 슬라이드 스크립트 -->
<script>
    $(function(){
         $('.header').mouseenter(function(){
             $('.header').addClass('on');
             $('.header .nav_wrap .nav_inner_wrap').stop().slideDown(300);
         })

         $('.header').mouseleave(function(){
             $('.header').removeClass('on');
             $('.header .nav_wrap .nav_inner_wrap').stop().slideUp(300);
         })


    })
</script>