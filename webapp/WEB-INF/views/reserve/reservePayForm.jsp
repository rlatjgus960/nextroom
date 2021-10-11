<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/reservation.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<title>방탈출 예약</title>
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
					<h2>방탈출 예약</h2>
				</div>

			</div>

			<div id="contentMain" class="clearfix">

				<!-- reservationBar -->
				<div id="reservation_bar" class="clearfix">
					<div id="reservation_first" class="clearfix reservation_gray">
						<div class="reservation_num">01</div>
						<div class="reservation_txt">날짜/카페/테마 선택</div>
					</div>
					<div id="reservation_second" class="clearfix reservation_gray">
						<div class="reservation_num">02</div>
						<div class="reservation_txt">예약정보 입력</div>
					</div>
					<div id="reservation_third" class="clearfix reservation_yellow">
						<div class="reservation_num">03</div>
						<div class="reservation_txt">결제하기</div>
					</div>
					<div id="reservation_fourth" class="clearfix reservation_gray">
						<div class="reservation_num">04</div>
						<div class="reservation_txt">예약완료</div>
					</div>
				</div>
				<!-- //reservationBar -->

				<!-- main -->

				<!--table-->
				<form action="${pageContext.request.contextPath}/reserve/reserveInsert" method="get">
					<table id="reservation_table">
						<tr>
							<th>결제수단</th>
							<td>신용카드</td>
						</tr>

						<tr>
							<th>입금은행</th>
							<td><select name="bank">
									<option value="">국민은행</option>
									<option value="">하나은행</option>
									<option value="">신한은행</option>
									<option value="">우리은행</option>
									<option value="">외환은행</option>
							</select></td>
						</tr>

						<tr>
							<th>환불계좌</th>
							<td><select name="bank">
									<option value="">국민은행</option>
									<option value="">하나은행</option>
									<option value="">신한은행</option>
									<option value="">우리은행</option>
									<option value="">외환은행</option>
							</select> <input type="text" value="계좌번호를 입력해주세요"> <input
								type="text" value="예금주"></td>
						</tr>

					</table>
					<!-- //table -->


					<!-- agreement -->
					<div id="reservation_agreement">
						<div class="reservation_agreement_title">개인정보 수집 및 이용안내</div>

						<div class="reservation_agreement_content">
							<ul>
								<li>결제 변경 및 취소는 예약한 게임 시작 시간 24시간 이전에만 가능합니다.</li>
								<li>게임 시작시간이 지나 도착하거나, 나타나지 않으면 게임에 참여할 수 없고 환불 또한 불가 합니다.</li>
								<li>19세이상 게임의 경우 신분증 제시를 요청할 수 있습니다.</li>
								<li>과도한 음주자는 게임전 음주 측정을 실시하여 혈중 알콩농도 0.1% 이상인 경우 입장이 제한 될 수
									있습니다.</li>
								<li>공간이 폐쇄되어 갇히거나 신체가 구속될 수 있으므로 해당 사항에 거부감이 있거나 질환이 있으신 분은
									참가가 어렵습니다.</li>
								<li>Quest에서 경험한 퀴즈나 퍼즐등 세부적인 내용을 발설하려고 하시는 분은 입장제한대상입니다.</li>
								<li>당일 예약은 신용카드, 체크카드만 가능합니다. 다른 결제 수단은 지점을 내방 하셔야 합니다.</li>
							</ul>
						</div>

						<div class="reservation_agreement_check">
							<label><input id="agreeChk" type="checkbox" name="agreement"
								value="agree" text-left-padding="5px">위의 '결제관련 주의사항 안내'에
								동의합니다.</label>
						</div>
					</div>
					<!-- //agreement -->

					<!-- //main -->
			</div>

			<div>
				<button id="nextPageBtn" class="mbutton" type="submit">예약하기</button>
			</div>

			<input type="text" name="cafeName" value="${param.cafeName}">
			<input type="text" name="themeName" value="${param.themeName}">
			<input type="text" name="reserveDate" value="${param.reserveDate}">
			<input type="text" name="themeTime" value="${param.themeTime}">
			<input type="text" name="reserveName" value="${param.reserveName}">
			<input type="text" name="reserveHp" value="${param.reserveHp}">
			<input type="text" name="partyMember" value="${param.partyMember}">

			<%-- 
	            <c:forEach var="i" begin="0" end="${param.headcount}" varStatus="status">
	            	<c:set var="numdd" value="${i}" />
	            	<input type="text" name="playerId${i}" value="${param.playerId[numdd]}">
	            </c:forEach> --%>

			<c:if test="${param.headcount eq 1}">
				<input type="text" name="playerId0" value="${param.playerId0}">
			</c:if>
			<c:if test="${param.headcount eq 2}">
				<input type="text" name="playerId0" value="${param.playerId0}">
				<input type="text" name="playerId1" value="${param.playerId1}">
			</c:if>
			<c:if test="${param.headcount eq 3}">
				<input type="text" name="playerId0" value="${param.playerId0}">
				<input type="text" name="playerId1" value="${param.playerId1}">
				<input type="text" name="playerId2" value="${param.playerId2}">
			</c:if>
			<c:if test="${param.headcount eq 4}">
				<input type="text" name="playerId0" value="${param.playerId0}">
				<input type="text" name="playerId1" value="${param.playerId1}">
				<input type="text" name="playerId2" value="${param.playerId2}">
				<input type="text" name="playerId3" value="${param.playerId3}">
			</c:if>
			<c:if test="${param.headcount eq 5}">
				<input type="text" name="playerId0" value="${param.playerId0}">
				<input type="text" name="playerId1" value="${param.playerId1}">
				<input type="text" name="playerId2" value="${param.playerId2}">
				<input type="text" name="playerId3" value="${param.playerId3}">
				<input type="text" name="playerId4" value="${param.playerId4}">
			</c:if>
			<c:if test="${param.headcount eq 6}">
				<input type="text" name="playerId0" value="${param.playerId0}">
				<input type="text" name="playerId1" value="${param.playerId1}">
				<input type="text" name="playerId2" value="${param.playerId2}">
				<input type="text" name="playerId3" value="${param.playerId3}">
				<input type="text" name="playerId4" value="${param.playerId4}">
				<input type="text" name="playerId5" value="${param.playerId5}">
			</c:if>

			<c:if test="${param.headcount eq 7}">
				<input type="text" name="playerId0" value="${param.playerId0}">
				<input type="text" name="playerId1" value="${param.playerId1}">
				<input type="text" name="playerId2" value="${param.playerId2}">
				<input type="text" name="playerId3" value="${param.playerId3}">
				<input type="text" name="playerId4" value="${param.playerId4}">
				<input type="text" name="playerId5" value="${param.playerId5}">
				<input type="text" name="playerId6" value="${param.playerId6}">
			</c:if>

			<c:if test="${param.headcount eq 8}">
				<input type="text" name="playerId0" value="${param.playerId0}">
				<input type="text" name="playerId1" value="${param.playerId1}">
				<input type="text" name="playerId2" value="${param.playerId2}">
				<input type="text" name="playerId3" value="${param.playerId3}">
				<input type="text" name="playerId4" value="${param.playerId4}">
				<input type="text" name="playerId5" value="${param.playerId5}">
				<input type="text" name="playerId6" value="${param.playerId6}">
				<input type="text" name="playerId7" value="${param.playerId7}">
			</c:if>

			<c:if test="${param.headcount eq 9}">
				<input type="text" name="playerId0" value="${param.playerId0}">
				<input type="text" name="playerId1" value="${param.playerId1}">
				<input type="text" name="playerId2" value="${param.playerId2}">
				<input type="text" name="playerId3" value="${param.playerId3}">
				<input type="text" name="playerId4" value="${param.playerId4}">
				<input type="text" name="playerId5" value="${param.playerId5}">
				<input type="text" name="playerId6" value="${param.playerId6}">
				<input type="text" name="playerId7" value="${param.playerId7}">
				<input type="text" name="playerId8" value="${param.playerId8}">
			</c:if>

			<c:if test="${param.headcount eq 10}">
				<input type="text" name="playerId0" value="${param.playerId0}">
				<input type="text" name="playerId1" value="${param.playerId1}">
				<input type="text" name="playerId2" value="${param.playerId2}">
				<input type="text" name="playerId3" value="${param.playerId3}">
				<input type="text" name="playerId4" value="${param.playerId4}">
				<input type="text" name="playerId5" value="${param.playerId5}">
				<input type="text" name="playerId6" value="${param.playerId6}">
				<input type="text" name="playerId7" value="${param.playerId7}">
				<input type="text" name="playerId8" value="${param.playerId8}">
				<input type="text" name="playerId9" value="${param.playerId9}">
			</c:if>



			<input type="text" name="headcount" value="${param.headcount}">
			<input type="text" name="payment" value="${param.payment}">
			<input type="hidden" name="cafeNo" value="${param.cafeNo}">
		    <input type="hidden" name="themeNo" value="${param.themeNo}">




		</div>
		</form>


		<!-- //content -->


		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- //footer -->
	</div>
</body>

<script>
	$("#nextPageBtn").on("click", function() {
		console.log("다음으로 넘어가기");
		//약관동의 체크 여부
		var agree = $("#agreeChk").is(":checked");
		if (agree == false) {
			alert("약관에 동의해 주세요");
			event.preventDefault();
			return false;
		}
	});
</script>
</html>