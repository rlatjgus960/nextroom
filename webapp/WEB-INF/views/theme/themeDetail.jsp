<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/cafe.css" rel="stylesheet"
	type="text/css">


<title>테마 상세</title>
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

			<!-- main -->

			<div id="theme_detail_back" class="clearfix">
				<div id="theme_detail_wrap">
					<img id="theme_detail_mainImg"
						src="${pageContext.request.contextPath }/upload/${themeVo.themeImg}">
					<div id="theme_detail_text">
						<div id="theme_detail_title">
							<p id="theme_detail_themeTitle">${themeVo.themeName }</p>
							<p id="theme_detail_cafeName">${themeVo.cafeName }</p>
							<p id="theme_detail_content">${themeVo.themeIntro }</p>
						</div>

						<div id="theme_detail_info" class="">

							<span>장르 : </span><span>${themeVo.jenre}</span> | <span>추천인원 : </span><span>${themeVo.pRecommendMin}~${themeVo.pRecommendMax}인</span><br>
							<span>난이도 : </span>
							<span>
								<c:if test="${themeVo.levels == 5 }">
									★★★★★
								</c:if>
		
								<c:if test="${themeVo.levels == 4}">
									★★★★
								</c:if>
		
								<c:if test="${themeVo.levels == 3}">
									★★★
								</c:if>
		
								<c:if test="${themeVo.levels == 2}">
									★★
								</c:if>
		
								<c:if test="${themeVo.levels == 1}">
									★
								</c:if>
							
							
							</span> 
							
							
							
							
							| <span>플레이타임 : </span><span>${themeVo.playTime}분</span><br>
							
							<span>체감난이도 : </span>
							<span>
								<c:if test="${themeVo.aFeelLevel >= 4.5 }">
									★★★★★
								</c:if>
		
								<c:if test="${themeVo.aFeelLevel >= 3.5 && themeVo.aFeelLevel < 4.5}">
									★★★★
								</c:if>
		
								<c:if test="${themeVo.aFeelLevel >= 2.5 && themeVo.aFeelLevel < 3.5}">
									★★★
								</c:if>
		
								<c:if test="${themeVo.aFeelLevel >= 1.5 && themeVo.aFeelLevel < 2.5}">
									★★
								</c:if>
		
								<c:if test="${themeVo.aFeelLevel >= 0.5 && themeVo.aFeelLevel < 1.5}">
									★
								</c:if>
								<c:if test="${themeVo.aFeelLevel == 0}">
									-
								</c:if>	
								
								(${themeVo.aFeelLevel})
							</span> | 
							
							
							
							<span>평점 : </span>
							<span>
								<c:if test="${themeVo.aRating >= 4.5 }">
									★★★★★
								</c:if>
		
								<c:if test="${themeVo.aRating >= 3.5 && themeVo.aRating < 4.5}">
									★★★★
								</c:if>
		
								<c:if test="${themeVo.aRating >= 2.5 && themeVo.aRating < 3.5}">
									★★★
								</c:if>
		
								<c:if test="${themeVo.aRating >= 1.5 && themeVo.aRating < 2.5}">
									★★
								</c:if>
		
								<c:if test="${themeVo.aRating >= 0.5 && themeVo.aRating < 1.5}">
									★
								</c:if>	
								<c:if test="${themeVo.aRating == 0}">
									-
								</c:if>	
								
								(${themeVo.aRating})
							</span>
							
							
							
							
							<br> <span>유형
								: </span><span>${themeVo.themeType}</span> | <span>활동성 : </span><span>${themeVo.activity}</span>

						</div>


						<button class="lbutton" id="theme_party">이 테마의 모집중인 파티보기</button>

						<div id="theme_detail_btn">
							<button type="button" class="cbutton" id="theme_wish">관심테마등록</button>
							<button type="button" class="cbutton" id="theme_reserv">예약하기</button>
							<button
								onclick="location.href = '${pageContext.request.contextPath }/cafe/${themeVo.cafeNo }'"
								type="button" class="cbutton" id="theme_cafe">카페정보</button>
						</div>
					</div>

				</div>
			</div>



			<div id="theme_detail_timeTable">

				<p>| 시간표</p>

				<table id="theme_timeTable">
					<tbody>

						<!-- 테마 시간표 반복영역 -->
						<c:forEach items="${timeList}" var="timeList">
							<c:set var="i" value="${i+1 }" />
							<tr>
								<td>${i }</td>
								<td>${timeList.themeTime }</td>
							</tr>
						</c:forEach>
						<!-- //테마 시간표 반복영역 -->


					</tbody>

				</table>



			</div>



			<div id="theme_detail_price">

				<p>| 가격</p>

				<table id="theme_priceTable">
					<thead>
						<th>인원수</th>
						<th>${themeVo.themeName }(${themeVo.playTime }분)</th>
					</thead>

					<tbody>
						<c:forEach items="${priceList }" var="priceList">
							<tr>
								<td>${priceList.headCount }인</td>
								<td>${priceList.price }원</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>



			</div>





			<div id="theme_detail_review">

				<p>| 후기</p>


				<div>
					<p>${themeVo.reviewCount }개의
						후기, 평균 체감난이도
						<c:if test="${themeVo.aFeelLevel >= 4.5 }">
							★★★★★
						</c:if>

						<c:if test="${themeVo.aFeelLevel >= 3.5 && themeVo.aFeelLevel < 4.5}">
							★★★★
						</c:if>

						<c:if test="${themeVo.aFeelLevel >= 2.5 && themeVo.aFeelLevel < 3.5}">
							★★★
						</c:if>

						<c:if test="${themeVo.aFeelLevel >= 1.5 && themeVo.aFeelLevel < 2.5}">
							★★
						</c:if>

						<c:if test="${themeVo.aFeelLevel >= 0.5 && themeVo.aFeelLevel < 1.5}">
							★
						</c:if>
						(${themeVo.aFeelLevel}), 평점
						<c:if test="${themeVo.aRating >= 4.5 }">
							★★★★★
						</c:if>

						<c:if test="${themeVo.aRating >= 3.5 && themeVo.aRating < 4.5}">
							★★★★
						</c:if>

						<c:if test="${themeVo.aRating >= 2.5 && themeVo.aRating < 3.5}">
							★★★
						</c:if>

						<c:if test="${themeVo.aRating >= 1.5 && themeVo.aRating < 2.5}">
							★★
						</c:if>

						<c:if test="${themeVo.aRating >= 0.5 && themeVo.aRating < 1.5}">
							★
						</c:if>
						(${themeVo.aRating})
					</p>
				</div>

				<div id="theme_review_list" class="clearfix">

					<!-- 후기 반복영역 -->
					<c:forEach items="${reviewList }" var="reviewList">
						<div class="theme_review clearfix">

							<div class="theme_review_wrap">


								<div class="theme_review_item">
									<p>${reviewList.nickname }(${reviewList.playDate })</p>
									<p>${reviewList.reviewClear },
										${reviewList.memberNum }인, 힌트 ${reviewList.reviewHints }개 사용,
										<fmt:formatNumber value="${reviewList.recTime/60 } " maxFractionDigits="0"></fmt:formatNumber>
										분 ${reviewList.recTime%60 }초 소요, 체감 난이도 ${reviewList.feelLevel }, 평점 ${reviewList.rating }
									</p>
								</div>

								<div class="theme_review_edit">
									<button class="mbutton">수정</button>
									<button class="mbutton">삭제</button>
								</div>
							</div>
							<div class="theme_review_content">
								<p>${reviewList.reviewContent }</p>
							</div>
						</div>

					</c:forEach>
					<!-- //후기 반복영역 -->

				</div>




			</div>

		</div>

		<!-- //content -->


		<!-- footer -->

		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- //footer -->
	</div>

</body>

</html>