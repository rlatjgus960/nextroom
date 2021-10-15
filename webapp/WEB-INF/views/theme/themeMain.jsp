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

<title>테마 메인</title>
</head>

<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
	
	
<script type="text/javascript">
	function selectAllRegion(selectAll)  {
		
	  	const checkboxes = document.getElementsByName('sidoDetail');
	  
	  	checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked;
	  	});
	};
	
	function selectAllGenre(selectAll)  {
		
	  	const checkboxes = document.getElementsByName('jenre');
	  
	  	checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked;
	  	});
	};
</script>

<body>

	<!-- 헤더영역 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->

	<div id="wrap">

		<!-- content -->
		<div id="content">

			<!-- main -->
			<div id="theme_recommend_back" class="clearfix">
				<div id="theme_recommend_title">추천 테마</div>
				
				<!-- 스와이퍼 -->
				<div class="swiper mySwiper">
					<div class="swiper-wrapper">
						<!-- 반복영역 -->
						<c:forEach items="${top10Theme}" var="top10">
							<div class="swiper-slide clearfix">
								<div class="theme_swiper_list">
									<img id="" class="theme_img"
										src="${pageContext.request.contextPath }/upload/${top10.themeImg}">
									<div id="" class="theme_info">
										<div class="theme_intro">
											<p class="theme_name">${top10.themeName}</p>
											<p class="theme_content">${top10.themeIntro}</p>
										</div>
										<div class="swiper_theme_detail">
											<ul>
												<li>
													<div>
														<span>평점 :&nbsp;</span> ${top10.aRating}점
													</div>
												</li>
												<li>
													<div>
														<span>평균 체감난이도 :&nbsp;</span> ${top10.aFeelLevel}점
													</div>
												</li>
												<li>
													<div>
														<span>리뷰 :&nbsp;</span> ${top10.reviewCount}개
													</div>
												</li>


											</ul>

										</div>

									</div>
									<button
										onclick="location.href = '${pageContext.request.contextPath }/cafe/theme/${top10.themeNo}'"
										class="mbutton">자세히보기</button>
								</div>
							</div>
						</c:forEach>
						<!-- 반복영역 -->

					</div>
					<div id="swiper-button-next" class="swiper-button-next"></div>
					<div id="swiper-button-prev" class="swiper-button-prev"></div>
					<div class="swiper-pagination"></div>
				</div>
				<!-- //스와이퍼 -->


			</div>

