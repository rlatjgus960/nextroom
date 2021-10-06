<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/aside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/adminReserve.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/modal.css" rel="stylesheet" type="text/css">

<script src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/js/jquery-ui-1.12.1.custom/jquery-ui.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>

<script>
	$(function() {

		$('#datepicker').datepicker(
				{

					onSelect : function(dateText) {
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
				<div id="subheader-mintitle">관리자페이지 > 예약확인</div>
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
									<li><p class="selected">
											<a
												href="${pageContext.request.contextPath }/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}">&nbsp;-예약
												확인</a>
										</p></li>
									<li><a
										href="${pageContext.request.contextPath }/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}">&nbsp;-예약
											관리</a></li>
								</ul>
							</li>
							<li>기록
								<ul class="aside_mini_cate">
									<li><a
										href="${pageContext.request.contextPath }/admin/record">&nbsp;-기록
											입력</a></li>
									<li><a
										href="${pageContext.request.contextPath }/admin/recordModify">&nbsp;-기록
											관리</a></li>
								</ul>
							</li>
							<li><a
								href="${pageContext.request.contextPath }/admin/cafeModifyForm">카페
									소개 관리</a></li>
							<li><a
								href="${pageContext.request.contextPath }/admin/${authUser.cafeNo }/themeList">카페
									테마 관리</a></li>
						</ul>

					</div>

				</div>
				<!-- //aside -->


				<div id="adminMain" class="clearfix">
					<!--컨텐츠 여기에 작성하세요 !!!!!!!!!-->
					<form action="${pageContext.request.contextPath}/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}" method="get">
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
												onclick="location.href='${pageContext.request.contextPath}/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}?themeNo=${thList.themeNo}';">${thList.themeName}</td>
											<input type='hidden' name="themeNo" value="${thList.themeNo}">
										</c:when>
										<c:otherwise>
											<td class="thema"
												onclick="location.href='${pageContext.request.contextPath}/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}?themeNo=${thList.themeNo}';">${thList.themeName}</td>
										</c:otherwise>
									</c:choose>

									<c:if test="${status.last}">
										<c:if test="${3-(thList.themeNo%3) eq 1}">
											<td></td>
										</c:if>

										<c:if test="${3-(thList.themeNo%3) eq 2}">
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

						<div id="admin_reservation_date">
							<div id="datepicker"></div>
							<input type="text" id="datepicker2" name="reserveDate">
						</div>

						<div id="admin_reserve_change_Btns">
							<button class="lbutton">확인</button>
						</div>
					</form>

					<div id="admin_reservation_table_select">
						<select name="doneSelect">
							<option value="all" selected="selected">전체보기</option>
							<option value="done">완료</option>
							<option value="not_done">미완료</option>
						</select> 
					</div>


					<div id="record_table">
						<table>
							<tr>
								<th>테마</th>
								<th>예약번호</th>
								<th>예약날짜</th>
								<th>시간</th>
								<th>인원</th>
								<th>예약자이름</th>
								<th>결제상태</th>
							</tr>

							<c:forEach items="${listMap.themeReserveList}" var="trList" varStatus="status">
								<tr class="theme_reserve_modal" data-reserveno="${trList.reserveNo}" data-paymentstate="${trList.paymentState}">
									<td>${trList.themeName}</td>
									<td>${trList.reserveNo}</td>
									<td>${trList.reserveDate}</td>
									<td>${trList.reserveTime}</td>
									<td>${trList.reservePerson}</td>
									<td>${trList.reserveName}</td>
									<td>
										<c:if test="${trList.paymentState eq 1}">
											결제완료
										</c:if>
										<c:if test="${trList.paymentState eq 2}">
											결제취소
										</c:if>
									</td>
								</tr>
							</c:forEach>
							
							<!-- <tr class="theme_reserve_modal beforePlay">
								<td>비밀의화원 미드나잇</td>
								<td>392002039</td>
								<td>2021-08-27</td>
								<td>12:30</td>
								<td>3인</td>
								<td>세일러문</td>
								<td>입력</td>
							</tr> -->




						</table>
					</div>

					<div id="paging" class="clearfix">
						<ul>
							<c:if test="${listMap.prev == true}">
								<li><a href="${pageContext.request.contextPath}/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}?crtPage=${listMap.startPageBtnNo-1}&themeNo=${param.themeNo}&reserveDate=${param.reserveDate}">◀</a></li>
							</c:if>
							<c:forEach begin="${listMap.startPageBtnNo }" end="${listMap.endPageBtnNo }" step="1" var="page">
								<c:choose>
									<c:when test="${param.crtPage eq page}">
										<li class="active"><a href="${pageContext.request.contextPath}/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}?crtPage=${page}&themeNo=${param.themeNo}&reserveDate=${param.reserveDate}">${page}</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="${pageContext.request.contextPath}/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}?crtPage=${page}&themeNo=${param.themeNo}&reserveDate=${param.reserveDate}">${page }</a></li>
									</c:otherwise>
								</c:choose>
								
							</c:forEach>
							<c:if test="${listMap.next == true}">
								<li><a href="${pageContext.request.contextPath}/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}?crtPage=${listMap.endPageBtnNo+1}&themeNo=${param.themeNo}&reserveDate=${param.reserveDate}">▶</a></li>
							</c:if>
						</ul>


						<div class="clear"></div>
					</div>


				</div>
			</div>

			<!-- contentMain -->

		</div>
		<!-- //content -->


		<!-- 모달 -->
		<div id="admin_reserveitem_modal">

			<div class="admin_reserveitem_modal_content">

				<a id="modal_close_btn"><img
					src="${pageContext.request.contextPath }/assets/image/mypageEtc/closeBtn.JPG"></a>

				<div id="admin_reserveitem_table_item">
					<table id="admin_reserveitem_check_table">
						<tr>
							<td id="reservation_thema_img" rowspan="5"><img id="modal_themeImg" src=""></td>
							<th>예약번호</th>
							<td id="modal_reserveNo"></td>
							<th>예약자</th>
							<td id="modal_reserveName"></td>
						</tr>

						<tr>
							<th>지점</th>
							<td id="modal_cafeName"></td>
							<th>연락처</th>
							<td id="modal_reserveHp"></td>
						</tr>

						<tr>
							<th>테마</th>
							<td id="modal_themeName"></td>
							<th>결제금액</th>
							<td id="modal_payment"></td>
						</tr>

						<tr>
							<th>예약일시</th>
							<td id="modal_reserveDateTime" colspan="3"></td>
						</tr>

						<tr>
							<th>인원</th>
							<td id="modal_reservePerson" colspan="3"></td>
						</tr>
					</table>



					<div id="admin_reserve_Btns">
						<button id="checkIn" class="mbutton">입실확인</button>
						<button id="delReserve" class="mbutton">예약취소</button>
					</div>
				</div>
				
				<input type='hidden' name="rDate" value="${param.reserveDate}">
				<input id="resDate" type='hidden' name="resDate" value="">
				<input id="tNo" type='hidden' name="tNo" value="">



			</div>

			<div class="admin_reserveitem_modal_layer"></div>
		</div>

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

	$(".theme_reserve_modal").on("click", function() {
		$("#admin_reserveitem_modal").attr("style", "display:block");
		document.body.classList.add("stop-scroll");
		
		var paymentState = $(this).data("paymentstate");
		console.log(paymentState);
		
		if(paymentState === 2) {
			$("#admin_reserve_Btns").hide();
		} else if(paymentState === 1) {
			$("#admin_reserve_Btns").show();
		}
		
		
		var reserveNo = $(this).data("reserveno");
		console.log(reserveNo); 
		
		
		$.ajax({
			url: "${pageContext.request.contextPath}/admin/reserve/reserveModal",
			type: "post",
			data : { reserveNo : reserveNo },
			
			//dataType: "json",
			success : function(reserveModalVo) {
				console.log(reserveModalVo);
				
				var path = "${pageContext.request.contextPath }/assets/image/" + reserveModalVo.themeImg;
				var time = reserveModalVo.reserveTime.split(":");
				
				var year = (reserveModalVo.reserveDate).substring(0,4);
				console.log(year);
				
				var month = (reserveModalVo.reserveDate).substring(4,6);
				console.log(month);
				
				var day = (reserveModalVo.reserveDate).substring(6,8);
				console.log(day);
				
				$('#modal_themeImg').attr('src',path);
				
				$("#modal_reserveNo").text(reserveModalVo.reserveNo);
				$("#modal_reserveName").text(reserveModalVo.reserveName);
				$("#modal_cafeName").text(reserveModalVo.cafeName);
				$("#modal_reserveHp").text(reserveModalVo.reserveHp);
				$("#modal_themeName").text(reserveModalVo.themeName);
				$("#modal_payment").text(reserveModalVo.payment+"원");
				$("#modal_reserveDateTime").text(year + "년 " + month + "월 " + day + "일 " + time[0]+"시 "+time[1]+"분");
				$("#modal_reservePerson").text(reserveModalVo.reservePerson+"인");
				
				$("#tNo").val(reserveModalVo.themeNo);
				$("#resDate").val(reserveModalVo.reserveDate);
				
				//예약취소
				$("#delReserve").on("click", function() {
					
					console.log("예약 취소 클릭");
					
					$.ajax({
						url: "${pageContext.request.contextPath}/admin/reserve/delReserve",
						type: "post",
						data : { reserveNo : reserveNo },
						
						//dataType: "json",
						success : function(count) {
							if(count === 1) {
								$("#admin_reserveitem_modal").attr("style", "display:none");
								document.body.classList.remove("stop-scroll");
								window.location.reload();
							}
							
								
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
					});
				});
				
				
				//입실확인
				$("#checkIn").on("click", function() {
					
					console.log("입실확인 클릭");
					var reserveP = $("#modal_reservePerson").text();
					var person = reserveP.slice(0, -1);
					//console.log(person);
					
					var adminReserveVo = {
						themeNo : $("[name='tNo']").val(),
						reserveNo : reserveNo,
						totalPerson : person,
						reserveDate : $("[name='resDate']").val()
					};
					
					console.log(adminReserveVo);
					
					$.ajax({
						url: "${pageContext.request.contextPath}/admin/reserve/checkIn",
						type: "post",
						data : adminReserveVo,
						
						//dataType: "json",
						success : function(count) {
							if(count === 1) {
								console.log("데이터 생성 완료")
								$("#admin_reserveitem_modal").attr("style", "display:none");
								document.body.classList.remove("stop-scroll");
								window.location.reload();
							}
							
								
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
					});
				});
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
		
		
		
		
		$.ajax({
			url: "${pageContext.request.contextPath}/admin/reserve/btnCheckIn",
			type: "post",
			data : { reserveNo : reserveNo },
			
			//dataType: "json",
			success : function(preR) {
				if(preR.gameState != null) {
					$("#admin_reserve_Btns").hide();
				} else {
					$("#admin_reserve_Btns").show();
				}
				
					
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

	$("#modal_close_btn").on("click", function() {
		$("#admin_reserveitem_modal").attr("style", "display:none");
		document.body.classList.remove("stop-scroll");

	});
</script>


</html>