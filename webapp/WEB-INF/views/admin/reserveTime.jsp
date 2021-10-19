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
	/* $(function() {
		$("#datepicker").datepicker({ minDate: 0});
	}); */
	$(function() {
		

		$('#datepicker').datepicker( {

			minDate: 0,
			onSelect : function(dateText)
			{
				$('#datepicker2').datepicker("setDate", $(this).datepicker("getDate"));
			}
		});
		

	});

	$(function() {

		$("#datepicker2").datepicker();
		$("#datepicker2").datepicker("option", "dateFormat", "yy-mm-dd");
		$('#datepicker2').datepicker('setDate', 'today');

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
									<li><a
										href="${pageContext.request.contextPath }/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}">&nbsp;-예약
											확인</a></li>
									<li><p class="selected">
											<a
												href="${pageContext.request.contextPath }/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}">&nbsp;-예약
												관리</a>
										</p></li>
								</ul>
							</li>

							<li>기록
								<ul class="aside_mini_cate">
									<li><p><a href="${pageContext.request.contextPath }/admin/record/${sessionScope.authUser.cafeNo}">&nbsp;-기록 입력</a></p></li>
									<li><a href="${pageContext.request.contextPath }/admin/record/modify/${sessionScope.authUser.cafeNo}">&nbsp;-기록 관리</a></li>
								</ul>
							</li>

							<li><a
								href="${pageContext.request.contextPath }/admin/cafeModifyForm">카페
									소개 관리</a></li>
							<li><a
								href="${pageContext.request.contextPath }/admin/themeList">카페
									테마 관리</a></li>
						</ul>

					</div>

				</div>
				<!-- //aside -->

				<div id="adminMain" class="clearfix">
						<!--컨텐츠 여기에 작성하세요 !!!!!!!!!-->

					<form action="${pageContext.request.contextPath}/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}" method="get">
						<div id="resreveWrap" class="clearfix">
						<div id="admin_reservation_themas">
							<table>
								<c:set var="i" value="0" />
								<c:set var="j" value="3" />

								<c:forEach items="${themeList}" var="thList" varStatus="status">
									<c:if test="${i%j==0}">
										<tr>
									</c:if>

									<c:choose>
										<c:when test="${themeNo eq thList.themeNo}">
											<td class="thema yellow_colorOn"
												onclick="location.href='${pageContext.request.contextPath}/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}?themeNo=${thList.themeNo}';">${thList.themeName}</td>
												<input type='hidden' name="themeNo" value="${thList.themeNo}">
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${thList.state eq 'disable'}">
													<td class="thema disableTheme" onclick="location.href='${pageContext.request.contextPath}/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}?themeNo=${thList.themeNo}';">${thList.themeName}</td>
												</c:when>
												<c:otherwise>
														<td class="thema" onclick="location.href='${pageContext.request.contextPath}/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}?themeNo=${thList.themeNo}';">${thList.themeName}</td>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>

									<c:if test="${status.last}">
										
										<c:if test="${3-(status.count%3) eq 1}">
											<td></td>
										</c:if>

										<c:if test="${3-(status.count%3) eq 2}">
											<td></td>
											<td></td>
										</c:if>
										
										<c:if test="${3-(status.count%3) eq 3}">
											<c:if test="${status.count eq 6 }">
												<tr>
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</c:if>
										</c:if>
										
										
									</c:if>
									

									<c:if test="${i%j==j-1}">
										</tr>
									</c:if>
									
									<c:if test="${status.last}">
										<c:if test="${status.count eq 5 || status.count eq 4}">
											<tr>
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</c:if>
										
										<c:if test="${status.count eq 1 || status.count eq 2 || status.count eq 3}">
											<tr>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											
											<tr>
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</c:if>
										
									</c:if>
									
										
									<c:set var="i" value="${i+1 }" />
									
									
								</c:forEach>
							</table>
						</div>
						
						<div id="admin_reservation_date">
							<div id="datepicker"></div>
							<input type="hidden" id="datepicker2" name="reserveDate">


						</div>
						</div>
						
						<div id="admin_reserve_change_Btns">
							<button class="lbutton">확인</button>
						</div>
						
					</form>


						<c:if test="${!empty timeList}">
						
							<!-- 예약날짜 -->
							<div id="admin_reservation_thema_time_color" class="clearfix ">
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
						</c:if>


						<div id="admin_reservation_thema_time">
							<table>
								<c:set var="i" value="0" />
								<c:set var="j" value="5" />

								<c:forEach items="${timeList}" var="tiList" varStatus="status">
									<c:if test="${i%j==0 }">
										<tr>
									</c:if>

									<c:if test="${tiList.reserveState eq 1}">
										<td class="thema_time reservePos" data-themetimeno = "${tiList.themeTimeNo}" data-themetime = "${tiList.themeTime }">${tiList.themeTime }</td>
									</c:if>
									
									<c:if test="${tiList.reserveState eq 2}">
										<td class="thema_time reservation_completed" data-themetimeno = "${tiList.themeTimeNo}" data-themetime = "${tiList.themeTime }">${tiList.themeTime }</td>
									</c:if>
									
									<c:if test="${tiList.reserveState eq 3}">
										<td class="thema_time reserveImpos" data-themetimeno = "${tiList.themeTimeNo}" data-themetime = "${tiList.themeTime }">${tiList.themeTime }</td>
									</c:if>
									
									<c:if test="${status.last}">
										<c:if test="${5-(tiList.themeTimeNo%5) eq 1}">
											<td></td>
										</c:if>

										<c:if test="${5-(tiList.themeTimeNo%5) eq 2}">
											<td></td>
											<td></td>
										</c:if>

										<c:if test="${5-(tiList.themeTimeNo%5) eq 3}">
											<td></td>
											<td></td>
											<td></td>
										</c:if>

										<c:if test="${5-(tiList.themeTimeNo%5) eq 4}">
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</c:if>
									</c:if>

									<c:if test="${i%j==j-1}">
										</tr>
									</c:if>

									<c:set var="i" value="${i+1 }" />
								</c:forEach>


							</table>

						</div>

						
						
						<input type='hidden' name="cafeNo" value="${cafeNo}">
						<input type='hidden' name="rDate" value="${reserveDate}">

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

<script  type="text/javascript">
/*
	$(".thema_time").on("click", function() {
		if ($(this).hasClass("timeover")) { // 시간이 지났을 때
			$(this).removeClass("thema_time");
		} else {
			if ($(this).hasClass("reservation_completed")) { //예약 완료일 때
			} else {
				if ($(this).hasClass("reservePos")) { // 예약가능 -> 예약불가능
					
					if(!confirm("예약불가능으로 변경하시겠습니까?")) {
						//아니오
					} else {
						//예
						console.log("예약불가능으로 변경");
						
						var adminReserveVo = {
								cafeNo : $("[name='cafeNo']").val(),
								themeNo : $("[name='themeNo']").val(),
								themeTimeNo : $(this).data("themetimeno"),
								reserveDate : $("[name='reserveDate']").val(),
								reserveTime : $(this).data("themetime")
						};
						
						console.log(adminReserveVo);
						
						$.ajax({
							url : "${pageContext.request.contextPath}/admin/reserve/timeModify",
							type : "get",
							data : adminReserveVo,
							
							dataType : "json",
							success : function(count) {
								console.log(count);
								if(count === 1) {
									$(".thema_time").removeClass("reservePos");
									$(".thema_time").addClass("reserveImpos");
								} else {
									alert("예약불가능으로 변경 불가능합니다.");
								}
							},
							error : function(XHR, status, error) {
								console.error(status + " : " + error);
							}
						});
					}
					
					
					
					
				} else {
					$(this).removeClass("reserveImpos"); // 예약불가능 -> 예약가능
					$(this).addClass("reservePos");
				}
			}

		}

	});*/
	
	$(".thema_time").on("click", function() {
		$(this).addClass("timeClick");
		
		if(!confirm("예약상태를 변경하시겠습니까?")) {
			//아니오
		} else {
			//예
			console.log("예약불가능으로 변경");
			
			var adminReserveVo = {
					cafeNo : $("[name='cafeNo']").val(),
					themeNo : $("[name='themeNo']").val(),
					themeTimeNo : $(this).data("themetimeno"),
					reserveDate : $("[name='rDate']").val(),
					reserveTime : $(this).data("themetime")
			};
			
			console.log(adminReserveVo);
			
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/reserve/timeModify",
				type : "get",
				data : adminReserveVo,
				
				dataType : "json",
				success : function(count) {
					console.log(count);
					if(count === 3) {
						$(".timeClick").removeClass("reservePos");
						$(".timeClick").addClass("reserveImpos");
						$(".timeClick").removeClass("timeClick");
					} else if(count === 1){
						$(".timeClick").removeClass("reserveImpos");
						$(".timeClick").addClass("reservePos");
						$(".timeClick").removeClass("timeClick");
					} else if(count === 2) {
						$(".timeClick").removeClass("timeClick");
						alert("이미 예약완료된 시간입니다.");
					}
					
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		}
	});
	
	
</script>


</html>