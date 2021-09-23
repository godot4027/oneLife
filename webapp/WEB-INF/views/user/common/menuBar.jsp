<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.member.model.vo.Member" import="admin.member.model.vo.Info_manager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- contextPath --%>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath }" scope="application"/>
<% 
	// session 객체에 담긴 loginUser 정보를 변수에 담아두기
	Member loginUser = (Member)session.getAttribute("loginUser");
    Info_manager loginUser_man = (Info_manager)session.getAttribute("loginUser_man");

%>
<% if(session.getAttribute("msg") != null) { %>
<script>
	alert('<%= session.getAttribute("msg")%>');
</script>
<% 
	session.removeAttribute("msg");
	} 
%> 
<header id="header">
    <div class="header">
        <h1 class=logo>
            <a href="javascript:;"><span class="ir_so">로고</span></a>
        </h1>
        <div class="top_wrap">
        <% if(loginUser == null) { %>
        	<ul>
        		<li><a href="<%= request.getContextPath() %>">로그인</a></li>
                <li><a href="<%= request.getContextPath() %>/userAgree">회원가입</a></li>
        	</ul>
        <% } else { %>
            <p class="login_status">${ loginUser.getR_DONG() }동 ${ loginUser.getR_HO() }호 <span>${ loginUser.getR_NAME() }</span>님 반갑습니다.</p>
            <ul>
                <li><a href="<%= request.getContextPath() %>/userModify">회원정보</a></li>
                <li><a href="<%= request.getContextPath() %>/userLogout">로그아웃</a></li>
            </ul>
         <% } %>
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
                    <li><a href="${contextPath}/notice/list">공지사항</a></li>
                    <li><a href="${contextPath}/board/list">도란도란</a></li>
                    <li><a href="${contextPath}/vote/list">투표하기</a></li>
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
                    <li><a href="${contextPath}/complaint/list">아파트 민원</a></li>
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
