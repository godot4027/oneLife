<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아파트민원 완료페이지</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
		<p></p><span>> 아파트민원</span>
		<h1>아파트 민원</h1>
		<div class="bottom_wrap2">
		</div>
	</div>
		<div class="wrap">
			<div class="notice_area">
				<div class="notice_title">
					<h1>간편하게 <b>민원 접수하고<br>처리 결과</b>를 전해 드립니다.</h1>
				</div>
				<div class="notice_content">
					<div class="subject"></div>
					<div class="notice_detail">
                        <img src="/oneLife/resources/user/images/Group 77.png">
                        <h2>등록이 완료되었습니다.</h2>
                        <div class="btn_area re">
                            <button type="button" id="re_btn" onclick="detailView( nno );">작성한 글 확인</button>
                            <button type="button" id="re_btn" onclick="location.href='${ contextPath }/notice/list'">목록보기</button>
                        </div>
                    </div>
				</div>
				</div>
			
			</div>
		</div>
		
	<%-- 공통 footer --%>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
        
        <script>
            function detailView(nno){
                // nno를 쿼리스트링에 데이터로 넘김
                location.href='${contextPath}/notice/detail?nno='+nno;
	 	    }
        </script>
	
</body>
</html>