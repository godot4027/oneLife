<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 게시글</title>
<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

</head>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
		<p></p><span>> 아파트소식 > 도란도란</span>
		<h1>이웃끼리 도란도란</h1>
		<div class="bottom_wrap2">
		</div>
	</div>
		<div class="wrap">
			<div class="board_detail_area">
				<div class="board_detail_title">
					<div class="subject">
						<p>안녕하세요 반갑습니다!</p>
						<img src="/oneLife/resources/user/images/people.png">
						<span class="name">홍길동</span> 
						<span class="date">2021.08.20 12:00</span> 
                        <span class="count">조회</span>
                        <span class="count">11</span>
					</div>
                    <form method="GET">
					<div class="btn_area">
						<img class="comm_img" src="/oneLife/resources/user/images/message.png">
                        <span class="comment">댓글</span>
                        <span class="comment">4</span>
						<button type="button" onclick="dis()"><img src="/oneLife/resources/user/images/Icon button.png"></button>
                        <div class="dis_aera">
                        <!--작성자가 아닐시 신고 버튼 -->
                        <div id='dis'><input type="button" class="dis_btn" value="신고" onclick="showPopup();"></div>
                        <!-- 작성자 일시 -->
                        <div id='dis'>
                            <input type="button" class="dis_btn" value="수정">
                            <input type="button" class="dis_btn" value="삭제" onclick="deleteBoard();">
                        </div>
                        </div>
					</div>
                    </form>
				</div>
				<div class="board_detail_content">
					<pre class="board_detail_cell">내용
                    </pre>
				</div>
                <div class="like_area1">
                    <ul>
                        <li class="like_img"><img src="/oneLife/resources/user/images/like.png"></li>
                        <li class="like">좋아요</li>
                        <li class="like">1 </li>
                        <li class="comm_img"><img src="/oneLife/resources/user/images/message.png"></li>
                        <li class="comment">댓글</li>
                        <li class="comment">1</li>
                    </ul>
                </div>
                <form method="POST">
				<div class="reply_area">
                    <p>댓글</p>
                    <div class="reply_list">
                        <ul class="reply_ul">
                            <img src="/oneLife/resources/user/images/people3.png">
                            <li class="rwriter">주민1</li>
                            <li class="rcontent">안녕하세요</li>
                            <li class="rdate">2021.09.13 13:00</li>
                        </ul>
                        <div class="reply_btn_area">
                            <button type="button" onclick="updateBoardView();">답글쓰기</button>
                            <button type="button" id="reply_btn" onclick="reply_dis()"><img src="/oneLife/resources/user/images/Icon button.png"></button>
                            <div class="dis_aera">
                            <!--작성자가 아닐시 신고 버튼 -->
                            <!-- <div id='reply_dis'><input type="button" class="dis_btn" value="신고" onclick="showPopup();"></div> -->
                            <!-- 작성자 일시 -->
                            <div id='reply_dis'>
                                <input type="button" class="dis_btn" value="수정" onclick="updateBoardView();">
                                <input type="button" class="dis_btn" value="삭제" onclick="deleteBoard();">
                            </div>
                            </div>
                        </div>
					</div>
					<div class="reply_write">
						<textarea class="reply_content" placeholder="도란도란은 우리가 함께 만들어가는 소중한 공간입니다. 댓글 작성 시 타인에 대한 배려와 책임을 담아주세요." onfocus="this.placeholder=''" onblur="this.placeholder='도란도란은 우리가 함께 만들어가는 소중한 공간입니다. 댓글 작성 시 타인에 대한 배려와 책임을 담아주세요.'"  maxlength="600"></textarea>
						<span id="counter">0/ 600</span>
                        <button type="button" onclick="addReply();" class="reply_btn2">등록</button>
					</div>
				</div>
                </form>	
			</div>
			
				<div class="btn_area">
					<button type="button" id="btn2" onclick="location.href='${contextPath}/board/list'">목록</button>
				</div>
			</div>	
		</div>
		
		<%-- 공통 footer --%>
		<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>

        <!-- 댓글 -->
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

        <!-- 작은 창 -->
        <script>
            function dis(){
                if($('#dis').css('display') == 'none'){
                $('#dis').show();
                    }else{
                    $('#dis').hide();
                }
            }  
            function reply_dis(){
                if($('#reply_dis').css('display') == 'none'){
                $('#reply_dis').show();
                    }else{
                    $('#reply_dis').hide();
                }
            }  
            // 신고 팝업창
            function showPopup(){
                window.open("popup.html", "신고 팝업창", "width=500, height=400, left=800, top=300"); 
            }  
        </script>
	
</body>
</html>