<%-- 			<form action="${pageContext.request.contextPath }/cafe/theme" method="get" id="searchForm"> --%>
			<form method="get" id="searchForm">

				<div id="theme_select" class="clearfix">

					<div id="theme_select_title">
						<div>지역</div>
						<div>장르</div>
						<div>유형</div>
						<div>인원</div>
						<div>난이도</div>
						<div>활동성</div>
					</div>

					<div id="theme_region_wrap" class="clearfix">


						<div id="theme_region" class="theme_select_condition">
							<label><input type="checkbox" name="" value="전국" onclick='selectAllRegion(this)'>전국</label> <label><input
								type="checkbox" name="sidoDetail" value="홍대">홍대</label> <label><input
								type="checkbox" name="sidoDetail" value="강남">강남</label> <label><input
								type="checkbox" name="sidoDetail" value="건대">건대</label> <label><input
								type="checkbox" name="sidoDetail" value="신촌">신촌</label> <label><input
								type="checkbox" name="sidoDetail" value="대학로">대학로</label> <label><input
								type="checkbox" name="sidoDetail" value="강북">강북</label> <label><input
								type="checkbox" name="sidoDetail" value="신림">신림</label> <label><input
								type="checkbox" name="sidoDetail" value="서울(기타)">서울(기타)</label> <label><input
								type="checkbox" name="sidoDetail" value="부천">부천</label> <label><input
								type="checkbox" name="sidoDetail" value="일산">일산</label> <label><input
								type="checkbox" name="sidoDetail" value="수원">수원</label> <label><input
								type="checkbox" name="sidoDetail" value="안양">안양</label> <label><input
								type="checkbox" name="sidoDetail" value="경기(기타)">경기(기타)</label> <label><input
								type="checkbox" name="sidoDetail" value="인천">인천</label> <label><input
								type="checkbox" name="sidoDetail" value="강원">강원</label> <label><input
								type="checkbox" name="sidoDetail" value="대전">대전</label> <label><input
								type="checkbox" name="sidoDetail" value="천안">천안</label> <label><input
								type="checkbox" name="sidoDetail" value="청주">청주</label> <label><input
								type="checkbox" name="sidoDetail" value="충청(기타)">충청(기타)</label> <label><input
								type="checkbox" name="sidoDetail" value="대구">대구</label> <label><input
								type="checkbox" name="sidoDetail" value="부산">부산</label> <label><input
								type="checkbox" name="sidoDetail" value="경상(기타)">경상(기타)</label> <label><input
								type="checkbox" name="sidoDetail" value="전주">전주</label> <label><input
								type="checkbox" name="sidoDetail" value="광주">광주</label> <label><input
								type="checkbox" name="sidoDetail" value="전라(기타)">전라(기타)</label> <label><input
								type="checkbox" name="sidoDetail" value="제주">제주</label>

						</div>

						<div id="theme_genre" class="theme_select_condition">
							<label><input type="checkbox" name="" value="전체" onclick='selectAllGenre(this)'>전체</label> <label><input
								type="checkbox" name="jenre" value="추리">추리</label> <label><input type="checkbox"
								name="jenre" value="스릴러">스릴러</label> <label><input type="checkbox" name="jenre"
								value="감성">감성</label> <label><input type="checkbox" name="jenre" value="로맨스">로맨스</label>
							<label><input type="checkbox" name="jenre" value="범죄">범죄</label> <label><input
								type="checkbox" name="jenre" value="코미디">코미디</label> <label><input type="checkbox"
								name="jenre" value="모험">모험</label> <label><input type="checkbox" name="jenre"
								value="판타지">판타지</label> <label><input type="checkbox" name="jenre" value="19금">19금</label>
							<label><input type="checkbox" name="jenre" value="공포">공포</label> <label><input
								type="checkbox" name="jenre" value="드라마">드라마</label> <label><input type="checkbox"
								name="jenre" value="미스터리">미스터리</label> <label><input type="checkbox" name="jenre"
								value="아케이드">아케이드</label> <label><input type="checkbox" name="jenre" value="액션">액션</label>
							<label><input type="checkbox" name="jenre" value="야외">야외</label> <label><input
								type="checkbox" name="jenre" value="음악">음악</label> <label><input type="checkbox"
								name="jenre" value="잠입">잠입</label> <label><input type="checkbox" name="jenre"
								value="역사">역사</label> <label><input type="checkbox" name="jenre" value="공상과학">공상과학</label>
							<label><input type="checkbox" name="jenre" value="?">?</label>

						</div>

						<div id="theme_kind" class="theme_select_condition">
							<label><input type="checkbox" name="themeType" value="자물쇠 위주">자물쇠 위주</label> <label><input
								type="checkbox" name="themeType" value="장치 위주">장치 위주</label> <label><input
								type="checkbox" name="themeType" value="자물쇠, 장치 반반">자물쇠, 장치 반반</label>

						</div>

						<div id="theme_people" class="theme_select_condition">
							<label><input type="checkbox" name="headCount" value="1">혼방</label> <label><input
								type="checkbox" name="headCount" value="2">2인</label> <label><input type="checkbox"
								name="headCount" value="3">3인</label> <label><input type="checkbox" name="headCount"
								value="4">4인</label> <label><input type="checkbox" name="headCount" value="5">5인</label>
							<label><input type="checkbox" name="headCount" value="6">6인 이상</label>
						</div>

						<div id="theme_level" class="theme_select_condition">
							<label><input type="checkbox" name="levels" value="1">★</label> <label><input
								type="checkbox" name="levels" value="2">★★</label> <label><input type="checkbox"
								name="levels" value="3">★★★</label> <label><input type="checkbox" name="levels"
								value="4">★★★★</label> <label><input type="checkbox" name="levels" value="5">★★★★★</label>

						</div>

						<div id="theme_active" class="theme_select_condition">
							<label><input type="checkbox" name="activity" value="적음">적음</label> <label><input
								type="checkbox" name="activity" value="보통">보통</label> <label><input type="checkbox"
								name="activity" value="많음">많음</label>


						</div>
					</div>
					<button type="reset" id="theme_resetBtn" class="themeSearchBtn">초기화</button>
					<button type="button" id="theme_searchBtn" class="themeSearchBtn">검색하기</button>



				</div>



				<div id="theme_list_area">

					<!-- 검색정렬 -->
					<div id="theme_range" class="clearfix">

						<select id="cafe_array" class="cafe_theme_array">
							<option value="" selected="selected">별점높은순</option>
							<option value="">리뷰많은순</option>
						</select>

						<div class="form-group text-right">
							<input type="text" name="keyword">
							<button id="keywordBtn" type="button" id=btn_search class="search_button">검색</button>
						</div>

					</div>
					<!-- //검색정렬 -->

				</div>
			</form>

			<div id="theme_search_list" class="clearfix">

				<!-- 테마 반복영역 -->
				<c:forEach items="${themeList }" var="themeList">
					<div class="cafe_theme">
						<a href="${pageContext.request.contextPath}/cafe/theme/${themeList.themeNo}"> <img
							src="${pageContext.request.contextPath }/upload/${themeList.themeImg}" alt=""></a>

						<div class="cafe_theme_info">
							<p>${themeList.cafeName }</p>

							<a href="${pageContext.request.contextPath }/cafe/themeDetail">
								<p class="cafe_theme_info_title">${themeList.themeName}</p>
							</a> <span>장르 : </span><span>${themeList.jenre}</span> | <span>추천인원 : </span><span>${themeList.pRecommendMin}~${themeList.pRecommendMax}인</span><br>
							<span>난이도 : </span> <span> <c:if test="${themeList.levels == 5 }">
									★★★★★
								</c:if> <c:if test="${themeList.levels == 4}">
									★★★★
								</c:if> <c:if test="${themeList.levels == 3}">
									★★★
								</c:if> <c:if test="${themeList.levels == 2}">
									★★
								</c:if> <c:if test="${themeList.levels == 1}">
									★
								</c:if>


							</span> | <span>플레이타임 : </span><span>${themeList.playTime}분</span><br> <span>체감난이도 : </span> <span>
								<c:if test="${themeList.aFeelLevel >= 4.5 }">
									★★★★★
								</c:if> <c:if test="${themeList.aFeelLevel >= 3.5 && themeList.aFeelLevel < 4.5}">
									★★★★
								</c:if> <c:if test="${themeList.aFeelLevel >= 2.5 && themeList.aFeelLevel < 3.5}">
									★★★
								</c:if> <c:if test="${themeList.aFeelLevel >= 1.5 && themeList.aFeelLevel < 2.5}">
									★★
								</c:if> <c:if test="${themeList.aFeelLevel >= 0.5 && themeList.aFeelLevel < 1.5}">
									★
								</c:if> <c:if test="${themeList.aFeelLevel == 0}">
									-
								</c:if> (${themeList.aFeelLevel})
							</span> | <span>평점 : </span> <span> <c:if test="${themeList.aRating >= 4.5 }">
									★★★★★
								</c:if> <c:if test="${themeList.aRating >= 3.5 && themeList.aRating < 4.5}">
									★★★★
								</c:if> <c:if test="${themeList.aRating >= 2.5 && themeList.aRating < 3.5}">
									★★★
								</c:if> <c:if test="${themeList.aRating >= 1.5 && themeList.aRating < 2.5}">
									★★
								</c:if> <c:if test="${themeList.aRating >= 0.5 && themeList.aRating < 1.5}">
									★
								</c:if> <c:if test="${themeList.aRating == 0}">
									-
								</c:if> (${themeList.aRating})
							</span><br> <span>유형 : </span><span>${themeList.themeType}</span> | <span>활동성 : </span><span>${themeList.activity}</span>
						</div>
					</div>
				</c:forEach>

				<%-- <div class="cafe_theme">
					<img href="" src="${pageContext.request.contextPath }/assets/image/cafe/theme_poster.jpg"
						alt="">

					<div class="cafe_theme_info">
						<p>넥스트에디션 강남신논현점</p>

						<p href="" class="cafe_theme_info_title">어시스턴트(Assistant)</p>

						<span>장르 : </span><span>판타지</span> | <span>추천인원 : </span><span>2~5인</span><br> <span>난이도
							: </span><span>★★★★</span> | <span>플레이타임 : </span><span>60분</span><br> <span>체감난이도 : </span><span>★★★</span>
						| <span>평점 : </span><span>★★★(3.1)</span><br> <span>유형 : 장치, </span><span>자물쇠 반반</span>
						| <span>활동성 : </span><span>적음</span>

					</div>
				</div> --%>

				<!-- //테마 반복영역 -->

			</div>

			<button id="theme_moreBtn" class="lbutton">더보기</button>


		</div>

		<!-- //content -->


		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- //footer -->
	</div>



