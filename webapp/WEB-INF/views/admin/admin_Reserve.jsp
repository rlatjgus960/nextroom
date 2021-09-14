<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				<div id="subheader-mintitle">관리자페이지 > 예약확인</div>
			</div>


			<!-- contentMain -->
			<div id="contentMain" class="clearfix">
			
				<!-- aside -->
				<c:import url="/WEB-INF/views/includes/admin_aside.jsp"></c:import>
				<!-- //aside -->

				<div id="adminMain" class="clearfix">
					<!--컨텐츠 여기에 작성하세요 !!!!!!!!!-->
					<div id="admin_reservation_date">
						<div id="datepicker"></div>
					</div>

					<div id="admin_reservation_themas">
						<table>
							<tr>
								<td class="thema"><a>아뜰리에</a></td>
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

					<div id="admin_reservation_table_select" class="clearfix ">
						<select name="doneSelect">
							<option value="all">전체보기</option>
							<option value="done">완료</option>
							<option value="not_done">미완료</option>
						</select>
					</div>
					
					<!-- 예약날짜 -->
                    <div id="admin_reservation_table_select" class="clearfix ">
                        <select name="termSelect">
                            <option value="all">전체보기</option>
                            <option value="oneWeek">최근 1주일보기</option>
                            <option value="oneMonth">최근 1개월보기</option>
                            <option value="threeMonth">최근 3개월보기</option>
                            <option value="sixMonth">최근 6개월 보기</option>
                        </select>
                    </div>

					<div id="record_table">
						<table>
							<tr>
								<th>테마</th>
								<th>예약번호</th>
								<th>예약날짜<input type="hidden" id="datepicker"></th>
								<th>시간</th>
								<th>인원</th>
								<th>예약자이름</th>
								<th></th>
							</tr>

							<tr class="cafe_btn_viewmap">
								<td>비밀의화원 미드나잇</td>
								<td>392002039</td>
								<td>2021-08-27</td>
								<td>12:30</td>
								<td>3인</td>
								<td>세일러문</td>
								<td>입력</td>
							</tr>

							<tr>
								<td>싸인이스케이프 홍대점</td>
								<td>392002039</td>
								<td>2021.07.08</td>
								<td>2021070822</td>
								<td>No hint</td>
								<td>1인</td>
								<td>탈출완료</td>
							</tr>

							<tr>
								<td>비밀의화원 미드나잇</td>
								<td>392002039</td>
								<td>2021.08.27</td>
								<td>57m 40s</td>
								<td>3 hints</td>
								<td>2인</td>
								<td>탈출실패</td>
							</tr>

							<tr>
								<td>싸인이스케이프 홍대점</td>
								<td>2021.07.08</td>
								<td>2021070822</td>
								<td>No hint</td>
								<td></td>
								<td>1인</td>
								<td>탈출완료</td>
							</tr>

							<tr>
								<td>싸인이스케이프 홍대점</td>
								<td>392002039</td>
								<td>2021.07.08</td>
								<td>2021070822</td>
								<td>No hint</td>
								<td>1인</td>
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

					

					<div id="admin_reserve_Btns">
						<button class="mbutton">입실확인</button>
						<button class="mbutton">예약취소</button>
					</div>
				</div>



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
		if ($(this).hasClass("colorOn")) {
			$(this).removeClass("colorOn");
		} else {
			$(this).addClass("colorOn");
		}

	});
	
	$(".cafe_btn_viewmap").on("click", function() {
		$("#admin_reserveitem_modal").attr("style", "display:block");
		document.body.classList.add("stop-scroll");

	});

	$("#modal_close_btn").on("click", function() {
		$("#admin_reserveitem_modal").attr("style", "display:none");
		document.body.classList.remove("stop-scroll");

	});
</script>
</html>