<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표하기 상세페이지</title>	
<style>
.modal {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.modal .bg {
  width: 100%;
  height: 100%;
  background-color: rgba(115, 115, 116, 0.27);
}

.modalBox {
  position: absolute;
  background-color: #fff;
  width: 550px;
  padding: 30px;
  border: 1px solid rgba(63, 63, 68, 0.005);
  box-shadow: 0px 1px 0px rgba(63, 63, 68, 0.05),
    0px 1px 3px rgba(63, 63, 68, 0.15);
  border-radius: 10px;
}

.modalBox h2 {
  font-weight: bold;
  font-size: 28px;
  line-height: 24px;
  justify-content: center;
  text-align: left;
  letter-spacing: 0.15px;
  position: relative;
  top: 8%;
  left: 1%;
}

.modalBox span {
  font-size: 21px;
  line-height: 35px;
  letter-spacing: 0.15px;
  color: #5b5b5b;
  position: relative;
  top: 20%;
  left: 1%;
  right: 100px;
  display: block;
  text-align: justify;
}

.closeBtn {
  background: #797979;
  padding: 15px;
  margin-top: 30px;
  border-radius: 4px;
  cursor: pointer;
  position: relative;
  font-weight: bold;
  font-size: 24px;
  line-height: 24px;
  justify-content: center;
  letter-spacing: 1px;
  color: #fff;
  width: 120px;
  left: 215px;
}

.container .btn2 {
  color: #137af3;
}

.container img {
  height: 50px;
  margin-top: 5%;
}

.hidden {
  display: none;
}

.modalBox h2 {
  border-bottom: 2px solid rgb(218, 218, 218);
  padding-bottom: 30px;
  margin-top: 10px;
}

.bar_area {
  display: block;
  padding-top: 30px;
  padding-bottom: 10px;
  margin: 0;
}
.bar_area .vote_val,
.bar_area .vote_per,
.bar_area .vote_count {
  display: inline;
  position: relative;
  color: #1d498b;
  font-weight: bold;
  font-size: 22px;
}
.bar_area .vote_count {
  color: rgb(173, 173, 173);
  font-size: 18px;
  padding-left: 30px;
}
.bar_area .vote_per {
  color: #ff726d;
  font-size: 25px;
  padding-left: 370px;
}

.zt-skill-bar {
  color: #fff;
  font-size: 11px;
  line-height: 25px;
  background-color: rgba(0, 0, 0, 0.1);
  border-radius: 40px;
  height: 20px;
}

.zt-skill-bar * {
  -webkit-transition: all 1s ease;
  -moz-transition: all 1s ease;
  -ms-transition: all 1s ease;
  -o-transition: all 1s ease;
  transition: all 1s ease;
}

.zt-skill-bar div {
  background-color: #00a8ff;
  position: relative;
  padding-left: 25px;
  width: 0;
  border-radius: 40px;
  height: 20px;
}

</style>
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
				<form method="post" name="voteForm">
					<div class="notice_content">
						<div class="subject"></div>
						<div id="table">
							<div class="row">
							<span class="cell col1">제목</span>
							<span class="cell col2">${ vote.v_title }</span>
							</div>
							<div class="row">
							<span class="cell col1">글쓴이</span>
							<span class="cell col2">${ vote.m_no }</span>
							</div>
							<div class="row">
							<span class="cell col1">기간</span>
							<span class="cell col2">${ vote.v_enroll_date } ~ ${ vote.v_modify_date }</span>
							</div>
				 		</div>
						 <div class="detail_content">
						<pre class="col3">투표 내용 </pre>
						</div>
						<span class="ment">※ 투표완료 후 선택 수정 불가함으로 신중한 투표 부탁드립니다.</span>
					</div>
					 <input type="hidden" name="v_no" value="${ vote.v_no }">
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
						<button type="button" id="btn3" onclick="voteDelete()">삭제하기</button>
					</div>
				</form>
			</div>
		</div>
		
	<%-- 공통 footer --%>
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>
	
		<script>
			function voteDelete(){
				if (confirm("게시글을 삭제 하시겠습니까?")) {
	                document.forms.voteForm.action = "${contextPath}/vote/delete";
			 		document.forms.voteForm.submit();
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
	
	<script>
        function date1() {
        	
        	var Deadline = ${ vote.v_modify_date };
        	
           let date = document.getElementById("date").value;
             let today = new Date();
             today.setHours(0);
             today.setSeconds(0);
             today.setMilliseconds(0);
             let endDay = new Date(Deadline);
             
             if (Deadline >= today) { 
            	 console.log("dd1");
            	 $("#btn2").removeAttr("disabled"); // 사용하겠다고 선택한 경우 가입하기 버튼 활성화 !
				 $('#btn2').css('background-color','#4094F7');
				 
                alert("투표 완료되었습니다.");
             } else {
            	 $("#btn3").removeAttr("disabled"); // 사용하겠다고 선택한 경우 가입하기 버튼 활성화 !
				 $('#btn3').css('background-color','#4094F7');
				 $("#btn2").hide()
                if (confirm("업로드 이후 수정 불가합니다. 최종 업로드 하시겠습니까?")) {
                  document.forms.voteForm.submit();
            }
               
             }
         
      }
        
        
        </script>

</body>
</html>