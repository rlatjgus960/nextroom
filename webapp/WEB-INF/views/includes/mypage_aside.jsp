<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <div id="aside">
      <img id="aside_img" src="${pageContext.request.contextPath}/assets/image/asideImg.png" width="35px" height="35px">
      
      <div id="aside_cate">
         <p>마이페이지</p>
         <ul>
            <li>개인정보 변경</li>
            <li>결제내역</li>
            <li>파티관리</li>
            <li>나의 문의내역</li>
            <li>관심 카페/테마</li>
            <li>포인트 적립/사용내역</li>
            <li>내가 쓴 글 보기
               <ul>
                  <li>- 커뮤니티 글</li>
                  <li>- 커뮤니티 댓글</li>
               </ul>
            </li>
            <li>내 쪽지
               <ul>
                  <li>- 받은 쪽지함</li>
                  <li>- 보낸 쪽지함</li>
                  <li>- 쪽지 보내기</li>
               </ul>
            </li>
            <li>회원 탈퇴</li>
         </ul>

      </div>
   </div>
</body>
</html>