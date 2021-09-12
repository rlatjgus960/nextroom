<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/board.css" rel="stylesheet" type="text/css">



<link href="./read.css" rel="stylesheet" type="text/css">



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
				<div id="subheader-mintitle">커뮤니티 > 자유게시판 > 글쓰기</div>
	
	
	
			 </div>

			

			 <div id="contentMain" class="clearfix">
				<!-- aside -->
				<div id="aside">
						<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png" width="35px" height="35px">
						
						<div id="aside_cate_coummunity">
							<!-- <div id="aside_title"> -->
								<!-- <p>자유게시판</p> -->
							<!-- </div> -->
							<ul>
								<li><a class="active" href="">자유게시판</a></li>
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
							<a href=""><img src="./image/Board_all_icon.jpg" width="14px" height="14px" >전 체</a>
							<a href=""><img src="./image/hot.png" width="14px" height="14px" >인 기</a>
							<a href=""><img src="./image/hit.png" width="14px" height="14px" >조 회</a>

						</ul>
					</div>
					<!-- //버튼 -->

					<!-- 수정/ 삭제/ 목록 버튼 -->
					<div>
						<div id="update_button" class="clearfix" >
							<ul>							
								<a href="" class="submit_button">목 록</a>	<!-- 수정폼으로 이동(작성자만 보임) -->
								<a href="" class="submit_button">삭 제</a>	<!-- 글 삭제(작성자만 보임) -->
								<a href="" class="submit_button">수 정</a>	<!-- 최신 목록으로 이동-->	
							</ul>
						</div>
					</div>
					<!-- //수정/ 삭제/ 목록 버튼 -->

					<!-- 글 읽기폼 -->
					<div id="read_area" class="clearfix">
						<form action="" method="get" class="form_area">

							<div>
								<h3>제목입니다.</h3>
							</div>

							<div id="user_information">
								<span>작성자 : danny</span>
								<span>작성일 : 2021.09.11</span>
								<span>조회 : 123</span>
								<span>댓글 : 32</span>
							</div>

							<div class="clearfix">
								<div id="img_area">
									<img src="image/ㅇㅅㄹ.png">
								</div>
							</div>
							
							<div id="">
								<p>글쓰기영역</p>
							</div>





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