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


<title>테마 수정</title>
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
					<h2>넥스트에디션 강남신논현점</h2>
				</div>
				<div id="subheader-mintitle">관리자페이지 > 카페테마관리</div>



			</div>

			<!--Aside-->
			<div id="aside">

				<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png"
					width="35px" height="35px">

				<div id="aside_cate">

					<ul>
						<li>예약
							<ul class="aside_mini_cate">
								<li>&nbsp;-예약 확인</li>
								<li>&nbsp;-예약 관리</li>
							</ul>
						</li>
						<li>기록
							<ul class="aside_mini_cate">
								<li>&nbsp;-기록 입력</li>
								<li>&nbsp;-기록 관리</li>
							</ul>
						</li>
						<li><a href="${pageContext.request.contextPath }/adminCafe">카페 소개 관리</a></li>
						<li class="selected"><a href="${pageContext.request.contextPath }/adminTheme">카페 테마
								관리</a></li>
					</ul>

				</div>

			</div>
			<!--//Aside-->


			<!-- contentMain -->
			<div id="contentMain" class="clearfix">
				<div id="contentWrap">


					<p id="adminTheme_subHeader">| 카페 테마 수정</p>
					<select id="themeSelect" name="themeSelect" class="cafe_explain_selectBox">
						<option value="" selected="selected">메가스팀</option>
						<option value=""></option>
					</select>


					<form action="">
						<div id="addThwme_formDiv" class="clearfix">
							<div id="previewArea">
								<!-- 테마 리스트에 출력되는 내용 영역 -->
								<div id="theme_poster_wrap">
									<p class="cafModi_subTitle">테마 포스터</p>
									<img alt="" src="${pageContext.request.contextPath }/assets/image/cafe/theme_poster.jpg">
									<input type="file" name="mainImg">
								</div>

								<div id="theme_explain_wrap">
									<div id="" class="theme_explain_item clearfix">
										<p class="addTheme_subTitle">제목</p>
										<input type="text" id="themeTitle" name="themeTitle" placeholder="제목을 입력해주세요." value="메가스팀">
									</div>

									<div id="previewArea_left">

										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">장르</p>
											<select id="themeGenre" name="themeGenre" class="cafe_explain_selectBox">
												<option value="" selected="selected">공상과학</option>
												<option value=""></option>
											</select>
										</div>


										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">난이도</p>
											<select id="themeLevel" name="themeLevel" class="cafe_explain_selectBox">
												<option value="" selected="selected">난이도를 선택해주세요.</option>
												<option value=""></option>
											</select>
										</div>

										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">유형</p>
											<select id="themeType" name="themeType" class="cafe_explain_selectBox">
												<option value="" selected="selected">유형을 선택해주세요.</option>
												<option value=""></option>
											</select>
										</div>



									</div>

									<div id="previewArea_right">


										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">추천 플레이인원</p>
											<input id="recommandMinNum" name="recommandMinNum" type="number" placeholder="최소인원">
											<span>&nbsp;~&nbsp;</span> <input id="recommandMaxNum" name="recommandMaxNum"
												type="number" placeholder="최대인원">
										</div>


										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">플레이타임</p>
											<select id="themeLevel" name="themeLevel" class="cafe_explain_selectBox">
												<option value="" selected="selected">플레이타임을 선택해주세요.</option>
												<option value=""></option>
											</select>
										</div>

										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">활동성</p>
											<select id="themeType" name="themeType" class="cafe_explain_selectBox">
												<option value="" selected="selected">활동성을 선택해주세요.</option>
												<option value=""></option>
											</select>
										</div>



									</div>

								</div>

							</div>


							<div id="non-previewArea">
								<!-- 테마 리스트에 출력되지 않는 내용 영역 -->
								<div id="themeExplain" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">소개글</p>
									<textarea rows="" cols=""></textarea>
								</div>

								<div id="" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">수용가능 플레이인원</p>
									<input id="peopleMinNum" name="peopleMinNum" type="number" placeholder="최소인원"> <span>&nbsp;~&nbsp;</span>
									<input id="peopleMaxNum" name="peopleMaxNum" type="number" placeholder="최대인원">
								</div>


								<!-- 수용인원이 입력되지 않았을때 -->
								<div id="themePrice" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">가격</p>
									수용 최소, 최대인원을 먼저 입력해주세요.
								</div>

								<!-- 수용인원이 입력되었을때 -->
								<!-- <div id="themePrice" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">가격</p>
									
									가격입력칸 반복영역
									<label for="themePrice2">2인<input type="number" class="themePrice" name="themePrice2">원</label>
									<label for="themePrice3">3인<input type="number" class="themePrice" name="themePrice3">원</label>
									<label for="themePrice4">4인<input type="number" class="themePrice" name="themePrice4">원</label>
									<label for="themePrice5">5인<input type="number" class="themePrice" name="themePrice5">원</label>
									//가격입력칸 반복영역
								</div> -->


								<div id="themeTime" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">시간표</p>

									<div id="themeTimeWrap">
										<!-- 시간표 반복영역 -->
										<label for="themeTime1">1 <input class="themeTimeSelect" name="themeStartTime1"
											type="time"> <span>&nbsp;~&nbsp;</span> <input class="themeTimeSelect"
											name="themeEndTime1" type="time">
										</label> <label for="themeTime2">2 <input class="themeTimeSelect" name="themeStartTime2"
											type="time"> <span>&nbsp;~&nbsp;</span> <input class="themeTimeSelect"
											name="themeEndTime2" type="time">
										</label> <label for="themeTime1">3 <input class="themeTimeSelect" name="themeStartTime3"
											type="time"> <span>&nbsp;~&nbsp;</span> <input class="themeTimeSelect"
											name="themeEndTime3" type="time">
										</label>
										<!-- //시간표 반복영역 -->
									</div>

									<button class="mbutton">시간 추가</button>
								</div>

							</div>

						</div>

						<div id="addTheme_button">
							<button type="submit" class="mbutton">수정</button>
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



</html>