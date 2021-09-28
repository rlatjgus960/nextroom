<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/board_css/board.css" rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>


<title>자유게시판</title>
</head>
<body>

		<!-- 헤더영역 -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- //헤더영역 -->

	<div id="wrap">


		<!-- content -->
		<div id="content" >
			
			<div id="subheader" class="clearfix">
				<div id="subheader-title">
				   <h2>커뮤니티</h2>
				</div>
				<div id="subheader-mintitle">커뮤니티 > 후기게시판</div>
	
	
	
			 </div>

			

			 <div id="contentMain" class="clearfix">
				<!-- aside -->
				<div id="aside">
						<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png" width="35px" height="35px">
						
						<div id="aside_cate">
							<ul>
								<li><a class="active" href="${pageContext.request.contextPath }/board/freeCommunity">자유게시판</a></li>
								<li><a class="active" href="${pageContext.request.contextPath }/board/reviewBoard">후기게시판</a></li>
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
							<a href="${pageContext.request.contextPath }/board/reviewBoard"><img src="${pageContext.request.contextPath }/assets/image/board_image/Board_all_icon.jpg" width="14px" height="14px" >전 체</a>
							<a href="${pageContext.request.contextPath }/board/reviewBoard"><img src="${pageContext.request.contextPath }/assets/image/board_image/hot.png" width="14px" height="14px" >인 기</a>
							<a href="${pageContext.request.contextPath }/board/reviewBoard"><img src="${pageContext.request.contextPath }/assets/image/board_image/hit.png" width="14px" height="14px" >조 회</a>

						</ul>
					</div>
					<!-- //버튼 -->



					<!-- 검색영역(기간 선택) -->
					<div id="search_area" class="clearfix">
						<form action="" method="get" class="form_area">
							
							<div class="search">
								<input type="text" name="keyword" value="" placeholder="검색어를 입력해주세요">
								<button class="search_button" type="submit">검색</button>
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
								<col style="width: 120px;">
								<col style="width: 340px;">
								<col style="width: 150px;">
								<col style="width: 140px;">
								<col style="width: 140px;">
								<col style="width: 120px;">
							</colgroup>
							<thead>
								<tr>
									<th>이미지</th>
									<th>제      목</th>
									<th>작성자</th>
									<th>조회수</th>
									<th>추천수</th>
									<th>작성일</th>
								</tr>
							</thead>

							<tbody>							
								<tr>
									<td><img class="img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg"></td>
									<td><a href="${pageContext.request.contextPath }/board/readForm">후기게시판입니다.</a></td>
									<td class="btnNick">
										<span class="nickName1">
											최원호
										</span>		
											
										<div class="nick_modal1">
											<ul class="nick_modal_list1">
												
												<li>
													<a href="">
														<span>랭킹 보기</span>
													</a>	
												</li>
											
												<li>
													<a href="">
														<span>게시글보기</span>
													</a>	
												</li>
										
												<li>
													<a href = "javascript:popup()">
														<span>쪽지보내기</span>
													</a>	
												</li>			
											</ul>
										</div>																	 
									</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>
								
								<tr>
									<td><img class="img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg"></td>
									<td><a href="${pageContext.request.contextPath }/board/readForm">후기게시판입니다.</a></td>
									<td class="btnNick">
										<span class="nickName">
											최원호
										</span>		
											
										<div class="nick_modal">
											<ul class="nick_modal_list">
												
												<li>
													<a href="">
														<span>랭킹 보기</span>
													</a>	
												</li>
											
												<li>
													<a href="">
														<span>게시글보기</span>
													</a>	
												</li>
										
												<li>
													<a href="#none" target="_blank" onclick="openPop">
														<span>쪽지보내기</span>
													</a>	
												</li>			
											</ul>
										</div>																	 
									</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>								
									
								<tr>
									<td><img class="img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg"></td>
									<td><a href="${pageContext.request.contextPath }/board/readForm">후기게시판입니다.</a></td>
									<td class="btnNick">
										<span class="nickName">
											최원호
										</span>		
											
										<div class="nick_modal">
											<ul class="nick_modal_list">
												
												<li>
													<a href="">
														<span>랭킹 보기</span>
													</a>	
												</li>
											
												<li>
													<a href="">
														<span>게시글보기</span>
													</a>	
												</li>
										
												<li>
													<a href="#none" target="_blank" onclick="openPop">
														<span>쪽지보내기</span>
													</a>	
												</li>			
											</ul>
										</div>																	 
									</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>	

								<tr>
									<td><img class="img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg"></td>
									<td><a href="${pageContext.request.contextPath }/board/readForm">후기게시판입니다.</a></td>
									<td class="btnNick">
										<span class="nickName">
											최원호
										</span>		
											
										<div class="nick_modal">
											<ul class="nick_modal_list">
												
												<li>
													<a href="">
														<span>랭킹 보기</span>
													</a>	
												</li>
											
												<li>
													<a href="">
														<span>게시글보기</span>
													</a>	
												</li>
										
												<li>
													<a href="#none" target="_blank" onclick="openPop">
														<span>쪽지보내기</span>
													</a>	
												</li>			
											</ul>
										</div>																	 
									</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>		

								<tr>
									<td><img class="img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg"></td>
									<td><a href="${pageContext.request.contextPath }/board/readForm">후기게시판입니다.</a></td>
									<td class="btnNick">
										<span class="nickName">
											최원호
										</span>		
											
										<div class="nick_modal">
											<ul class="nick_modal_list">
												
												<li>
													<a href="">
														<span>랭킹 보기</span>
													</a>	
												</li>
											
												<li>
													<a href="">
														<span>게시글보기</span>
													</a>	
												</li>
										
												<li>
													<a href="#none" target="_blank" onclick="openPop">
														<span>쪽지보내기</span>
													</a>	
												</li>			
											</ul>
										</div>																	 
									</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>		
								
								<tr>
									<td><img class="img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg"></td>
									<td><a href="${pageContext.request.contextPath }/board/readForm">후기게시판입니다.</a></td>
									<td class="btnNick">
										<span class="nickName">
											최원호
										</span>		
											
										<div class="nick_modal">
											<ul class="nick_modal_list">
												
												<li>
													<a href="">
														<span>랭킹 보기</span>
													</a>	
												</li>
											
												<li>
													<a href="">
														<span>게시글보기</span>
													</a>	
												</li>
										
												<li>
													<a href="#none" target="_blank" onclick="openPop">
														<span>쪽지보내기</span>
													</a>	
												</li>			
											</ul>
										</div>																	 
									</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>		
								
								<tr>
									<td><img class="img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg"></td>
									<td><a href="${pageContext.request.contextPath }/board/readForm">후기게시판입니다.</a></td>
									<td class="btnNick">
										<span class="nickName">
											최원호
										</span>		
											
										<div class="nick_modal">
											<ul class="nick_modal_list">
												
												<li>
													<a href="">
														<span>랭킹 보기</span>
													</a>	
												</li>
											
												<li>
													<a href="">
														<span>게시글보기</span>
													</a>	
												</li>
										
												<li>
													<a href="#none" target="_blank" onclick="openPop">
														<span>쪽지보내기</span>
													</a>	
												</li>			
											</ul>
										</div>																	 
									</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>		
								
								<tr>
									<td><img class="img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg"></td>
									<td><a href="${pageContext.request.contextPath }/board/readForm">후기게시판입니다.</a></td>
									<td class="btnNick">
										<span class="nickName">
											최원호
										</span>		
											
										<div class="nick_modal">
											<ul class="nick_modal_list">
												
												<li>
													<a href="">
														<span>랭킹 보기</span>
													</a>	
												</li>
											
												<li>
													<a href="">
														<span>게시글보기</span>
													</a>	
												</li>
										
												<li>
													<a href="#none" target="_blank" onclick="openPop">
														<span>쪽지보내기</span>
													</a>	
												</li>			
											</ul>
										</div>																	 
									</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>		
		
								<tr>
									<td><img class="img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg"></td>
									<td><a href="${pageContext.request.contextPath }/board/readForm">후기게시판입니다.</a></td>
									<td class="btnNick">
										<span class="nickName">
											최원호
										</span>		
											
										<div class="nick_modal">
											<ul class="nick_modal_list">
												
												<li>
													<a href="">
														<span>랭킹 보기</span>
													</a>	
												</li>
											
												<li>
													<a href="">
														<span>게시글보기</span>
													</a>	
												</li>
										
												<li>
													<a href="#none" target="_blank" onclick="openPop">
														<span>쪽지보내기</span>
													</a>	
												</li>			
											</ul>
										</div>																	 
									</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>		
								
								<tr>
									<td><img class="img" src="${pageContext.request.contextPath }/assets/image/board_image/image.jpg"></td>
									<td><a href="${pageContext.request.contextPath }/board/readForm">후기게시판입니다.</a></td>
									<td class="btnNick">
										<span class="nickName">
											최원호
										</span>		
											
										<div class="nick_modal">
											<ul class="nick_modal_list">
												
												<li>
													<a href="">
														<span>랭킹 보기</span>
													</a>	
												</li>
											
												<li>
													<a href="">
														<span>게시글보기</span>
													</a>	
												</li>
										
												<li>
													<a href="#none" target="_blank" onclick="openPop">
														<span>쪽지보내기</span>
													</a>	
												</li>			
											</ul>
										</div>																	 
									</td>
									<td>123</td>
									<td>321</td>
									<td>2021.09.09</td>
								</tr>		
							
																																																				
								
																	
							</tbody>
						</table>
					</div>
					<!-- //게시판 리스트 -->

					<!-- 글쓰기버튼 -->
					<div>
						<a class="submit_button" href="${pageContext.request.contextPath }/board/reviewWriteForm">글쓰기</a>
					</div>
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

		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

		<!-- //footer -->


										



	</div>




	 
</body>


<script type="text/javascript">

//모달창 열기(개별로 userNo값 받아서 열리게 해야할듯함)
$(".nickName1").on("click", function() {
	$(".nick_modal1").attr("style", "display:block");
	document.body.classList.add("stop-scroll");

});

//모달창 외부 클릭시 닫힘
$(document).mouseup(function (e){

	var container = $('.nick_modal1');

	if( container.has(e.target).length === 0){

	container.css('display','none');

	}

});


//쪽지보내기 팝업
function popup(){
    var url = "${pageContext.request.contextPath }/board/massageForm";
    var name = "popup test";
    var option = "width = 500, height = 500, top = 250, left = 700, location = no"
    window.open(url, name, option);
}
   
   
</script>








</html>