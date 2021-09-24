<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						src="${pageContext.request.contextPath }/assets/image/cafe/theme_poster.jpg">
					<div id="theme_detail_text">
						<div id="theme_detail_title">
							<p id="theme_detail_themeTitle">메가스팀(Mega steam)</p>
							<p id="theme_detail_cafeName">넥스트에디션 강남신논현점</p>
							<p id="theme_detail_content">박사님의 꿈은 제가 꼭 이루겠습니다!</p>
						</div>

						<div id="theme_detail_info" class="">

							<span>장르 : </span><span>판타지</span> | <span>추천인원 : </span><span>2~5인</span><br> <span>난이도
								: </span><span>★★★★</span> | <span>플레이타임 : </span><span>60분</span><br> <span>체감난이도 : </span><span>★★★</span>
							| <span>평점 : </span><span>★★★(3.1)</span><br> <span>유형 : 장치, </span><span>자물쇠 반반</span>
							| <span>활동성 : </span><span>적음</span>

						</div>


						<button class="lbutton" id="theme_party">이 테마의 모집중인 파티보기</button>

						<div id="theme_detail_btn">
							<button class="cbutton" id="theme_wish">관심테마등록</button>
							<button class="cbutton" id="theme_reserv">예약하기</button>
							<button class="cbutton" id="theme_cafe">카페정보</button>
						</div>
					</div>

				</div>
			</div>



			<div id="theme_detail_timeTable">

				<p>| 시간표</p>

				<table id="theme_timeTable">
					<tbody>

						<!-- 테마 시간표 반복영역 -->

						<tr>
							<td>1</td>
							<td>11시 20분</td>
						</tr>

						<tr>
							<td>2</td>
							<td>11시 20분</td>
						</tr>

						<tr>
							<td>3</td>
							<td>11시 20분</td>
						</tr>

						<tr>
							<td>4</td>
							<td>11시 20분</td>
						</tr>

						<tr>
							<td>5</td>
							<td>11시 20분</td>
						</tr>

						<tr>
							<td>6</td>
							<td>11시 20분</td>
						</tr>

						<tr>
							<td>7</td>
							<td>11시 20분</td>
						</tr>

						<tr>
							<td>8</td>
							<td>11시 20분</td>
						</tr>

						<tr>
							<td>9</td>
							<td>11시 20분</td>
						</tr>

						<tr>
							<td>10</td>
							<td>11시 20분</td>
						</tr>

						<!-- //테마 시간표 반복영역 -->


					</tbody>

				</table>



			</div>



			<div id="theme_detail_price">

				<p>| 가격</p>

				<table id="theme_priceTable">
					<thead>
						<th>인원수</th>
						<th>메가스팀(60분)</th>
					</thead>

					<tbody>
						<tr>
							<td>2인</td>
							<td>44,000원</td>
						</tr>

						<tr>
							<td>3인</td>
							<td>60,000원</td>
						</tr>

						<tr>
							<td>4인</td>
							<td>72,000원</td>
						</tr>

						<tr>
							<td>5인</td>
							<td>90,000원</td>
						</tr>
					</tbody>

				</table>



			</div>





			<div id="theme_detail_review">

				<p>| 후기</p>

				<div>
					<p>3개의 후기, 평균 체감난이도 ★★(2.0) 평점 ★★★★(4.0)</p>
				</div>

				<div id="theme_review_list" class="clearfix">

					<!-- 후기 반복영역 -->
					<div class="theme_review clearfix">

						<div class="theme_review_wrap">


							<div class="theme_review_item">
								<p>서현 (2021-08-30)</p>
								<p>성공, 2인, 힌트 1개 사용, 45분 30초 소요, 체감 난이도★★, 평점 ★★★★</p>
							</div>

							<div class="theme_review_edit">
								<button class="mbutton">수정</button>
								<button class="mbutton">삭제</button>
							</div>
						</div>
						<div class="theme_review_content">
							<p>입문자 추천 테마입니다. 문제가 순서대로 풀어나가게 되어있어서 순서만 꼬이지 않으면 쉽게쉽게 풀어나갈 수 있었어요.</p>
						</div>
					</div>


					<div class="theme_review clearfix">

						<div class="theme_review_wrap">


							<div class="theme_review_item">
								<p>서현 (2021-08-30)</p>
								<p>성공, 2인, 힌트 1개 사용, 45분 30초 소요, 체감 난이도★★, 평점 ★★★★</p>
							</div>

							<div class="theme_review_edit">
								<button class="mbutton">수정</button>
								<button class="mbutton">삭제</button>
							</div>
						</div>
						<div class="theme_review_content">
							<p>입문자 추천 테마입니다. 문제가 순서대로 풀어나가게 되어있어서 순서만 꼬이지 않으면 쉽게쉽게 풀어나갈 수 있었어요.</p>
						</div>
					</div>


					<div class="theme_review clearfix">

						<div class="theme_review_wrap">


							<div class="theme_review_item">
								<p>서현 (2021-08-30)</p>
								<p>성공, 2인, 힌트 1개 사용, 45분 30초 소요, 체감 난이도★★, 평점 ★★★★</p>
							</div>

							<div class="theme_review_edit">
								<button class="mbutton">수정</button>
								<button class="mbutton">삭제</button>
							</div>
						</div>
						<div class="theme_review_content">
							<p>입문자 추천 테마입니다. 문제가 순서대로 풀어나가게 되어있어서 순서만 꼬이지 않으면 쉽게쉽게 풀어나갈 수 있었어요.</p>
						</div>
					</div>


					<div class="theme_review clearfix">

						<div class="theme_review_wrap">


							<div class="theme_review_item">
								<p>서현 (2021-08-30)</p>
								<p>성공, 2인, 힌트 1개 사용, 45분 30초 소요, 체감 난이도★★, 평점 ★★★★</p>
							</div>

							<div class="theme_review_edit">
								<button class="mbutton">수정</button>
								<button class="mbutton">삭제</button>
							</div>
						</div>
						<div class="theme_review_content">
							<p>입문자 추천 테마입니다. 문제가 순서대로 풀어나가게 되어있어서 순서만 꼬이지 않으면 쉽게쉽게 풀어나갈 수 있었어요.</p>
						</div>
					</div>
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