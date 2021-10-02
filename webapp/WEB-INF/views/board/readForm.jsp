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
<link href="${pageContext.request.contextPath }/assets/css/board_css/read.css" rel="stylesheet" type="text/css">



<title>게시글 읽기</title>
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
				<div id="subheader-mintitle">커뮤니티 > 자유게시판 > 글쓰기</div>
	
	
	
			 </div>

			

			 <div id="contentMain" class="clearfix">
				<!-- aside -->
				<div id="aside">
						<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png" width="35px" height="35px">
						
						<div id="aside_cate">
							<ul>
								<li><a class="active" href="${pageContext.request.contextPath }/board/freeCommunity">자유게시판</a></li>
								<li><a class="" href="">후기게시판</a></li>
								<li><a class="" href="">양도/교환</a></li>
								<li><a class="" href="">공지사항</a></li>
								<li><a class="" href="">FAQ</a></li>		
							</ul>
						</div>
					</div>
				<!-- //aside -->
	
				<!-- main -->
				<div id="mypageMain" class="clearfix">
				   
					<!-- 버튼 -->
					<div id="list_button" >
						<ul>							
							<a href="${pageContext.request.contextPath }/board/freeCommunity"><img src="${pageContext.request.contextPath }/assets/image/board_image/Board_all_icon.jpg" width="14px" height="14px" >전 체</a>
							<a href="${pageContext.request.contextPath }/board/freeCommunity"><img src="${pageContext.request.contextPath }/assets/image/board_image/hot.png" width="14px" height="14px" >인 기</a>
							<a href="${pageContext.request.contextPath }/board/freeCommunity"><img src="${pageContext.request.contextPath }/assets/image/board_image/hit.png" width="14px" height="14px" >조 회</a>

						</ul>
					</div>
					<!-- //버튼 -->

					<!-- 수정/ 삭제/ 목록 버튼 -->
					<div>
						<div id="update_button" class="clearfix" >
							<ul>							
								<a href="${pageContext.request.contextPath }/board/freeCommunity" class="submit_button">목 록</a>	<!-- 최신 목록으로 이동-->	
								<a href="" class="submit_button">삭 제</a>	<!-- 글 삭제(작성자만 보임) -->
								<a href="" class="submit_button">수 정</a>	<!-- 수정폼으로 이동(작성자만 보임) -->
							</ul>
						</div>
					</div>
					<!-- //수정/ 삭제/ 목록 버튼 -->

					<!-- 글 읽기폼 -->
					<div id="read_area" class="clearfix">
						<form action="" method="get" class="form_area">

							<div>
								<h3>${reviewBoardVo.reviewTitle}</h3>
							</div>

							<div id="user_information">
								<span>작성자 : ${reviewBoardVo.nickname}</span>								
								<span>조회 : ${reviewBoardVo.reviewHit}</span>
								<span>작성일 : ${reviewBoardVo.reviewRegDate}</span>
							</div>

							<!-- 콘텐츠 -->
							<div id="board">								
								<!-- 콘텐츠 메인정보 -->
								<div id=main_informa>
									<div id="img_area" class="board_content">
										<img src="${pageContext.request.contextPath }/assets/image/board_image/water.jpg">	<!-- 이미지 넣을때마다 반복 어케 하냐고 -->

											<div id="text_area">
												<span>${requestScope.reviewBoardVo.reviewcontent}</span>
											</div>

										<div id="wrap_up_down">
											<a href="${pageContext.request.contextPath }/board/freeCommunity" class="back_button">목 록</a> <!-- href에 js 넣어야할듯-->
											<a href="" class="up_down">추 천</a>
											<a href="" class="up_down">반 대</a>
										</div>

										<!-- 이전/다음 글 -->
										<div id="wrap_preview">
											<div class="prv">
											  <table width="100%">
												<tr>
													<td width="60" height="20" class="writing"><a href="">▲ 다음 글</a></td>
													<td width="360" class="next"><a href="">다음 글이 없습니다. </a></td>
												</tr>
												<tr>
													<td width="60" height="20" class="writing"><a href="">▼ 이전 글</a></td>
													<td width="360" class="next"><a href="">이전 글이 없습니다.</a></td>												
												</tr>
											  </table>
											</div>
										</div>
										<!-- //이전/다음 글 -->

										<!-- 댓글쓰기 -->
										<div id="comment">
											<strong>댓글 쓰기</strong>
											<div>
												<input type="text" placeholder="로그인 후 이용해 주세요">
												<a href="">등 록</a>
											</div>
										</div>
										<!-- //댓글쓰기 -->

										<!-- 댓글 리스트 -->
										<div id="comment_box">
											<ul id="comment_list">
												<li id="">
													<div id="nick_box">슬퍼하지마 노노노</div>
													<div id="comment_content">댓글 내용 후루룩짭짭 아이고 힘들다 죽겄다 에혀</div>
													<div id="write_date">2021.09.12</div>
													<div id="delete_comment"><a href=""><img src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"></a></div>	<!-- ajax사용 해야하나 -->
												</li>																																																								
											</ul>
										</div>
										<!-- //댓글 리스트 -->

										<!-- 하단 여백 -->
										<div id="blank" class="clearfix"></div>
										<!-- //하단 여백 -->

									</div>

								</div>
								<!-- //콘텐츠 메인정보 -->


							</div>
							<!-- //콘텐츠-->
						</form>
					</div>
					<!-- //글 읽기폼 -->



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
</html>