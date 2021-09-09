<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/board.css" rel="stylesheet" type="text/css">


<title>자유게시판</title>
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
		<div id="content" >
			
			<div id="subheader" class="clearfix">
				<div id="subheader-title">
				   <h1>자유게시판</h1>
				</div>
				<div id="subheader-mintitle">커뮤니티 > 자유게시판</div>
	
	
	
			 </div>

			

			 <div id="contentMain" class="clearfix">
				<!-- aside -->
				<div id="aside">
						<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png" width="35px" height="35px">
						
						<div id="aside_cate_coummunity">
							<!-- <div id="aside_title"> -->
								<p>커뮤니티</p>
							<!-- </div> -->
							<ul>
								<li>자유게시판</li>
								<li>후기게시판</li>
								<li>양도/교환</li>
								<li>공지사항</li>
								<li>FAQ</li>		
							</ul>
						</div>
					</div>
				<!-- //aside -->
	
				<!-- main -->
				<div id="mypageMain" class="clearfix">
				   
					<!-- 버튼 -->
					<div id="list_button" >
						<ul>
							<button type="submit">전 체</button>
							<button type="submit">인 기</button>
							<button type="submit">조 회</button>
						</ul>
					</div>
					<!-- //버튼 -->



					<!-- 기간 선택 -->
					<div id="search_area" class="clearfix">
						<form action="" method="get" class="form_area">
							
							<div class="search">
								<input type="text" name="keyword" value="">
								<button type="submit">검색</button>
							</div>

							<div>
								<select class="content_select">
									<option>15개씩</option>
									<option>30개씩</option>
									<option>50개씩</option>
								</select>
							</div>

						</form>
					</div>
					<!-- //기간 선택 -->

					 <!-- 게시판리스트 -->
					 <div id="board_list">
						<table>
							<colgroup>
								<col style="width: 150px;">
								<col style="width: 300px;">
								<col style="width: 150px;">
								<col style="width: 150px;">
								<col style="width: 150px;">
								<col style="width: 100px;">
							</colgroup>
							<thead>
								<tr>
									<th>이미지</th>
									<th>제목</th>
									<th>작성자</th>
									<th>조회수</th>
									<th>추천수</th>
									<th>작성일</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><img id="aside_img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg" width="70px" height="50px"></td>
									<td>방명록</td>
									<td>최원호</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>
								
								<tr>
									<td><img id="aside_img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg" width="70px" height="50px"></td>
									<td>방명록</td>
									<td>최원호</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>
								
								<tr>
									<td><img id="aside_img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg" width="70px" height="50px"></td>
									<td>방명록</td>
									<td>최원호</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>
								
								<tr>
									<td><img id="aside_img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg" width="70px" height="50px"></td>
									<td>방명록</td>
									<td>최원호</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>
								
								<tr>
									<td><img id="aside_img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg" width="70px" height="50px"></td>
									<td>방명록</td>
									<td>최원호</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>
								



							</tbody>
						</table>
					</div>
					<!-- //게시판 리스트 -->

					<!-- 글쓰기버튼 -->

					<a id="btn-write" href="../../../html_01/ex10.html">글쓰기</a>

					<!-- 페이징 -->
					<div id="pager">
						<ol class="clearfix">
							<li><a href="">◀</a></li>
							<li><a class="active" href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">4</a></li>
							<li><a href="">5</a></li>
							<li><a href="">6</a></li>
							<li><a href="">7</a></li>
							<li><a href="">8</a></li>
							<li><a href="">9</a></li>
							<li><a href="">10</a></li>
							<li><a href="">▶</a></li>
						</ol>					

					</div>                            
					<!-- //페이징 -->


				</div>
				<!-- //main -->
			 </div>



		</div>
		<!-- //content -->






		<!-- footer -->
		<div id="footer" >
			상호 : 넥스트룸 | 대표자 : 1조 | 고객센터 : 02-3478-0008<br> 메일 : moon124@gmail.com | 주소 : 서울특별시 서초구 서초4동
			서초대로77길 13<br> Copyright © NEXTROOM All rights reserved.
		</div>
		<!-- //footer -->


	</div>
</body>
</html>