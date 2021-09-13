<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/modal.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>

<title>마이페이지</title>
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
					<h1>마이페이지</h1>
				</div>
				<div id="subheader-mintitle">마이페이지 > 결제내역</div>

			</div>



			<div id="contentMain" class="clearfix">
				<!-- aside -->
				<c:import url="/WEB-INF/views/includes/mypage_aside.jsp"></c:import>
				<!-- //aside -->

				<!-- main -->
				<div id="mypageMain" class="clearfix">





					<div id="paymentDetail_table_select">
						<select name="orderSelect">
							<option value="recentOrder">최신순</option>
							<option value="oldOrder">오래된순</option>
						</select>
					</div>

					<div id="paymentDetail_table">
						<table>
							<tr>
								<th>예약일</th>
								<th>예약시간</th>
								<th>예약번호</th>
								<th>지점</th>
								<th>테마</th>
								<th>인원</th>
								<th>가격</th>
								<th>현재상태</th>
							</tr>

							<tr id="cafe_btn_viewmap">
								<td>2021.08.27</td>
								<td>15 : 30</td>
								<td>2021082701</td>
								<td>비밀의화원 미드나잇</td>
								<td>팩토리 엠</td>
								<td>2인</td>
								<td>50,000원</td>
								<td>탈출예약</td>
							</tr>

							<tr>
								<td>2021.07.08</td>
								<td>19 : 30</td>
								<td>2021070822</td>
								<td>싸인이스케이프 홍대점</td>
								<td>하이팜</td>
								<td>1인</td>
								<td>23,000원</td>
								<td>탈출완료</td>
							</tr>

							<tr>
								<td>2021.04.10</td>
								<td>16 : 10</td>
								<td>2021041011</td>
								<td>세븐클루스 강남1호점</td>
								<td>러브 에센스</td>
								<td>2인</td>
								<td>44,000원</td>
								<td>탈출완료</td>
							</tr>

							<tr>
								<td>2021.01.24</td>
								<td>12 : 00</td>
								<td>2021012405</td>
								<td>비트포비아 강남던전</td>
								<td>강남목욕탕</td>
								<td>3인</td>
								<td>75,000원</td>
								<td>탈출완료</td>
							</tr>
						</table>
					</div>

					<div id="paging" class="clearfix">
						<ul>
							<li><a href="">◀</a></li>
							<li><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li class="active"><a href="">3</a></li>
							<li><a href="">4</a></li>
							<li><a href="">5</a></li>
							<li><a href="">▶</a></li>
						</ul>


						<div class="clear"></div>
					</div>




				</div>
				<!-- //main -->
			</div>


		</div>

		<!-- //content -->



		<!-- 모달 -->
		<div id="paymentDetail_modal">

			<div class="paymentDetail_modal_content">

				<a id="modal_close_btn"><img
					src="${pageContext.request.contextPath }/assets/image/mypageEtc/closeBtn.JPG"></a>

				<div id="paymentDetail_table_item">
					<table id="reservation_check_table">
						<tr>
							<td id="reservation_thema_img" rowspan="5"><img
								src="${pageContext.request.contextPath }/assets/image/reserveEtc/factoryM.JPG"></td>
							<th>예약번호</th>
							<td>2021082701</td>
							<th>예약자</th>
							<td>차예진</td>
						</tr>

						<tr>
							<th>지점</th>
							<td>비밀의화원 미드나잇</td>
							<th>연락처</th>
							<td>010-1111-1111</td>
						</tr>

						<tr>
							<th>테마</th>
							<td>팩토리 엠</td>
							<th>결제금액</th>
							<td>50,000원</td>
						</tr>

						<tr>
							<th>예약일시</th>
							<td colspan="3">2021년 8월 27일 15시 30분</td>
						</tr>

						<tr>
							<th>인원</th>
							<td colspan="3">2인</td>
						</tr>
					</table>

					<div id="myPayment_Info">
						<div>
							<select name="partyMember01">
								<option value="member">회원</option>
								<option value="nonmember">비회원</option>
							</select> <span>팀원 1 (회원아이디)</span> <input type="text" value="may0505">

							<button class="mbutton">아이디 확인</button>
						</div>

						<div>
							<select name="partyMember02">
								<option value="member">비회원</option>
								<option value="nonmember">회원</option>
							</select> <span>팀원 2 (회원아이디)</span> <input type="text" value="">

							<button class="mbutton">아이디 확인</button>
						</div>
					</div>

					<div id="myPayment_Info_Btn">
						<button class="mbutton">수정완료</button>
						<button class="mbutton">수정취소</button>
					</div>
				</div>



			</div>

			<div class="cafe_detail_modal_layer"></div>
		</div>
		
		<!-- footer -->
		<div id="footer">
			상호 : 넥스트룸 | 대표자 : 1조 | 고객센터 : 02-3478-0008<br> 메일 : moon124@gmail.com | 주소 : 서울특별시 서초구 서초4동
			서초대로77길 13<br> Copyright © NEXTROOM All rights reserved.
		</div>
		<!-- //footer -->
		
	</div>
</body>
<script>
	$("#cafe_btn_viewmap").on("click", function() {
		$("#paymentDetail_modal").attr("style", "display:block");
		document.body.classList.add("stop-scroll");

	});

	$("#modal_close_btn").on("click", function() {
		$("#paymentDetail_modal").attr("style", "display:none");
		document.body.classList.remove("stop-scroll");

	});
</script>


</html>