<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아파트민원 게시판</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>
</head>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
		<p></p><span>> 아파트 민원</span>
		<h1>아파트 민원</h1>
		<div class="bottom_wrap2">
		</div>
	</div>
		<div class="wrap">
			<div class="com_detail_area">
				<div class="com_detail_title">
					<div class="subject">
						<p>현관문이 고장이에요</p>
						<img src="/oneLife/resources/user/images/people.png">
						<span class="name">홍길동</span> 
						<span class="dong">201동 103호</span>
						<span class="date">2021.08.20 12:00</span> 
					</div>
					<div class="btn_area">
						<button type="button" onclick="updateBoardView();">수정하기</button><span>|</span>
						<button type="button" onclick="deleteBoard();">삭제하기</button>
                        <!-- 관리자는 삭제하기 버튼만 보여짐 -->
                        <button type="button" onclick="deleteBoard();">삭제하기</button>
					</div>
				</div>
				<div class="com_detail_content">
					<pre class="com_detail_cell">민원내용
                    </pre>
				</div>
				<h4>답글</h4>
				<div class="reply_area">
                    <div class="reply_list">
                        <ul class="reply_ul">
                            <img src="/oneLife/resources/user/images/people2.png">
                            <li class="rwriter">관리자</li>
                            <li class="rcontent">내용입니다.</li>
                            <li class="rdate">2021.09.13 13:00</li>
                        </ul>
                        <div class="reply_btn_area type02">
                            <button type="button" onclick="updateBoardView();">수정하기</button><span>|</span>
                            <button type="button" onclick="deleteBoard();">삭제하기</button>
                        </div>
					</div>
                    

                    <!-- 관리자만 댓글 작성 가능 -->
					<div class="reply_write">
						<textarea class="reply_content" placeholder="댓글을 작성해 주세요" onfocus="this.placeholder=''" onblur="this.placeholder='댓글을 작성해 주세요'"  maxlength="600"></textarea>
						<span id="counter">0/ 600</span>
                        <button type="button" onclick="addReply();">등록</button>
					</div>
				</div>
			</div>
			
				<div class="btn_area">
					<button type="button" id="btn2" onclick="location.href='${contextPath}/board/list'">목록</button>
				</div>
			</div>	
		</div>
		
	<%-- 공통 footer --%>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
	
        <script>
        $(document).ready(function() {
            $('.reply_content').on('keyup', function() {
                $('#counter').html($(this).val().length+"/ 600");
        
                if($(this).val().length > 600) {
                    alert("최대 600자까지 입력 가능합니다.");
                    $(this).val($(this).val().substring(0, 600));
                    $('#counter').html("600 / 600");
                }
            });
        });

        function updateBoardView(){
	 			document.forms.boardForm.action = "${contextPath}/board/updateView";
	 			document.forms.boardForm.submit();
	 		}

        function deleteBoard() {
            if (confirm('게시글을 삭제 하시겠습니까?')) {
                document.forms.boardForm.action = "${contextPath}/board/delete";
		 		document.forms.boardForm.submit();
            }
        }

        </script>
	
</body>
</html>