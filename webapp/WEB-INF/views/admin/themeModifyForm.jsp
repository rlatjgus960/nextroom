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
	href="${pageContext.request.contextPath }/assets/css/adminTheme.css"
	rel="stylesheet" type="text/css">


<title>테마 수정</title>
</head>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>


<body>
	<!-- 헤더영역 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->

	<div id="wrap">

		<!-- content -->
		<div id="content">


			<div id="subheader" class="clearfix">
				<div id="subheader-title">
					<h2>넥스트에디션 강남신논현점</h2>
				</div>
				<div id="subheader-mintitle">관리자페이지 > 카페테마관리</div>



			</div>

			<!--Aside-->
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
								<li><a
									href="${pageContext.request.contextPath }/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}">&nbsp;-예약
										관리</a></li>
							</ul>
						</li>

						<li>기록
							<ul class="aside_mini_cate">
								<li><a
									href="${pageContext.request.contextPath }/admin/record/${sessionScope.authUser.cafeNo}">&nbsp;-기록
										입력</a></li>
								<li><a
									href="${pageContext.request.contextPath }/admin/record/modify/${sessionScope.authUser.cafeNo}">&nbsp;-기록
										관리</a></li>
							</ul>
						</li>

						<li><a
							href="${pageContext.request.contextPath }/admin/cafeModifyForm">카페
								소개 관리</a></li>
						<li class="selected"><a
							href="${pageContext.request.contextPath }/admin/${authUser.cafeNo }/themeList">카페
								테마 관리</a></li>
					</ul>

				</div>

			</div>
			<!--//Aside-->


			<!-- contentMain -->
			<div id="contentMain" class="clearfix">
				<div id="contentWrap">


					<p id="adminTheme_subHeader">| 카페 테마 수정</p>
					<select id="themeSelect" name="themeSelect"
						class="cafe_explain_selectBox">
						<c:forEach items="${themeList}" var="themeList">
							<c:choose>
								<c:when test="${themeList.themeName eq themeVo.themeName}">
									<option value="${themeList.themeNo }" selected="selected">${themeList.themeName }</option>
								</c:when>
								<c:otherwise>
									<option value="${themeList.themeNo }">${themeList.themeName }</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>


					<form id="themeModifyForm"
						action="${pageContext.request.contextPath }/admin/theme/modify"
						method="post" enctype="multipart/form-data">
						<input type="hidden" name="themeNo" value="${themeVo.themeNo }">
						<input type="hidden" name="cafeNo" value="${themeVo.cafeNo }">
						<div id="addThwme_formDiv" class="clearfix">
							<div id="previewArea">
								<!-- 테마 리스트에 출력되는 내용 영역 -->
								<div id="theme_poster_wrap">
									<p class="cafModi_subTitle">테마 포스터</p>
									<img alt=""
										src="${pageContext.request.contextPath }/upload/${themeVo.themeImg }">
									<input type="file" name="themeImgFile">
								</div>

								<div id="theme_explain_wrap">
									<div id="" class="theme_explain_item clearfix">
										<p class="addTheme_subTitle">제목</p>
										<input type="text" id="themeTitle" name="themeName"
											placeholder="제목을 입력해주세요." value="${themeVo.themeName }">
									</div>

									<div id="previewArea_left">

										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">장르</p>
											<select id="themeGenre" name="jenre"
												class="cafe_explain_selectBox">
												<option value="" disabled>장르를 선택해주세요.</option>
												<c:forEach items="${genreList }" var="genreList">
													<c:choose>
														<c:when test="${genreList.jenre eq themeVo.jenre}">
															<option value="${genreList.jenre }" selected="selected">${genreList.jenre }</option>
														</c:when>
														<c:otherwise>
															<option value="${genreList.jenre }">${genreList.jenre }</option>
														</c:otherwise>
													</c:choose>
												</c:forEach>


												<!-- <option value="thriller">스릴러</option>
												<option value="sensitivity">감성</option>
												<option value="romance">로맨스</option>
												<option value="crime">범죄</option>
												<option value="comedy">코미디</option>
												<option value="adventure">모험</option>
												<option value="fantasy">판타지</option>
												<option value="adult">19금</option>
												<option value="horror">공포</option>
												<option value="drama">드라마</option>
												<option value="mystery">미스터리</option>
												<option value="acade">아케이드</option>
												<option value="action">액션</option>
												<option value="outside">야외</option>
												<option value="music">음악</option>
												<option value="sneak">잠입</option>
												<option value="history">역사</option>
												<option value="sf" selected="selected">공상과학</option>
												<option value="qmark">?</option> -->

											</select>
										</div>


										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">난이도</p>
											<select id="themeLevel" name="levels"
												class="cafe_explain_selectBox">
												<option value="" disabled>난이도를 선택해주세요.</option>
												<option value="1"
													<c:if test="${themeVo.levels == 1}">selected="selected"</c:if>>★</option>
												<option value="2"
													<c:if test="${themeVo.levels == 2}">selected="selected"</c:if>>★★</option>
												<option value="3"
													<c:if test="${themeVo.levels == 3}">selected="selected"</c:if>>★★★</option>
												<option value="4"
													<c:if test="${themeVo.levels == 4}">selected="selected"</c:if>>★★★★</option>
												<option value="5"
													<c:if test="${themeVo.levels == 5}">selected="selected"</c:if>>★★★★★</option>
											</select>
										</div>

										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">유형</p>
											<select id="themeType" name="themeType"
												class="cafe_explain_selectBox">
												<option value="" selected="selected" disabled>유형을
													선택해주세요.</option>
												<option value="자물쇠 위주"
													<c:if test="${themeVo.themeType eq '자물쇠 위주'}">selected="selected"</c:if>>자물쇠
													위주</option>
												<option value="장치 위주"
													<c:if test="${themeVo.themeType eq '장치 위주'}">selected="selected"</c:if>>장치
													위주</option>
												<option value="자물쇠/장치 반반"
													<c:if test="${themeVo.themeType eq '자물쇠/장치 반반'}">selected="selected"</c:if>>자물쇠/장치
													반반</option>
											</select>
										</div>



									</div>

									<div id="previewArea_right">


										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">추천 플레이인원</p>
											<input id="recommandMinNum" name="pRecommendMin"
												type="number" placeholder="최소인원"
												value="${themeVo.pRecommendMin }"> <span>&nbsp;~&nbsp;</span>
											<input id="recommandMaxNum" name="pRecommendMax"
												type="number" placeholder="최대인원"
												value="${themeVo.pRecommendMax }">
										</div>


										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">플레이타임</p>
											<select id="playTime" name="playTime"
												class="cafe_explain_selectBox">
												<option value="" disabled>플레이타임을 선택해주세요.</option>
												<option value="60"
													<c:if test="${themeVo.playTime == 60}">selected="selected"</c:if>>60분</option>
												<option value="65"
													<c:if test="${themeVo.playTime == 65}">selected="selected"</c:if>>65분</option>
												<option value="70"
													<c:if test="${themeVo.playTime == 70}">selected="selected"</c:if>>70분</option>
												<option value="75"
													<c:if test="${themeVo.playTime == 75}">selected="selected"</c:if>>75분</option>
												<option value="80"
													<c:if test="${themeVo.playTime == 80}">selected="selected"</c:if>>80분</option>
												<option value="85"
													<c:if test="${themeVo.playTime == 85}">selected="selected"</c:if>>85분</option>
												<option value="90"
													<c:if test="${themeVo.playTime == 90}">selected="selected"</c:if>>90분</option>
												<option value="95"
													<c:if test="${themeVo.playTime == 95}">selected="selected"</c:if>>95분</option>
												<option value="100"
													<c:if test="${themeVo.playTime == 100}">selected="selected"</c:if>>100분</option>
												<option value="105"
													<c:if test="${themeVo.playTime == 105}">selected="selected"</c:if>>105분</option>
												<option value="110"
													<c:if test="${themeVo.playTime == 110}">selected="selected"</c:if>>110분</option>
												<option value="115"
													<c:if test="${themeVo.playTime == 115}">selected="selected"</c:if>>115분</option>
												<option value="120"
													<c:if test="${themeVo.playTime == 120}">selected="selected"</c:if>>120분</option>
												<option value="125"
													<c:if test="${themeVo.playTime == 125}">selected="selected"</c:if>>125분</option>
												<option value="130"
													<c:if test="${themeVo.playTime == 130}">selected="selected"</c:if>>130분</option>
												<option value="135"
													<c:if test="${themeVo.playTime == 135}">selected="selected"</c:if>>135분</option>
												<option value="140"
													<c:if test="${themeVo.playTime == 140}">selected="selected"</c:if>>140분</option>
												<option value="145"
													<c:if test="${themeVo.playTime == 145}">selected="selected"</c:if>>145분</option>
												<option value="150"
													<c:if test="${themeVo.playTime == 150}">selected="selected"</c:if>>150분</option>
												<option value="155"
													<c:if test="${themeVo.playTime == 155}">selected="selected"</c:if>>155분</option>
												<option value="160"
													<c:if test="${themeVo.playTime == 160}">selected="selected"</c:if>>160분</option>
												<option value="165"
													<c:if test="${themeVo.playTime == 165}">selected="selected"</c:if>>165분</option>
												<option value="170"
													<c:if test="${themeVo.playTime == 170}">selected="selected"</c:if>>170분</option>
												<option value="175"
													<c:if test="${themeVo.playTime == 175}">selected="selected"</c:if>>175분</option>
												<option value="180"
													<c:if test="${themeVo.playTime == 180}">selected="selected"</c:if>>180분</option>
											</select>
										</div>

										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">활동성</p>
											<select id="activity" name="activity"
												class="cafe_explain_selectBox">
												<option value="" disabled>활동성을 선택해주세요.</option>
												<option value="적음"
													<c:if test="${themeVo.activity eq '적음'}">selected="selected"</c:if>>적음</option>
												<option value="보통"
													<c:if test="${themeVo.activity eq '보통'}">selected="selected"</c:if>>보통</option>
												<option value="많음"
													<c:if test="${themeVo.activity eq '많음'}">selected="selected"</c:if>>많음</option>
											</select>
										</div>



									</div>

								</div>

							</div>


							<div id="non-previewArea">
								<!-- 테마 리스트에 출력되지 않는 내용 영역 -->
								<div id="themeExplain" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">소개글</p>
									<textarea name="themeIntro" rows="" cols="">${themeVo.themeIntro }</textarea>
								</div>

								<div id="" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">수용가능 플레이인원</p>
									<input id="peopleMinNum" name="pMin" type="number"
										placeholder="최소인원" value="${themeVo.pMin }"> <span>&nbsp;~&nbsp;</span>
									<input id="peopleMaxNum" name="pMax" type="number"
										placeholder="최대인원" value="${themeVo.pMax }">
									<button type="button" id="btnPlayNum" class="mbutton">확인</button>
								</div>


								<!-- 수용인원이 입력되지 않았을때 -->
								<!-- <div id="themePrice" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">가격</p>
									수용 최소, 최대인원을 먼저 입력해주세요.
								</div> -->

								<!-- 수용인원이 입력되었을때 -->
								<!-- <div id="themePrice" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">가격</p>

									가격입력칸 반복영역
									<label for="themePrice2">2인<input type="number" class="themePrice"
										name="themePrice2" value="44000">원
									</label> <label for="themePrice3">3인<input type="number" class="themePrice"
										name="themePrice3" value="60000">원
									</label> <label for="themePrice4">4인<input type="number" class="themePrice"
										name="themePrice4" value="72000">원
									</label> <label for="themePrice5">5인<input type="number" class="themePrice"
										name="themePrice5" value="90000">원
									</label>
									//가격입력칸 반복영역
								</div> -->





								<div id="addthemePrice" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">가격</p>
									<c:forEach items="${priceList }" var="priceList">
										<div class="priceWrap">
											<div class="headC">${priceList.headCount }인</div>
											<input type="hidden" name="headCount"
												value="${priceList.headCount }"><input type="number"
												class="themePrice" name="price" value="${priceList.price }">원
										</div>
									</c:forEach>

								</div>


								<div id="themeTime" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">시간표</p>

									<div id="themeTimeWrap">
										<!-- 시간표 반복영역 -->
										<input type="hidden" value="">

										<c:forEach items="${timeList }" var="timeList">
											<c:set var="i" value="${i+1 }" />
											<div id="d-${i }" class="clearfix timeWrap">
												<input class="themeTimeSelect" name="themeTime" type="time"
													value="${timeList.themeTime }"> <img
													data-no="${i }" class="removeTime"
													src="${pageContext.request.contextPath }/assets/image/admin/xmark.png">
											</div>

										</c:forEach>
										<input id="i" type="hidden" value="${i }">


										<!-- 										<div class="clearfix timeWrap" id="d-2"> -->
										<!-- 											<input class="themeTimeSelect" name="themeStartTime" type="time"> <img -->
										<!-- 												data-no="2" class="removeTime" -->
										<%-- 												src="${pageContext.request.contextPath }/assets/image/admin/xmark.png"> --%>
										<!-- 										</div> -->


										<!-- 										<div class="clearfix timeWrap" id="d-3"> -->
										<!-- 											<input class="themeTimeSelect" name="themeStartTime" type="time"> <img -->
										<!-- 												data-no="3" class="removeTime" -->
										<%-- 												src="${pageContext.request.contextPath }/assets/image/admin/xmark.png"> --%>
										<!-- 										</div> -->

										<!-- //시간표 반복영역 -->
									</div>

									<button type="button" id="btnAddTime" class="mbutton">시간
										추가</button>
								</div>

							</div>

						</div>

						<div id="addTheme_button">

							<button id="deleteBtn" type="submit" class="mbutton">삭제</button>
							<button id="updateBtn" type="submit" class="mbutton">수정</button>
							<button id="cancelBtn" type="submit" class="mbutton">취소</button>

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


