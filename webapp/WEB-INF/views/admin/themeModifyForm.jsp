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
								<li><a href="${pageContext.request.contextPath }/admin/reserve">&nbsp;-예약 확인</a></li>
								<li><a href="${pageContext.request.contextPath }/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}">&nbsp;-예약 관리</a></li>
							</ul>
						</li>
						
						<li>기록
							<ul class="aside_mini_cate">
								<li><p class="selected"><a href="${pageContext.request.contextPath }/admin/record">&nbsp;-기록 입력</a></p></li>
								<li><a href="${pageContext.request.contextPath }/admin/recordModify">&nbsp;-기록 관리</a></li>
							</ul>
						</li>
						
						<li><a href="${pageContext.request.contextPath }/admin/cafeModifyForm">카페 소개 관리</a></li>
						<li class="selected"><a href="${pageContext.request.contextPath }/admin/themeList">카페 테마
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
									<img alt="" src="${pageContext.request.contextPath }/assets/image/admin/empty_poster.png">
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
											<select id="themeGenre" name="jenre" class="cafe_explain_selectBox">
												<option value="" >장르를 선택해주세요.</option>
												<option value="inference">추리</option>
												<option value="thriller">스릴러</option>
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
												<option value="qmark">?</option>
												
											</select>
										</div>
	
	
										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">난이도</p>
											<select id="themeLevel" name="themeLevel" class="cafe_explain_selectBox">
												<option value="" >난이도를 선택해주세요.</option>
												<option value="star1">★</option>
												<option value="star2">★★</option>
												<option value="star3" selected="selected">★★★</option>
												<option value="star4">★★★★</option>
												<option value="star5">★★★★★</option>
											</select>
										</div>
	
										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">유형</p>
											<select id="themeType" name="themeType" class="cafe_explain_selectBox">
												<option value="" selected="selected">유형을 선택해주세요.</option>
												<option value="lock">자물쇠 위주</option>
												<option value="machine">장치 위주</option>
												<option value="half" selected="selected">자물쇠/장치 반반</option>
											</select>
										</div>
	
	
	
									</div>
	
									<div id="previewArea_right">
	
	
										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">추천 플레이인원</p>
											<input id="recommandMinNum" name="recommandMinNum" type="number" placeholder="최소인원" value="2">
											<span>&nbsp;~&nbsp;</span> <input id="recommandMaxNum" name="recommandMaxNum"
												type="number" placeholder="최대인원" value="5">
										</div>
	
	
										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">플레이타임</p>
											<select id="themeLevel" name="themeLevel" class="cafe_explain_selectBox">
												<option value="">플레이타임을 선택해주세요.</option>
												<option value="60min" selected="selected">60분</option>
												<option value="65min">65분</option>
												<option value="70min">70분</option>
												<option value="75min">75분</option>
												<option value="80min">80분</option>
												<option value="85min">85분</option>
												<option value="90min">90분</option>
												<option value="95min">95분</option>
												<option value="100min">100분</option>
												<option value="105min">105분</option>
												<option value="110min">110분</option>
												<option value="115min">115분</option>
												<option value="120min">120분</option>
												<option value="125min">125분</option>
												<option value="130min">130분</option>
												<option value="135min">135분</option>
												<option value="140min">140분</option>
												<option value="145min">145분</option>
												<option value="150min">150분</option>
												<option value="155min">155분</option>
												<option value="160min">160분</option>
												<option value="165min">165분</option>
												<option value="170min">170분</option>
												<option value="175min">175분</option>
												<option value="180min">180분</option>
											</select>
										</div>
	
										<div id="" class="theme_explain_item clearfix">
											<p class="addTheme_subTitle">활동성</p>
											<select id="themeType" name="themeType" class="cafe_explain_selectBox">
												<option value="" >활동성을 선택해주세요.</option>
												<option value="lowActivity" selected="selected">적음</option>
												<option value="regularActivity">보통</option>
												<option value="highActivity">많음</option>
											</select>
										</div>
	
	
	
									</div>
	
								</div>
	
							</div>


							<div id="non-previewArea">
								<!-- 테마 리스트에 출력되지 않는 내용 영역 -->
								<div id="themeExplain" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">소개글</p>
									<textarea rows="" cols="" >박사님의 꿈은 제가 꼭 이루겠습니다!</textarea>
								</div>

								<div id="" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">수용가능 플레이인원</p>
									<input id="peopleMinNum" name="peopleMinNum" type="number" placeholder="최소인원" value="2"> <span>&nbsp;~&nbsp;</span>
									<input id="peopleMaxNum" name="peopleMaxNum" type="number" placeholder="최대인원" value="5">
								</div>


								<!-- 수용인원이 입력되지 않았을때 -->
								<!-- <div id="themePrice" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">가격</p>
									수용 최소, 최대인원을 먼저 입력해주세요.
								</div> -->

								<!-- 수용인원이 입력되었을때 -->
								<div id="themePrice" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">가격</p>
									
									<!-- 가격입력칸 반복영역 -->
									<label for="themePrice2">2인<input type="number" class="themePrice" name="themePrice2" value="44000">원</label>
									<label for="themePrice3">3인<input type="number" class="themePrice" name="themePrice3" value="60000">원</label>
									<label for="themePrice4">4인<input type="number" class="themePrice" name="themePrice4" value="72000">원</label>
									<label for="themePrice5">5인<input type="number" class="themePrice" name="themePrice5" value="90000">원</label>
									<!-- //가격입력칸 반복영역 -->
								</div>


								<div id="themeTime" class="non-previewArea_item clearfix">
									<p class="addTheme_subTitle">시간표</p>

									<div id="themeTimeWrap">
										<!-- 시간표 반복영역 -->
										<label for="themeStartTime1">1
											<input class="themeTimeSelect" name="themeStartTime1" type="time" value="11:20">
										</label>
										
										<label for="themeStartTime2">2
											<input class="themeTimeSelect" name="themeStartTime2" type="time" value="12:40">
										</label>
										
										<label for="themeStartTime3">3
											<input class="themeTimeSelect" name="themeStartTime3" type="time" value="14:00">
										</label>
										
										<label for="themeStartTime4">4
											<input class="themeTimeSelect" name="themeStartTime4" type="time" value="15:20">
										</label>
										
										<label for="themeStartTime5">5
											<input class="themeTimeSelect" name="themeStartTime5" type="time" value="16:40">
										</label>
										
										<label for="themeStartTime6">6
											<input class="themeTimeSelect" name="themeStartTime6" type="time" value="18:00">
										</label>
										
										<label for="themeStartTime7">7
											<input class="themeTimeSelect" name="themeStartTime7" type="time" value="19:20">
										</label>
										
										<label for="themeStartTime8">8
											<input class="themeTimeSelect" name="themeStartTime8" type="time" value="20:40">
										</label>
										
										<label for="themeStartTime9">9
											<input class="themeTimeSelect" name="themeStartTime9" type="time" value="22:00">
										</label>
										
										<label for="themeStartTime10">10
											<input class="themeTimeSelect" name="themeStartTime10" type="time" value="23:20">
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