</body>
<script type="text/javascript">
	var swiper = new Swiper(".mySwiper", {
		slidesPerView : 3, //한번에 보여줄 슬라이드 개수
		spaceBetween : 30, //슬라이드 사이 간격
		loop : true,
		pagination : {
			el : ".swiper-pagination",
			clickable : true,
			dynamicBullets : true,
		},
		navigation : {
			nextEl : ".swiper-button-next",
			prevEl : ".swiper-button-prev",
		},
	});

	$("#theme_moreBtn").on("click", function() {
		console.log("더보기 버튼 클릭");
		moreList(); //함수 호출
	});
	
	
	$("#theme_searchBtn").on("click", function(){
		
		event.preventDefault();
		
		/* 지역 */
		//값들의 갯수 -> 배열 길이를 지정
		var sidoDetailLength = $("input[name=sidoDetail]:checked").length;
		
		if(sidoDetailLength > 0){
			//배열 생성
			var sidoDetail = new Array(sidoDetailLength);
			
			//배열에 값 주입
			for(var i=0; i<sidoDetailLength; i++){                          
				sidoDetail[i] = $("input[name=sidoDetail]:checked").eq(i).val();
			}
		}
		
		
		/* 장르 */
		var jenreLength = $("input[name=jenre]:checked").length;
		
		if(jenreLength > 0){
			var jenre = new Array(jenreLength);
			for(var i=0; i<jenreLength; i++){                          
				jenre[i] = $("input[name=jenre]:checked").eq(i).val();
			}
		}
		
		/* 테마타입 */
		var themeTypeLength = $("input[name=themeType]:checked").length;
		
		if(themeTypeLength > 0) {
			var themeType = new Array(themeTypeLength);
			for(var i=0; i<themeTypeLength; i++){                          
				themeType[i] = $("input[name=themeType]:checked").eq(i).val();
			}
		}
		/* 인원 */
		var headCountLength = $("input[name=headCount]:checked").length;
		if(headCountLength > 0) {
			var headCount = new Array(headCountLength);
			for(var i=0; i<headCountLength; i++){                          
				headCount[i] = $("input[name=headCount]:checked").eq(i).val();
			}
		}
		/* 난이도 */
		var levelsLength = $("input[name=levels]:checked").length;
		if(levelsLength > 0) {
			var levels = new Array(levelsLength);
			for(var i=0; i<levelsLength; i++){                          
				levels[i] = $("input[name=levels]:checked").eq(i).val();
			}
		}
		
		/* 활동성 */
		var activityLength = $("input[name=activity]:checked").length;
		if(levelsLength > 0) {
			var activity = new Array(activityLength);
			for(var i=0; i<activityLength; i++){                          
				activity[i] = $("input[name=activity]:checked").eq(i).val();
			}
		}
		
		var keyword = $("[name=keyword]").val();
		
		
		console.log(sidoDetail);
		console.log(jenre);
		console.log(themeType);
		console.log(headCount);
		console.log(levels);
		console.log(activity);
		console.log(keyword);
		
		var themeSearchVo = {
				
				sidoDetail : sidoDetail,
				jenre : jenre,
				themeType : themeType,
				headCount : headCount,
				levels : levels,
				activity : activity,
				keyword : keyword
			};
		
		
		console.log(themeSearchVo);
		
		var addListHtml = "";
		
		$.ajax({

			url : "${pageContext.request.contextPath }/cafe/themeSearch",
			type : "post",
 			dataType : "json",
 			contentType : "application/json",
			data : JSON.stringify(themeSearchVo),

			success : function(themeList) {

				console.log(themeList.length);
				$(".cafe_theme").remove();

				if (themeList.length == 0) {
					$("#theme_moreBtn").remove(); 
					var noResult = "";
					var noResult = '<p id="noResult" class="cafe_theme">검색결과가 없습니다.</p>';
					$("#theme_search_list").append(noResult);
					
				} else if (themeList.length <= 15) {
					
					console.log("그리기");
					var addListHtml = "";
					for (var i = 0; i < themeList.length; i++) {
						render(themeList[i]);
					}
					
					$("#theme_search_list").append(addListHtml);
					$("#theme_moreBtn").remove();

				} else if (themeList.length > 15){
					var addListHtml = "";
					for (var i = 0; i < themeList.length; i++) {
						render(themeList[i]);
					}
				}

			}

		});
		
		
	});
	
	
	
	$("#keywordBtn").on("click", function(){
		
		event.preventDefault();
		
		/* 지역 */
		//값들의 갯수 -> 배열 길이를 지정
		var sidoDetailLength = $("input[name=sidoDetail]:checked").length;
		
		if(sidoDetailLength > 0){
			//배열 생성
			var sidoDetail = new Array(sidoDetailLength);
			
			//배열에 값 주입
			for(var i=0; i<sidoDetailLength; i++){                          
				sidoDetail[i] = $("input[name=sidoDetail]:checked").eq(i).val();
			}
		}
		
		
		/* 장르 */
		var jenreLength = $("input[name=jenre]:checked").length;
		
		if(jenreLength > 0){
			var jenre = new Array(jenreLength);
			for(var i=0; i<jenreLength; i++){                          
				jenre[i] = $("input[name=jenre]:checked").eq(i).val();
			}
		}
		
		/* 테마타입 */
		var themeTypeLength = $("input[name=themeType]:checked").length;
		
		if(themeTypeLength > 0) {
			var themeType = new Array(themeTypeLength);
			for(var i=0; i<themeTypeLength; i++){                          
				themeType[i] = $("input[name=themeType]:checked").eq(i).val();
			}
		}
		/* 인원 */
		var headCountLength = $("input[name=headCount]:checked").length;
		if(headCountLength > 0) {
			var headCount = new Array(headCountLength);
			for(var i=0; i<headCountLength; i++){                          
				headCount[i] = $("input[name=headCount]:checked").eq(i).val();
			}
		}
		/* 난이도 */
		var levelsLength = $("input[name=levels]:checked").length;
		if(levelsLength > 0) {
			var levels = new Array(levelsLength);
			for(var i=0; i<levelsLength; i++){                          
				levels[i] = $("input[name=levels]:checked").eq(i).val();
			}
		}
		
		/* 활동성 */
		var activityLength = $("input[name=activity]:checked").length;
		if(levelsLength > 0) {
			var activity = new Array(activityLength);
			for(var i=0; i<activityLength; i++){                          
				activity[i] = $("input[name=activity]:checked").eq(i).val();
			}
		}
		
		var keyword = $("[name=keyword]").val();
		
		
		console.log(sidoDetail);
		console.log(jenre);
		console.log(themeType);
		console.log(headCount);
		console.log(levels);
		console.log(activity);
		console.log(keyword);
		
		var themeSearchVo = {
				
				sidoDetail : sidoDetail,
				jenre : jenre,
				themeType : themeType,
				headCount : headCount,
				levels : levels,
				activity : activity,
				keyword : keyword
			};
		
		
		console.log(themeSearchVo);
		
		var addListHtml = "";
		
		$.ajax({

			url : "${pageContext.request.contextPath }/cafe/themeSearch",
			type : "post",
 			dataType : "json",
 			contentType : "application/json",
			data : JSON.stringify(themeSearchVo),

			success : function(themeList) {

				console.log(themeList);
				$(".cafe_theme").remove();

				if (themeList.length == 0) {
					$("#theme_moreBtn").remove(); 
					var noResult = "";
					var noResult = '<p id="noResult" class="cafe_theme">검색결과가 없습니다.</p>';
					$("#theme_search_list").append(noResult);
					
				} else if (themeList.length <= 15) {
					
					console.log("그리기");
					var addListHtml = "";
					for (var i = 0; i < themeList.length; i++) {
						render(themeList[i]);
					}
					
					$("#theme_search_list").append(addListHtml);
					$("#theme_moreBtn").hide();

				} else if (themeList.length > 15){
					var addListHtml = "";
					for (var i = 0; i < themeList.length; i++) {
						render(themeList[i]);
					}
					
					$("#theme_moreBtn").show();
				}

			}

		});
		
		
	});
	
	
	
	
	
	

	function moreList() {

		var startNum = $("#theme_search_list .cafe_theme").length; //마지막 리스트 번호를 알아내기 위해서 tr태그의 length를 구함.
		var keyword = $("[name=keyword]").val();
		console.log("startNum : ", startNum);
		console.log("keyword : ", keyword);

		$
				.ajax({

					url : "${pageContext.request.contextPath }/cafe/getThemeList?keyword="
							+ keyword,
					type : "post",
					dataType : "json",
					data : {
						"startNum" : startNum
					},

					success : function(themeList) {

						console.log(themeList);

						if (themeList.length == 0) {
							$("#theme_moreBtn").remove(); // 더보기 버튼을 div 클래스로 줘야 할 수도 있음
						} else if (themeList.length < 0) {
							
							for (var i = 0; i < themeList.length; i++) {
								render(themeList[i]);
							}

							$("#theme_moreBtn").remove();

						} else {
							if (themeList.length > 0) {

								for (var i = 0; i < cafeList.length; i++) {
									render(themeList[i]);
								}

								$("#theme_moreBtn").remove();

							}
						}

					}

				});

	}
	
	
	function render(themeVo) {
		
		console.log("render");
		var addListHtml = "";

		addListHtml += '<div class="cafe_theme">';
		addListHtml += '	<a href="${pageContext.request.contextPath}/cafe/theme/'+themeVo.themeNo+'">';
		addListHtml += '	<img src="${pageContext.request.contextPath }/upload/'+themeVo.themeImg+'" alt=""></a>';
		addListHtml += '	<div class="cafe_theme_info">';
		addListHtml += '		<p>'+themeVo.cafeName+'</p>';
		addListHtml += '		<a href="${pageContext.request.contextPath }/cafe/theme/'+themeVo.themeNo+'">';
		addListHtml += '			<p class="cafe_theme_info_title">'+themeVo.themeName+'</p></a>';
		addListHtml += '		<span>장르 : </span><span>'+themeVo.jenre+'</span> | ';
		addListHtml += '		<span>추천인원 : </span><span>'+themeVo.pRecommendMin+'~'+themeVo.pRecommendMax+'인</span><br>';
		addListHtml += '		<span>난이도 : </span> ';
		if (themeVo.levels == 5){ 
			addListHtml += '		<span>★★★★★</span> | ';
		}else if (themeVo.levels == 4){ 
			addListHtml += '		<span>★★★★</span> | ';
		}else if (themeVo.levels == 3){ 
			addListHtml += '		<span>★★★</span> | ';
		}else if (themeVo.levels == 2){ 
			addListHtml += '		<span>★★</span> | ';
		}else if (themeVo.levels == 1){ 
			addListHtml += '		<span>★</span> | ';
		}else { 
			addListHtml += '		<span>-</span> | ';
		}
		addListHtml += '		<span>플레이타임 : </span><span>'+themeVo.playTime+'분</span><br> ';
		addListHtml += '		<span>체감난이도 : </span> <span>';
		if (themeVo.aFeelLevel >= 4.5){ 
			addListHtml += '		<span>★★★★★</span>('+themeVo.aFeelLevel+') | ';
		}else if (themeVo.aFeelLevel >= 3.5){ 
			addListHtml += '		<span>★★★★</span>('+themeVo.aFeelLevel+') | ';
		}else if (themeVo.aFeelLevel >= 2.5){ 
			addListHtml += '		<span>★★★</span>('+themeVo.aFeelLevel+') | ';
		}else if (themeVo.aFeelLevel >= 1.5){ 
			addListHtml += '		<span>★★</span>('+themeVo.aFeelLevel+') | ';
		}else if (themeVo.aFeelLevel >= 0.5){ 
			addListHtml += '		<span>★</span>('+themeVo.aFeelLevel+') | ';
		}else { 
			addListHtml += '		<span>-</span>('+themeVo.aFeelLevel+') | ';
		}
		addListHtml += '		<span>평점 : </span>';
		if (themeVo.aRating >= 4.5){ 
			addListHtml += '		<span>★★★★★</span>('+themeVo.aRating+')</span><br> ';
		}else if (themeVo.aRating >= 3.5){ 
			addListHtml += '		<span>★★★★</span>('+themeVo.aRating+')</span><br> ';
		}else if (themeVo.aRating >= 2.5){ 
			addListHtml += '		<span>★★★</span>('+themeVo.aRating+')</span><br> ';
		}else if (themeVo.aRating >= 1.5){ 
			addListHtml += '		<span>★★</span>('+themeVo.aRating+')</span><br> ';
		}else if (themeVo.aRating >= 0.5){ 
			addListHtml += '		<span>★</span>('+themeVo.aRating+')</span><br> ';
		}else { 
			addListHtml += '		<span>-</span>('+themeVo.aRating+')</span><br> ';
		}
		addListHtml += '		<span>유형 : </span><span>'+themeVo.themeType+'</span> | ';
		addListHtml += '		<span>활동성 : </span><span>'+themeVo.activity+'</span>';
		addListHtml += '	</div>';
		addListHtml += '</div>';
		
		$("#theme_search_list").append(addListHtml);
		
	};
	
</script>


</html>