<script type="text/javascript">
	var i = $("#i").val();
	console.log(i);

	$("#btnPlayNum")
			.on(
					"click",
					function() {

						console.log("플레이인원 확인 버튼 클릭");

						$(".priceWrap").remove();

						var pMin = $("#peopleMinNum").val();
						var pMax = $("#peopleMaxNum").val();

						console.log(pMin);
						console.log(pMax);

						var j = pMax - pMin;

						// 						$("#nonThemePrice").css("display", "none");
						// 						$("#themePrice").css("display", "block");

						for (var i = 0; i <= j; i++) {
							$("#addthemePrice")
									.append(
											"<div class='priceWrap'><div class='headC'>"
													+ pMin
													+ "인</div><input type='hidden' name='headCount' value='"
		            +pMin+"'><input type='number' class='themePrice' name='price'>원</div>");
							pMin++;
						}

					});

	// 	var i = 4; // 변수설정은 함수의 바깥에 설정

	$("#btnAddTime")
			.on(
					"click",
					function() {

						console.log("시간 추가 버튼 클릭");

						$("#themeTimeWrap")
								.append(
										"<div id='d-"+ i + "' class='clearfix timeWrap'> <input type='time' class='themeTimeSelect' name='themeTime'>&nbsp;<img data-no='"+ i + "' class='removeTime' src='${pageContext.request.contextPath }/assets/image/admin/xmark.png'></div>")

						i++; // 함수 내 하단에 증가문 설정

					});

	$("#themeTimeWrap").on("click", ".removeTime", function() {

		var no = $(this).data("no");

		console.log("시간 삭제 버튼 클릭");

		$("#d-" + no).remove();

	});

	$("#updateBtn").on(
			"click",
			function() {

				if ($("[name='themeName']").val() == ''
						|| $("[name='themeName']").val() == null) {

					alert("제목을 입력해주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='jenre']").val() == ''
						|| $("[name='jenre']").val() == null) {

					alert("장르를 선택해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='levels']").val() == ''
						|| $("[name='levels']").val() == null) {

					alert("난이도를 선택해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='themeType']").val() == ''
						|| $("[name='themeType']").val() == null) {

					alert("유형을 선택해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='pRecommendMin']").val() == ''
						|| $("[name='pRecommendMin']").val() == null) {

					alert("추천인원 최솟값을 입력해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='pRecommendMax']").val() == ''
						|| $("[name='pRecommendMax']").val() == null) {

					alert("추천인원 최댓값을 입력해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='playTime']").val() == ''
						|| $("[name='playTime']").val() == null) {

					alert("플레이타임을 선택해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='activity']").val() == ''
						|| $("[name='activity']").val() == null) {

					alert("활동성을 선택해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='themeIntro']").val() == ''
						|| $("[name='themeIntro']").val() == null) {

					alert("소개글을 입력해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='pMin']").val() == ''
						|| $("[name='pMin']").val() == null) {

					alert("수용가능 최소인원을 입력해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='pMax']").val() == ''
						|| $("[name='pMax']").val() == null) {

					alert("수용가능 최대인원을 입력해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='price']").val() == ''
						|| $("[name='price']").val() == null) {

					alert("가격을 한개 이상 입력해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='themeTime']").val() == ''
						|| $("[name='themeTime']").val() == null) {

					alert("시간을 한개 이상 입력해 주세요");
					event.preventDefault();
					return flase;
				} else {
					$("#themeModifyForm").submit();
				}

			});

	$("#deleteBtn")
			.on(
					"click",
					function() {

						var themeNo = $("[name=themeNo]").val();
						var cafeNo = $("[name=cafeNo]").val();

						if (!confirm("테마를 정말 삭제하시겠습니까?")) {
							//아니오
						} else {
							//예
							console.log("테마 삭제");

							console.log(themeNo);
							console.log(cafeNo);

							$
									.ajax({
										url : "${pageContext.request.contextPath}/admin/theme/delete",
										type : "get",
										data : {
											themeNo : themeNo
										},

										dataType : "json",
										success : function(count) {
											console.log(count);
											if (count === 1) {

												location
														.replace("${pageContext.request.contextPath}/admin/"
																+ cafeNo
																+ "/themeList")
												alert("테마가 삭제되었습니다.");
											}

										},
										error : function(XHR, status, error) {
											console.error(status + " : "
													+ error);
										}
									});
						}
					});

	$("#cancelBtn").on(
			"click",
			function() {

				var cafeNo = $("[name=cafeNo]").val();
				location.replace("${pageContext.request.contextPath}/admin/"
						+ cafeNo + "/themeList")

			});
</script>



</html>