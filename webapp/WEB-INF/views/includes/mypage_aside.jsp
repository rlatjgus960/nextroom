<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="aside">
		<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png" width="35px" height="35px">
		             
		<div id="aside_cate">
			<ul>
				<li><a href="${pageContext.request.contextPath}/mypage/infoModifyForm?menu=1">개인정보 변경</a></li>
				<li><a href="${pageContext.request.contextPath}/mypage/main?menu=2">내기록 보기</a></li>
				<li><a href="${pageContext.request.contextPath}/mypage/payMent?menu=3">결제내역</a></li>
				<li><a href="${pageContext.request.contextPath}/mypage/partyManage?menu=4">파티관리</a></li>
				<!-- <li>관심 카페/테마</li>-->
				<!-- <li>내가 쓴 글 보기
				<ul>
					<li>- 커뮤니티 글</li>
					<li>- 커뮤니티 댓글</li>
				</ul>
				</li> -->
			
				<li><a href="${pageContext.request.contextPath}/mypage/receiveMassage?menu=5">내 쪽지</a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/mypage/receiveMassage?menu=6">- 받은 쪽지함</a></li>
						<li><p class="selected"><a href="${pageContext.request.contextPath}/mypage/sendMassage?menu=7">- 보낸 쪽지함</a></p></li>
						<li><a href="javascript:popup()">- 쪽지 보내기</a></li>
					</ul>
				</li>
				<!-- <li>회원 탈퇴</li> -->
			</ul>
		        
		</div>
	</div>
</body>
</html>