<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표하기 상세페이지</title>	
     <%-- 공통css/js --%>
	<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>
</head>
<body>
	<%-- 공통 menuBar.jsp --%>
	<jsp:include page="/WEB-INF/views/user/common/menuBar.jsp"></jsp:include>
	
	<div class="bottom_wrap1">
		<p></p><span>> 아파트소식 > 투표하기</span>
		<h1>투표하기</h1>
		<div class="bottom_wrap2">
		</div>
	</div>
		<div class="wrap">
			<div class="vote_area">
				<div class="vote_title">
					<h1>비대면으로 안전하게, <b>언제 어디서든<br>투표</b>를 진행해보세요!</h1>
				</div>
				<form method="post">
					<div class="notice_content">
						<div class="subject"></div>
						<div id="table">
							<div class="row">
							<span class="cell col1">제목</span>
							<span class="cell col2">제 20기 동별대표자선출 투표</span>
							</div>
							<div class="row">
							<span class="cell col1">글쓴이</span>
							<span class="cell col2">관리자</span>
							</div>
							<div class="row">
							<span class="cell col1">기간</span>
							<span class="cell col2">2021-08-20 ~ 2021-08-30</span>
							</div>
				 		</div>
						 <div class="detail_content">
						<pre class="col3">투표 내용 </pre>
						</div>
						<span class="ment">※ 투표완료 후 선택 수정 불가함으로 신중한 투표 부탁드립니다.</span>
					</div>
					<form>
						<!--  -->
						<div class="radio_area">
							<ul>
							<li>
							<input type="radio" id="agree" name="radio_val" value="agree">
							<label for="agree">찬성</label>
							</li>
							</ul>
							<ul>
							<li>
							<input type="radio" id="oppose" name="radio_val" value="oppose">
							<label for="oppose">반대</label>
							</li>
							</ul>
						</div>
						<!--  -->
						<div class="checkbox_area">
							<ul>
							<li>
							<input type="checkbox" id="val1" name="checkbox_val" value="val1">
							<label for="val1">1번</label>
							</li>
							</ul>
							<ul>
							<li>
							<input type="checkbox" id="val2" name="checkbox_val" value="val2">
							<label for="val2">2번</label>
							</li>
							</ul>
							<ul>
							<li>
							<input type="checkbox" id="val3" name="checkbox_val" value="val3">
							<label for="val3">3번</label>
							</li>
							</ul>
						</div>
						<!-- 기간 동안 보일 버튼 -->
						<div class="btn_area_vote"> 
							<input type="submit" value="투표하기" id="btn2">
						</div>
						<!-- 기간 이후 보일 버튼 -->
						<div class="btn_area_vote"> 
							<button type="button" id="btn3" class="openBtn">결과보기</button>
							<div class="modal hidden">
								<div class="bg"></div>
								<div class="modalBox">
									<h2>투표결과</h2>
									<div class="bar_area">
										<span class="vote_val">찬성</span>
										<span class="vote_count">40명</span>
										<span class="vote_per">43%</span>
										<div class="zt-skill-bar"><div data-width="43"></div></div>
									</div>
									<div class="bar_area">
										<span class="vote_val">반대</span>
										<span class="vote_count">32명</span>
										<span class="vote_per">30%</span>
										<div class="zt-skill-bar"><div data-width="27"></div></div>
									</div>
									<button type="button" class="closeBtn">확인</button>
									</div>
								</div>
							</div>
						</div>
					</form>
					<!-- 관리자한테만 보임 -->
					<div class="btn_area">
						<button type="button" id="btn3" onclick="noticeDelete()">삭제하기</button>
					</div>
				</form>
			</div>
		</div>
		
	<%-- 공통 footer --%>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
	
		<script>
			function noticeDelete(){
				if (confirm("게시글을 삭제 하시겠습니까?")) {
					
				}
			}
		</script>

		<!-- 모달 창 부분 -->
		<script>
			const open = () => {
				document.querySelector(".modal").classList.remove("hidden");
			}
		
			const close = () => {
				document.querySelector(".modal").classList.add("hidden");
			}
		
			document.querySelector(".openBtn").addEventListener("click", open);
			document.querySelector(".closeBtn").addEventListener("click", close);
			document.querySelector(".bg").addEventListener("click", close);
		
		
		</script>
		<!-- 막대 그래프 -->
		 <script>
			 document.querySelector(".openBtn").addEventListener("click", bar);
			 function bar() {
						$(".zt-skill-bar > div ").each(function (i) {
							var $this  = $(this);
							var	skills = $this.data('width');

							$this.css({'width' : skills + '%'});

						});
					}
        </script>
	
</body>
</html>