<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/aside.css" rel="stylesheet"
	type="text/css">

<link href="${pageContext.request.contextPath }/assets/css/adminTheme.css" rel="stylesheet"
	type="text/css">


<title>카페 정보 수정</title>
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
					<h2>카페 관리자 전환 신청</h2>
				</div>
				<div id="subheader-mintitle">마이페이지 > 카페관리자전환</div>



			</div>

			<!-- aside -->
			<div id="aside">
				<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png"
					width="35px" height="35px">

				<div id="aside_cate">
					<ul>
						<li><a href="${pageContext.request.contextPath}/mypage/infoModifyForm">개인정보 변경</a></li>
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


						<li class="selected"><a href="${pageContext.request.contextPath}/mypage/addCafeForm">카페 관리자 전환</a></li>
						<!-- <li>회원 탈퇴</li> -->
					</ul>

				</div>
			</div>
			<!-- //aside -->

			<!-- contentMain -->
			<div id="contentMain" class="clearfix">

				<div id="contentWrap">
					<p id="admin_subHeader">| 관리자 전환 신청</p>

					<div id="cafeModify" class="">
						
						관리자 전환 신청이 완료되었습니다.

					</div>

				</div>
			</div>
			<!-- contentMain -->

		</div>
		<!-- //content -->


		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- //footer -->

	</div>
	<!-- wrap -->
</body>



</html>