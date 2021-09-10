<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/cafe.css" rel="stylesheet" type="text/css">

<title>카페 메인</title>
</head>
<body>

	<!-- 헤더영역 -->
	<div id="header">
		<div id="header-item">
			<a><img id="logo" src="${pageContext.request.contextPath }/assets/image/logo.jpg"></a>

			<div id="nav">

				<ul id="bar">
					<li><a href="">카페/테마</a></li>
					<li><a href="">예약</a></li>
					<li><a href="">파티구하기</a></li>
					<li><a href="">랭킹</a></li>
					<li><a href="">커뮤니티</a></li>
				</ul>


				<ul id="login_area">
					<li><a href="" class=""><img id="" src="${pageContext.request.contextPath }/assets/image/messageicon.jpg"></a></li>
					<li><a href="" class=""><img id="" src="${pageContext.request.contextPath }/assets/image/alerticon.jpg"></a></li>
					<li class="line-right mypageIcon"><a href="" class="btn_s">로그아웃</a></li>
					<li class="mypageBtn"><a href="" class="btn_s">마이페이지</a></li>
				</ul>
			</div>
			
		</div>
		
	</div>
	<!-- //헤더영역 -->

	<div id="wrap">

		<!-- content -->
		<div id="content">
			<div id="subheader" class="clearfix">
				<div id="subheader-title">
					<h2>방탈출 카페</h2>
				</div>
				
			</div>

			<div id="contentMain" class="clearfix">
				
				<!-- main -->
				<div id="cafe_region_list" class="clearfix">

					<img id="cafe_map_img" src="${pageContext.request.contextPath }/assets/image/cafe/map_all.PNG">
		
					<div id="cafe_region">
						<a href="" class="">전국</a> | <a href="" class="">홍대</a> | <a href="" class="">강남</a> | <a href="" class="">건대</a> | 
						<a href="" class="">신촌</a> | <a href="" class="">대학로</a> | <a href="" class="">강북</a> | <a href="" class="">신림</a> |
						<a href="" class="">서울(기타)</a> | <a href="" class="">부천</a> | <a href="" class="">일산</a> | <a href="" class="">수원</a> | 
						<a href="" class="">안양</a> | <a href="" class="">경기(기타)</a><br>
						
						<a href="" class="">인천</a> | <a href="" class="">강원</a> | <a href="" class="">대전</a> | <a href="" class="">천안</a> | 
						<a href="" class="">청주</a> | <a href="" class="">충청(기타)</a> | <a href="" class="">대구</a> | <a href="" class="">부산</a> | 
						<a href="" class="">경상(기타)</a> | <a href="" class="">전주</a> | <a href="" class="">광주</a> | <a href="" class="">전라(기타)</a> | 
						<a href="" class="">제주</a>
					</div>
					
				</div>
				<!-- //main -->

				<!-- 검색정렬 -->
				<div id="cafe_range" class="clearfix">

					<select id="cafe_array" class="">
						<option value="" selected="">리뷰많은순</option>
						<option value="party_ing">관심많은순</option>
					</select>

					<form id="cafe_search" class="" action="" method="get">
						<div class="form-group text-right">
							<input type="text" name="keyword">
							<button type="submit" id=btn_search class="search_button">검색</button>
						</div>
					</form>
				</div>
				<!-- //검색정렬 -->


				<!-- 카페리스트 -->
				<div id="cafe_list" class="">
		
					<!-- 리스트 반복영역 -->
					<div class="cafe_list_item clearfix">
						<img id="" class="cafe_img" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png">
						<div id="" class="cafe_info">
							<div class="cafe_intro">
								<p class="cafe_name">방탈출 카페 이름</p>
								<p class="cafe_content">방탈출 카페 한줄 소개</p>
							</div>

							<div class="cafe_contact">
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/tel.png">
									<a href="">전화번호</a>
								</div>
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/loc.png">
									<a href="">위치</a>
								</div>

								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/time.png">
									<a href="">운영시간</a>
								</div>


							</div>
						</div>
					</div>
					
					<div class="cafe_list_item clearfix">
						<img id="" class="cafe_img" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png">
						<div id="" class="cafe_info">
							<div class="cafe_intro">
								<p class="cafe_name">방탈출 카페 이름</p>
								<p class="cafe_content">방탈출 카페 한줄 소개</p>
							</div>

							<div class="cafe_contact">
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/tel.png">
									<a href="">전화번호</a>
								</div>
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/loc.png">
									<a href="">위치</a>
								</div>

								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/time.png">
									<a href="">운영시간</a>
								</div>


							</div>
						</div>
					</div>
					
					<div class="cafe_list_item clearfix">
						<img id="" class="cafe_img" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png">
						<div id="" class="cafe_info">
							<div class="cafe_intro">
								<p class="cafe_name">방탈출 카페 이름</p>
								<p class="cafe_content">방탈출 카페 한줄 소개</p>
							</div>

							<div class="cafe_contact">
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/tel.png">
									<a href="">전화번호</a>
								</div>
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/loc.png">
									<a href="">위치</a>
								</div>

								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/time.png">
									<a href="">운영시간</a>
								</div>


							</div>
						</div>
					</div>
					
					<div class="cafe_list_item clearfix">
						<img id="" class="cafe_img" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png">
						<div id="" class="cafe_info">
							<div class="cafe_intro">
								<p class="cafe_name">방탈출 카페 이름</p>
								<p class="cafe_content">방탈출 카페 한줄 소개</p>
							</div>

							<div class="cafe_contact">
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/tel.png">
									<a href="">전화번호</a>
								</div>
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/loc.png">
									<a href="">위치</a>
								</div>

								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/time.png">
									<a href="">운영시간</a>
								</div>


							</div>
						</div>
					</div>
					
					<div class="cafe_list_item clearfix">
						<img id="" class="cafe_img" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png">
						<div id="" class="cafe_info">
							<div class="cafe_intro">
								<p class="cafe_name">방탈출 카페 이름</p>
								<p class="cafe_content">방탈출 카페 한줄 소개</p>
							</div>

							<div class="cafe_contact">
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/tel.png">
									<a href="">전화번호</a>
								</div>
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/loc.png">
									<a href="">위치</a>
								</div>

								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/time.png">
									<a href="">운영시간</a>
								</div>


							</div>
						</div>
					</div>
					
					<div class="cafe_list_item clearfix">
						<img id="" class="cafe_img" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png">
						<div id="" class="cafe_info">
							<div class="cafe_intro">
								<p class="cafe_name">방탈출 카페 이름</p>
								<p class="cafe_content">방탈출 카페 한줄 소개</p>
							</div>

							<div class="cafe_contact">
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/tel.png">
									<a href="">전화번호</a>
								</div>
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/loc.png">
									<a href="">위치</a>
								</div>

								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/time.png">
									<a href="">운영시간</a>
								</div>


							</div>
						</div>
					</div>
					
					<div class="cafe_list_item clearfix">
						<img id="" class="cafe_img" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png">
						<div id="" class="cafe_info">
							<div class="cafe_intro">
								<p class="cafe_name">방탈출 카페 이름</p>
								<p class="cafe_content">방탈출 카페 한줄 소개</p>
							</div>

							<div class="cafe_contact">
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/tel.png">
									<a href="">전화번호</a>
								</div>
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/loc.png">
									<a href="">위치</a>
								</div>

								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/time.png">
									<a href="">운영시간</a>
								</div>


							</div>
						</div>
					</div>
					
					<div class="cafe_list_item clearfix">
						<img id="" class="cafe_img" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png">
						<div id="" class="cafe_info">
							<div class="cafe_intro">
								<p class="cafe_name">방탈출 카페 이름</p>
								<p class="cafe_content">방탈출 카페 한줄 소개</p>
							</div>

							<div class="cafe_contact">
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/tel.png">
									<a href="">전화번호</a>
								</div>
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/loc.png">
									<a href="">위치</a>
								</div>

								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/time.png">
									<a href="">운영시간</a>
								</div>


							</div>
						</div>
					</div>
					
					<div class="cafe_list_item clearfix">
						<img id="" class="cafe_img" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png">
						<div id="" class="cafe_info">
							<div class="cafe_intro">
								<p class="cafe_name">방탈출 카페 이름</p>
								<p class="cafe_content">방탈출 카페 한줄 소개</p>
							</div>

							<div class="cafe_contact">
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/tel.png">
									<a href="">전화번호</a>
								</div>
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/loc.png">
									<a href="">위치</a>
								</div>

								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/time.png">
									<a href="">운영시간</a>
								</div>


							</div>
						</div>
					</div>
					
					<div class="cafe_list_item clearfix">
						<img id="" class="cafe_img" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png">
						<div id="" class="cafe_info">
							<div class="cafe_intro">
								<p class="cafe_name">방탈출 카페 이름</p>
								<p class="cafe_content">방탈출 카페 한줄 소개</p>
							</div>

							<div class="cafe_contact">
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/tel.png">
									<a href="">전화번호</a>
								</div>
								
								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/loc.png">
									<a href="">위치</a>
								</div>

								<div>
									<img src="${pageContext.request.contextPath }/assets/image/cafe/time.png">
									<a href="">운영시간</a>
								</div>


							</div>
						</div>
					</div>

					<!-- //리스트 반복영역 -->

					
					<button id="btn_more" class="lbutton">더보기</button>


				</div>
				<!-- 카페리스트 -->

			</div>


		</div>

		<!-- //content -->


		<!-- footer -->

		<div id="footer">
			상호 : 넥스트룸 | 대표자 : 1조 | 고객센터 : 02-3478-0008<br> 메일 : moon124@gmail.com | 주소 : 서울특별시 서초구 서초4동
			서초대로77길 13<br> Copyright © NEXTROOM All rights reserved.
		</div>

		<!-- //footer -->
	</div>
</body>
</html>