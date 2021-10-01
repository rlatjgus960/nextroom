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


<title>카페 관리자 신청</title>
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
								<li><a href="${pageContext.request.contextPath}/mypage/receiveMassage">-&nbsp;받은
										쪽지함</a></li>
								<li><a href="${pageContext.request.contextPath}/mypage/sendMassage">-&nbsp;보낸 쪽지함</a></li>
								<li><a href="javascript:popup()">-&nbsp;쪽지 보내기</a></li>
							</ul></li>


						<c:if test="${'1' eq sessionScope.authUser.userType}">
							<li class="selected"><a href="${pageContext.request.contextPath}/mypage/addCafeForm">카페
									관리자 전환</a></li>
						</c:if>
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
						<form action="${pageContext.request.contextPath}/mypage/addCafe" method="post"
							enctype="multipart/form-data">

							<div id="cafeModi_img" class="clearfix">

								<div id="cafe_mainImg_wrap" class="clearfix">
									<p class="cafModi_subTitle">카페 메인이미지</p>
									<img id="cafe_mainImg"
										src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png" alt="">

									<div class="cafe_up_wrap">
										<input type="file" name="cafeImgFile">
									</div>
								</div>

								<div id="cafe_interior_wrap">

									<p class="cafModi_subTitle">카페 내부이미지</p>

									<div id="add_cafeInterior" class="scroll-image">
										<!-- 카페내부사진 반복영역 -->
										<img src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png" alt="">

										<!-- //카페내부사진 반복영역 -->
									</div>
									<div class="cafe_up_wrap">

										<input type="file" name="interiorImg" multiple="multiple">

									</div>

								</div>
							</div>
							<input type="hidden" name="userNo" value="${authUser.userNo }">

							<div id="cafe_explain_wrap">
								<div id="cafeIntroduce_wrap" class="cafeNameWrap clearfix">
									<p class="cafModi_subTitle">카페이름</p>
									<input type="text" id="cafeName" name="cafeName" placeholder="카페이름을 입력하세요.">
								</div>


								<div id="cafeIntroduce_wrap" class="cafe_explain_item clearfix">
									<p class="cafModi_subTitle">소개글</p>
									<textarea name="cafeIntro" placeholder="소개글을 입력하세요."></textarea>
								</div>

								<div id="address_wrap" class="cafe_explain_item clearfix">
									<p class="cafModi_subTitle">주소</p>

									<div class="address_search">
										<input type="text" id="postcode" placeholder="우편번호"> <input id="searchBtn"
											type="button" onclick="execDaumPostcode()" value="우편번호 찾기"> <input
											name="address" type="text" id="roadAddress" placeholder="도로명주소"> <input
											type="hidden" id="jibunAddress" placeholder="지번주소"> <span id="guide"
											style="color: #999; display: none"></span> <input name="addressDetail" type="text"
											id="detailAddress" placeholder="상세주소"> <input type="hidden" id="extraAddress"
											placeholder="참고항목"> <input name="sido" type="hidden" id="sido" placeholder="시도">

										<input name="sidoDetail" type="hidden" id="sigungu" placeholder="시군구">

										<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
										<script>
											//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
											function execDaumPostcode() {
												new daum.Postcode(
														{
															oncomplete : function(
																	data) {
																// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

																// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
																// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
																var roadAddr = data.roadAddress; // 도로명 주소 변수
																var extraRoadAddr = ''; // 참고 항목 변수

																// 법정동명이 있을 경우 추가한다. (법정리는 제외)
																// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
																if (data.bname !== ''
																		&& /[동|로|가]$/g
																				.test(data.bname)) {
																	extraRoadAddr += data.bname;
																}
																// 건물명이 있고, 공동주택일 경우 추가한다.
																if (data.buildingName !== ''
																		&& data.apartment === 'Y') {
																	extraRoadAddr += (extraRoadAddr !== '' ? ', '
																			+ data.buildingName
																			: data.buildingName);
																}
																// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
																if (extraRoadAddr !== '') {
																	extraRoadAddr = ' ('
																			+ extraRoadAddr
																			+ ')';
																}

																// 우편번호와 주소 정보를 해당 필드에 넣는다.
																document
																		.getElementById('postcode').value = data.zonecode;
																document
																		.getElementById("roadAddress").value = roadAddr;
																document
																		.getElementById("jibunAddress").value = data.jibunAddress;
																document
																		.getElementById("sido").value = data.sido;
																document
																		.getElementById("sigungu").value = data.sigungu;

																// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
																if (roadAddr !== '') {
																	document
																			.getElementById("extraAddress").value = extraRoadAddr;
																} else {
																	document
																			.getElementById("extraAddress").value = '';
																}

																var guideTextBox = document
																		.getElementById("guide");
																// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
																/* if (data.autoRoadAddress) {
																	var expRoadAddr = data.autoRoadAddress
																			+ extraRoadAddr;
																	guideTextBox.innerHTML = '(예상 도로명 주소 : '
																			+ expRoadAddr
																			+ ')';
																	guideTextBox.style.display = 'block';

																} else if (data.autoJibunAddress) {
																	var expJibunAddr = data.autoJibunAddress;
																	guideTextBox.innerHTML = '(예상 지번 주소 : '
																			+ expJibunAddr
																			+ ')';
																	guideTextBox.style.display = 'block';
																} else {
																	guideTextBox.innerHTML = '';
																	guideTextBox.style.display = 'none';
																} */
															}
														}).open();
											}
										</script>
									</div>
								</div>


								<div id="phoneNumber_wrap" class="cafe_explain_item clearfix">
									<p class="cafModi_subTitle">전화번호</p>
									<input type="tel" id="phoneNumber" name="cafeHp" placeholder="전화번호를 입력하세요.">
								</div>


								<div id="workTime_wrap" class="cafe_explain_item clearfix">
									<p class="cafModi_subTitle">영업시간</p>
									<div id="workTime">
										<input id="openTime" name="openTime" type="time"> <span>&nbsp;~&nbsp;</span> <input
											id="closeTime" name="closeTime" type="time">
									</div>
								</div>


								<div id="cafeURL_wrap" class="cafe_explain_item clearfix">
									<p class="cafModi_subTitle">카페 URL</p>
									<input type="text" id="cafeURL" name="url" placeholder="카페 사이트 주소를 입력해주세요.">
								</div>

							</div>


							<div id="cafeModify_button">
								<button type="submit" class="mbutton">신청하기</button>
							</div>
						</form>

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