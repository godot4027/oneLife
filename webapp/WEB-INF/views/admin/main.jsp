<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no,maximum-scale=1.0,minimum-scale=1.0,target-densitydpi=medium-dpi" />
    <title>oneLife 관리자 - 메인</title>
    
    <%-- css/js 파일 --%>
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
                    <div class="main_content">
                        <div class="item_box item_3st clearfix">
                            <div class="items">
                               <div class="item_head">
                                   <h2>금일 주요일정</h2>
                                   <a href="javascript:;">더보기</a>
                               </div>
                               <div class="item_body">

                                   <div class="item_list">
                                      <a href="javascript:;">
                                        <span class="type01">공동생활</span>
                                        <p class="board_txt">테스트 한줄처리 테스트 테스트 한줄처리 테스트 테스트 한줄처리 테스트 테스트 한줄처리 테스트 테스트 한줄처리 테스트 테스트 한줄처리 테스트</p>
                                      </a>
                                   </div>

                                   <div class="item_list">
                                    <a href="javascript:;">
                                      <span class="type01">공동생활</span>
                                      <p class="board_txt">단지 엘레베이터 정기점검</p>
                                    </a>
                                 </div>
                                 <div class="item_list">
                                    <a href="javascript:;">
                                      <span class="type01">공동생활</span>
                                      <p class="board_txt">단지 엘레베이터 정기점검</p>
                                    </a>
                                 </div>
                                 <div class="item_list">
                                    <a href="javascript:;">
                                      <span class="type01">공동생활</span>
                                      <p class="board_txt">단지 엘레베이터 정기점검</p>
                                    </a>
                                 </div>


                               </div>
                            </div>
                            <div class="items">
                                <div class="item_head">
                                    <h2>공지사항</h2>
                                    <a href="javascript:;">더보기</a>
                                </div>
                                <div class="item_body">
                                    <div class="item_list">
                                        <a href="javascript:;">
                                            <p class="board_txt">단지 엘레베이터 정기점검</p>
                                            <p class="type02">
                                                <span>글쓴이</span>
                                                2021-08-04
                                            </p>
                                        </a>
                                     </div>
  
                                     <div class="item_list">
                                        <a href="javascript:;">
                                            <p class="board_txt">단지 엘레베이터 정기점검</p>
                                            <p class="type02">
                                                <span>글쓴이</span>
                                                2021-08-04
                                            </p>
                                        </a>
                                   </div>
                                   <div class="item_list">
                                    <a href="javascript:;">
                                        <p class="board_txt">단지 엘레베이터 정기점검</p>
                                        <p class="type02">
                                            <span>글쓴이</span>
                                            2021-08-04
                                        </p>
                                    </a>
                                   </div>
                                   <div class="item_list">
                                    <a href="javascript:;">
                                        <p class="board_txt">단지 엘레베이터 정기점검</p>
                                        <p class="type02">
                                            <span>글쓴이</span>
                                            2021-08-04
                                        </p>
                                    </a>
                                   </div>
                                </div>
                             </div>
                             <div class="items">
                                <div class="item_head">
                                    <h2>미답변 건의 현황</h2>
                                    <a href="javascript:;">더보기</a>
                                </div>
                                <div class="item_body">
                                    <div class="item_list">
                                        <a href="javascript:;">
                                          <p class="board_tit clearfix">
                                              <span class="lf">홍길동</span>
                                              <span class="lf">201동 103호</span>
                                              <span class="rg">2021.08.20 12:00</span>
                                          </p>
                                          <p class="board_txt">한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리한줄처리</p>
                                        </a>
                                     </div>
  
                                     <div class="item_list">
                                        <a href="javascript:;">
                                          <p class="board_tit clearfix">
                                              <span class="lf">홍길동</span>
                                              <span class="lf">201동 103호</span>
                                              <span class="rg">2021.08.20 12:00</span>
                                          </p>
                                          <p class="board_txt">단지 엘레베이터 정기점검</p>
                                        </a>
                                     </div>
                                     <div class="item_list">
                                        <a href="javascript:;">
                                          <p class="board_tit clearfix">
                                              <span class="lf">홍길동</span>
                                              <span class="lf">201동 103호</span>
                                              <span class="rg">2021.08.20 12:00</span>
                                          </p>
                                          <p class="board_txt">단지 엘레베이터 정기점검</p>
                                        </a>
                                     </div>
                                     <div class="item_list">
                                        <a href="javascript:;">
                                          <p class="board_tit clearfix">
                                              <span class="lf">홍길동</span>
                                              <span class="lf">201동 103호</span>
                                              <span class="rg">2021.08.20 12:00</span>
                                          </p>
                                          <p class="board_txt">단지 엘레베이터 정기점검</p>
                                        </a>
                                     </div>
                                     <div class="item_list">
                                        <a href="javascript:;">
                                          <p class="board_tit clearfix">
                                              <span class="lf">홍길동</span>
                                              <span class="lf">201동 103호</span>
                                              <span class="rg">2021.08.20 12:00</span>
                                          </p>
                                          <p class="board_txt">단지 엘레베이터 정기점검</p>
                                        </a>
                                     </div>
                                </div>
                             </div>
                        </div>

                        <div class="item_box">
                            <div class="items">
                               <div class="item_head">
                                   <h2>금일 부대시설 예약현황</h2>
                                   <a href="javascript:;">더보기</a>
                               </div>
                               <div class="item_body">
                                    <div class="table_wrap">
                                        <table class="table">
                                            <colgroup>
                                                <col width="5%">
                                                <col width="8%">
                                                <col width="8%">
                                                <col width="8%">
                                                <col width="8%">
                                                <col width="18%">
                                                <col width="18%">
                                                <col width="18%">
                                                <col width="8%">
                                            </colgroup>
                                            <caption class="ir_so">금일 부대시설 예약현황</caption>
                                            <thead>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>예약 시설</th>
                                                    <th>예약 타입</th>
                                                    <th>아이디</th>
                                                    <th>이름</th>
                                                    <th>핸드폰 번호</th>
                                                    <th>예약 일자</th>
                                                    <th>예약 마감시간</th>
                                                    <th>예약 상태</th>
                                                </tr>
                                            </thead>
                                        </table>
                                        <div class="main_table">
                                            <table class="table">
                                                <colgroup>
                                                    <col width="5%">
                                                    <col width="8%">
                                                    <col width="8%">
                                                    <col width="8%">
                                                    <col width="8%">
                                                    <col width="18%">
                                                    <col width="18%">
                                                    <col width="18%">
                                                    <col width="8%">
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>2</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_ing">사용중</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>3</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_after">사용완료</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>4</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>5</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>6</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>7</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>8</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>9</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>10</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                               </div>
                            </div>
                        </div>

                        <div class="item_box">
                            <div class="items">
                               <div class="item_head">
                                   <h2>금일 방문차량 예약현황</h2>
                                   <a href="javascript:;">더보기</a>
                               </div>
                               <div class="item_body">
                                    <div class="table_wrap">
                                        <table class="table">
                                            <colgroup>
                                                <col width="5%">
                                                <col width="8%">
                                                <col width="8%">
                                                <col width="8%">
                                                <col width="8%">
                                                <col width="18%">
                                                <col width="18%">
                                                <col width="18%">
                                                <col width="8%">
                                            </colgroup>
                                            <caption class="ir_so">금일 부대시설 예약현황</caption>
                                            <thead>
                                                <tr>
                                                    <th>No.</th>
                                                    <th>방문일</th>
                                                    <th>차량 번호</th>
                                                    <th>방문 세대</th>
                                                    <th>방문 목적</th>
                                                    <th>신청인</th>
                                                    <th>신청인 연락처</th>
                                                    <th>차주 연락처</th>
                                                    <th>입차 현황</th>
                                                </tr>
                                            </thead>
                                        </table>
                                        <div class="main_table">
                                            <table class="table">
                                                <colgroup>
                                                    <col width="5%">
                                                    <col width="8%">
                                                    <col width="8%">
                                                    <col width="8%">
                                                    <col width="8%">
                                                    <col width="18%">
                                                    <col width="18%">
                                                    <col width="18%">
                                                    <col width="8%">
                                                </colgroup>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>2</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_ing">사용중</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>3</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_after">사용완료</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>4</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>5</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>6</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>7</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>8</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>9</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>10</td>
                                                        <td>독서실</td>
                                                        <td>정기권</td>
                                                        <td>abc123</td>
                                                        <td>홍길동</td>
                                                        <td>010-1234-5678</td>
                                                        <td>2021년 08월 28일 15시 50분</td>
                                                        <td>2021년 08월 28일 18시 50분 <span class="bold">(3시간)</span></td>
                                                        <td>
                                                            <p class="status_before">사용전</p>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
            </secion>
        </div>
    </div>
</body>
</html>