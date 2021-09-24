<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/aside.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath }/assets/css/adminReserve.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/modal.css"
	rel="stylesheet" type="text/css">

<script
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script
	src="${pageContext.request.contextPath }/assets/js/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/js/jquery-ui-1.12.1.custom/jquery-ui.css">

<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>

<title>Insert title here</title>
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
					<h2>랭킹</h2>
				</div>
				<div id="subheader-mintitle">관리자페이지 > 예약관리</div>
			</div>


			<!-- contentMain -->
			<div id="contentMain" class="clearfix">

				<!-- aside -->
				<div id="aside">

					<img id="aside_img"
						src="${pageContext.request.contextPath }/assets/image/asideImg.png"
						width="35px" height="35px">

					<div id="aside_cate">

						<ul>
							<li>예약
								<ul class="aside_mini_cate">
									<li><a href="${pageContext.request.contextPath }/admin/reserve">&nbsp;-예약 확인</a></li>
									<li><p class="selected"><a href="${pageContext.request.contextPath }/admin/reserveTime">&nbsp;-예약 관리</a></p></li>
								</ul>
							</li>
							
							<li>기록
								<ul class="aside_mini_cate">
									<li><a href="${pageContext.request.contextPath }/admin/record">&nbsp;-기록 입력</a></li>
									<li><a href="${pageContext.request.contextPath }/admin/recordModify">&nbsp;-기록 관리</a></li>
								</ul>
							</li>
							
							<li><a href="${pageContext.request.contextPath }/admin/cafeModifyForm">카페 소개 관리</a></li>
							<li class="selected"><a href="${pageContext.request.contextPath }/admin/themeList">카페 테마
								관리</a></li>
						</ul>

					</div>

				</div>
				<!-- //aside -->

				<div id="adminMain" class="clearfix">
					<form action="" method="">
						<!--컨텐츠 여기에 작성하세요 !!!!!!!!!-->
						<div id="admin_reservation_date">
							<div id="datepicker"></div>
						</div>
	
						<div id="admin_reservation_themas">
							<table>
								<tr>
									<td class="thema colorOn"><a>아뜰리에</a></td>
									<td class="thema"><a>비밀의 화원</a></td>
									<td class="thema"><a>연애학개론</a></td>
								</tr>
								<tr>
									<td class="thema"><a>컬러즈</a></td>
									<td class="thema"><a>블라인드</a></td>
									<td class="thema"><a>베이비 레이스</a></td>
								</tr>
								<tr>
									<td class="thema"><a>슈퍼엔지니어</a></td>
									<td></td>
									<td></td>
								</tr>
							</table>
						</div>
	
	
						<!-- 예약날짜 -->
						<div id="admin_reservation_thema_time_color" class="clearfix ">
							<div>
								<div id="whitebox"></div>
								<span>시간 마감</span>
							</div>
							<div>
								<div id="yellowbox"></div>
								<span>예약완료</span>
							</div>
							<div>
								<div id="greenbox"></div>
								<span>예약가능</span>
							</div>
							<div>
								<div id="redbox"></div>
								<span>예약불가능</span>
							</div>
						</div>
	
	
						<div id="admin_reservation_thema_time">
							<table>
								<tr>
									<td class="thema_time timeover"><a>11 : 00</a></td>
									<td class="thema_time timeover"><a>12 : 00</a></td>
									<td class="thema_time timeover"><a>14 : 00</a></td>
									<td class="thema_time reservePos"><a>15 : 30</a></td>
									<td class="thema_time reservation_completed"><a>17 : 00</a></td>
								</tr>
								<tr>
									<td class="thema_time reservePos"><a>18 : 30</a></td>
									<td class="thema_time reserveImpos"><a>20 : 00</a></td>
									<td class="thema_time reservePos"><a>21 : 30</a></td>
									<td class="thema_time reserveImpos"><a>23 : 00</a></td>
									<td class=""><a></a></td>
								</tr>
							</table>
	
						</div>
	
						<div id="admin_reserve_change_Btns">
							<button class="lbutton">저장</button>
						</div>
					</form>

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

<script>
	$(".thema").on("click", function() {
		if ($(this).hasClass("yellow_colorOn")) {
			$(this).removeClass("yellow_colorOn");
		} else {
			$(this).addClass("yellow_colorOn");
		}

	});

	$(".thema_time").on("click", function() {
		if ($(this).hasClass("timeover")) {
			$(this).removeClass("thema_time");
		} else {
			if ($(this).hasClass("reservation_completed")) {
			} else {
				if ($(this).hasClass("reservePos")) {
					$(this).removeClass("reservePos");
					$(this).addClass("reserveImpos");
				} else {
					$(this).removeClass("reserveImpos");
					$(this).addClass("reservePos");
				}
			}

		}

	});
</script>


</html>