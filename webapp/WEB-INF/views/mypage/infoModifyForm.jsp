<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet"
	type="text/css">

<link href="${pageContext.request.contextPath }/assets/css/userInformation.css" rel="stylesheet"
	type="text/css">

<title>자유게시판</title>
</head>
<body>

	<!-- 헤더영역 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->

	<div id="wrap">


		<!-- content -->
		<div id="content">

			<div id="subheader" class="clearfix">
				<div id="subheader-title">
					<h2>마이페이지</h2>
				</div>
				<div id="subheader-mintitle">마이페이지 > 개인정보 변경</div>



			</div>



			<div id="contentMain" class="clearfix">
				<!-- aside -->
				<div id="aside">
					<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png"
						width="35px" height="35px">

					<div id="aside_cate">
						<ul>
							<li class="selected"><a href="${pageContext.request.contextPath}/mypage/infoModifyForm">개인정보
									변경</a></li>
							<li><a href="${pageContext.request.contextPath}/mypage/main">내기록 보기</a></li>
							<li><a href="${pageContext.request.contextPath}/mypage/payMent">결제내역</a></li>
							<li><a href="${pageContext.request.contextPath}/mypage/partyManage">파티관리</a></li>
							<!-- <li>관심 카페/테마</li>-->
							<!-- <li>내가 쓴 글 보기
								<ul>
									<li>- 커뮤니티 글</li>
									<li>- 커뮤니티 댓글</li>
								</ul>
							</li> -->

							<li><a href="${pageContext.request.contextPath}/mypage/receiveMassage">내 쪽지</a>
								<ul>
									<li><a href="${pageContext.request.contextPath}/mypage/receiveMassage">&nbsp;-받은
											쪽지함</a></li>
									<li><a href="${pageContext.request.contextPath}/mypage/sendMassage">&nbsp;-보낸 쪽지함</a></li>
									<li><a href="javascript:popup()">&nbsp;-쪽지 보내기</a></li>
								</ul></li>

							<c:if test="${authUser.userType == '1'}">
								<li><a href="${pageContext.request.contextPath}/mypage/addCafeForm">카페
										관리자 전환</a></li>
							</c:if>
							<!-- <li>회원 탈퇴</li> -->
						</ul>

					</div>
				</div>
				<!-- //aside -->




				<!-- main -->
				<div id="mypageMain" class="clearfix">

					<form id="user_change">
						<!-- 상단여백 -->
						<div id="top_blank"></div>
						<!-- //상단여백 -->

						<!-- 유저 이미지 -->
						<div id="user_image">
							<div>
								<img src="${pageContext.request.contextPath }/assets/image/profile/red.jpg">
								<button class="change_button">변경</button>
							</div>
						</div>
						<!-- //유저 이미지 -->

						<!-- 정보변경 테이블 -->
						<table id="change_informaiton">

							<tr>
								<th>아이디</th>
								<td>wonho</td>
							</tr>

							<tr>
								<th>이름</th>
								<td>흥선대원군</td>
							</tr>

							<tr>
								<th>닉네임</th>
								<td><input type="text"></td>
								<td><button>중복확인</button></td>
							</tr>

							<tr>
								<th>기존 비밀번호</th>
								<td><input type="password"></td>
							</tr>

							<tr>
								<th>신규 비밀번호</th>
								<td><input type="password"></td>
							</tr>

							<tr>
								<th>신규 비밀번호(확인)</th>
								<td><input type="password"></td>
							</tr>

							<tr>
								<th>전화번호</th>
								<td><input type="text" placeholder="'-'없이 입력해주세요"></td>
							</tr>

							<tr>
								<th>이메일</th>
								<td><input type="text"></td>
							</tr>



						</table>
						<!-- //정보변경 테이블 -->

					</form>

					<div id="user_infom_finish">
						<span class="finish_button"><a href="${pageContext.request.contextPath }/hello">수정
								완료</a></span> <span class="finish_button"><a href="${pageContext.request.contextPath }/hello">취
								소</a></span>
					</div>

				</div>
				<!-- //main -->

			</div>



		</div>
		<!-- //content -->






		<!-- footer -->

		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

		<!-- //footer -->


	</div>
</body>


<script type="text/javascript">
	function popup() {
		var url = "${pageContext.request.contextPath }/board/massageForm";
		var name = "popup test";
		var option = "width = 500, height = 500, top = 250, left = 700, location = no"
		window.open(url, name, option);
	}
</script>



</html>