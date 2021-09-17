<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="application"/>
  <%-- header  --%>
  <header id="header">
       <div class="header">
           <h1>
               <a href="${contextPath}/admin/">
                   <span class="ir_so">ONE LIFE LOGO</span>
               </a>
           </h1>
           <div>
               <p><span>관리자</span>님 반갑습니다.</p>
               <%-- 세팅버튼클릭시 개인정보 수정 팝업창 열림 --%>
               <a href="javascript:popShow('userInfo');" class="setting"></a>
               <%-- 로그아웃시 사용자 로그인페이지로 이동 --%>
               <a href="javascript:;" class="logout"></a>
           </div>
       </div>
   </header>
   
   <!-- 개인정보 변경팝업 -->
   <%-- 관리자 페이지에서 톱니바퀴 아이콘 클릭시 개인정보 변경할수있는 팝업창 열림 --%>
   <div class="popup_wrap" id="userInfo">
      <div class="dim"></div>
      <div class="item">
         <div class="new_admin">
             <div class="title">개인정보 변경</div>
             <div class="new_item">
                 <label for="">계정</label>
                 <input type="text" name="" id="" disabled>
             </div>
             <div class="new_item">
                  <label for="">현재 비밀번호</label>
                  <input type="password" name="" id="">
              </div>
              <div class="new_item">
                  <label for="">변경 비밀번호</label>
                  <input type="password" name="" id="">
              </div>
              <div class="new_item">
                  <label for="">휴대폰 번호</label>
                  <input type="text" name="" id="">
              </div>
         </div>
         <div class="new_btn_box">
            <a href="javascript:;">등록하기</a>
            <a href="javascript:popHide('userInfo');">취소하기</a>
         </div>
        </div>
    </div>
    
    <script>	
 	// 공통 팝업창 열기
 	function popShow(tag){
    	document.querySelector('#' + tag).classList.add('pop_on');
    }
 	
 	// 공통 팝업창 닫기
 	function popHide(tag){
 		if(confirm("팝업창을 닫으시겠습니까?")){
 			document.querySelector('#' + tag).classList.remove('pop_on');
 		}
    }
    </script>
    
    