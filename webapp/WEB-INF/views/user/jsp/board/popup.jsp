<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고하기</title>

<%-- 공통css/js --%>
<jsp:include page="/WEB-INF/views/user/common/link.jsp"></jsp:include>

    <style>
        .top_area {
            margin-top: 5px;
            background: #F1F1F1;
            display: flex;
            padding: 10px;
            
        }
        .top_area span {
            line-height: 30px;
            color: #848484;
            font-weight: 600;
            font-size: 18px;
            padding-left: 10px;
        }

        h1 {
            font-weight: 600;
            font-size: 22px;
            line-height: 50px;
            color: #343434;
            padding: 50px 60px 40px 70px;
        }
        h3 {
            font-weight: 600;
            font-size: 16px;
            color: #FE6C6C;
            margin-left: 70px;
        }

        input[type="button"],
        input[type="submit"] {
            border: none;
            width: 100px;
            height: 35px;
            margin-left: 10px;
            color: white;
            background: #E73737;
            font-size: 14px;
            letter-spacing: 1px;
            cursor: pointer;
            margin-top: 80px;
        }
        input[type="submit"]{
            margin-left: 180px;
        }
        input[type="button"]{
            background: #C8C8C8;
        }

    </style>
</head>
<body>
    <div class="top_area">
        <img src="/oneLife/resources/user/images/Iconpop.png">
        <span>신고하기</span>
    </div>
    <h1>이 게시글(댓글)을 One Life 클린센터에<br> 신고하시겠습니까?</h1>
    <h3>※ 신고 누적 시 게시글(댓글)이 강제로 삭제됩니다.</h3>
    <form method="GET">
    <input type="submit" value="신고하기" onclick="moveClose();"/>
    <input type="button" value="취소" onclick="self.close();"/>
    </form>
    <script>
        function moveClose() {
         alert('정상적으로 접수 됐습니다.');
         self.close();
        }
        </script>
	
</body>
</html>