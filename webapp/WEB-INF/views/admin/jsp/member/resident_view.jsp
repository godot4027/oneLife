<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi" />
    <title>입주자 명부 추가/수정</title>

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
                    <div class="view_wrap">
                        <h2 class="sub_tit">입주자 명부 변경</h2>
                        <form action="${contextPath}/" method="post" name="residentFrm">
	                        <div class="view_items resident">
	                            <dl class="items">
	                                <dt>동/호</dt>
	                                <dd class="type01">
	                                    <div class="input">
	                                        <input type="text" name="" id="" disabled>
	                                    </div> 동
	                                    <div class="input">
	                                        <input type="text" name="" id="" disabled>
	                                    </div> 호
	                                </dd>
	                            </dl>
	
	                            <dl class="items">
	                                <dt>세대원 정보</dt>
	                                <dd>    
	                                   <h4 class="tit">세대주</h4>
	                                   <div class="res_input">
	                                        <div class="res_box res_name">
	                                            <span>이름 : </span>
	                                            <input type="text" name="holderName" id="" class="input">
	                                        </div>
	                                        <div class="res_box res_mail">
	                                            <span>이메일 : </span>
	                                            <input type="text" name="holderEmail" id="" class="input">
	                                        </div>
	                                   </div>
	
	                                   <h4 class="tit">세대원 <a href="javascript:;" class="res_plus"></a></h4>
	                                   <div class="res_input">
	                                        <div class="res_box res_name">
	                                            <span>이름 : </span>
	                                            <input type="text" name="memberName" id="" class="input">
	                                        </div>
	                                        <div class="res_box res_mail">
	                                            <span>이메일 : </span>
	                                            <input type="text" name="memberEmail" id="" class="input">
	                                        </div>
	                                        <a href="javascript:;" class="res_minus"></a>
	                                   </div>
	                                  
	                                </dd>
	                            </dl>
	
	                        </div>
	
	                        <div class="view_btn">
	                            <a href="javascript:;" class="ok">변경하기</a>
	                            <a href="javascript:;">변경취소</a>
	                        </div>
                        </form>
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
        	// 세대원 input칸
        	let tag = '<div class="res_input">';
            tag += '	<div class="res_box res_name">';
            tag += '	<span>이름 : </span>';
            tag += '	<input type="text" name="" id="" class="input">';
        	tag += '</div>';
        	tag += '<div class="res_box res_mail">';
            tag += '	<span>이메일 : </span>';
            tag += '	<input type="text" name="" id="" class="input">';
        	tag += '	</div>';
        	tag += '	<a href="javascript:;" class="res_minus"></a>';
   			tag += '</div>';
   			
            $(document).on("click", ".res_plus", function(){
	       		$('.view_wrap .view_items .items:last-child dd').append(tag);
            });
            
            $(document).on("click", ".res_minus", function(){
            	$(this).parents('.res_input').remove();
            });
        })
        
        

    </script>

</body>

</html>