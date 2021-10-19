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


<title>후기게시판</title>
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
								<li><a class="" href="${pageContext.request.contextPath }/board/freeCommunity">자유게시판</a></li>
								<li><a class="active" href="${pageContext.request.contextPath }/board/reviewBoard">후기게시판</a></li>
								<li>양도/교환</li>
								<li>공지사항</li>
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
							<a href="${pageContext.request.contextPath }/board/reviewBoard/hot"><img src="${pageContext.request.contextPath }/assets/image/board_image/hot.png" width="14px" height="14px" >인 기</a>
							<a href="${pageContext.request.contextPath }/board/reviewBoard/Like"><img src="${pageContext.request.contextPath }/assets/image/board_image/hit.png" width="14px" height="14px" >조 회</a>

						</ul>
					</div>
					<!-- //버튼 -->



					<!-- 검색영역(기간 선택) -->
					<div id="search_area" class="clearfix">
						<form action="${pageContext.request.contextPath }/board/reviewBoard" method="get" class="form_area">
							<div class="search">
								<input type="text" name="keyword" placeholder="검색어를 입력해주세요">
								<button class="search_button" type="submit">검색</button>
							</div>
		
							<!-- <div>
								<select class="content_select">
									<option>15개씩</option>
									<option>30개씩</option>
									<option>50개씩</option>
								</select>
							</div> -->

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
								<c:forEach items = "${reviewBoardList.reviewList }" var = "reviewBoardList">					
									<tr>
										<c:if test="${reviewBoardList.reviewImg != null}">
											<td><img class="img" src="${pageContext.request.contextPath }/upload/${reviewBoardList.reviewImg}"></td>
										</c:if>
										
										<c:if test="${reviewBoardList.reviewImg == null}">
											<td><img class="img" src="${pageContext.request.contextPath }/assets/image/cafe/noImg.png"></td>
										</c:if>
										
										<td><a href="${pageContext.request.contextPath }/board/readForm?reviewNo=${reviewBoardList.reviewNo }">${reviewBoardList.reviewTitle }</a></td>
										<td id="btnNick">
											<a class="nickName">
												${reviewBoardList.nickname} 
											</a>		
										</td>
										<td>${reviewBoardList.reviewHit }</td>
										<td>${reviewBoardList.reviewLike }</td>
										<td>${reviewBoardList.reviewRegDate}</td>
									</tr>
								</c:forEach>									
							</tbody>
							
						</table>
					</div>
					<!-- //게시판 리스트 -->

					<!-- 글쓰기버튼 -->
 					<c:if test = "${!empty authUser }">
						<div>
							<a class="submit_button" href="${pageContext.request.contextPath }/board/reviewWriteForm">글쓰기</a>
						</div>
- 					</c:if>
					
					<!-- 페이징 -->
					<div id="pager">
						<ul>
							<c:if test="${reviewBoardList.prev == true }">
								<li><a href="${pageContext.request.contextPath}/board/reviewBoard?crtPage=${reviewBoardList.startPageBtnNo-1}&keyword=${param.keyword}">◀</a></li>
							</c:if>
							
							<c:forEach begin = "${reviewBoardList.startPageBtnNo}" end = "${reviewBoardList.endPageBtnNo}" step = "1" var = "page">
								<c:choose>
									<c:when test = "${param.crtPage eq page}">
										<li class = "active"><a href="${pageContext.request.contextPath}/board/reviewBoard?crtPage=${page}&keyword=${param.keyword}">${page }</a></li>
									</c:when>
									<c:otherwise>
									<li><a href="${pageContext.request.contextPath}/board/reviewBoard?crtPage=${page}&keyword=${param.keyword}">${page }</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							
							<c:if test = "${reviewBoardList.next == true}">
								<li><a href="${pageContext.request.contextPath}/board/reviewBoard?crtPage=${reviewBoardList.endPageBtnNo+1}&keyword=${param.keyword}">▶</a></li>
							</c:if>
						</ul>			

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

	<!-- 닉네임 클릭시 모달 -->
	<div id="nick_modal">
		<ul class="nick_modal_list">
			
			<li>
				<a href="${pageContext.request.contextPath }/rank/detail">
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
	<!-- //닉네임 클릭시 모달 -->


	 
</body>


<script type="text/javascript">

/* //모달창 열기(개별로 userNo값 받아서 열리게 해야할듯함)
$(".nickName").on("click", function() {
	$("#nick_modal").attr("style", "display:block");
	document.body.classList.add("stop-scroll");

});

//모달창 외부 클릭시 닫힘
$(document).mouseup(function (e){

	var container = $('#nick_modal');

	if( container.has(e.target).length === 0){

	container.css('display','none');

	}

}); */



//모달창 열기(개별로 userNo값 받아서 열리게 해야할듯함)
$(".nickName").on("click", function() {
	$("#nick_modal").attr("style", "display:block");
	document.body.classList.add("stop-scroll");

});

		
//모달창 외부 클릭시 닫힘
$(document).mouseup(function (e){

	var container = $('#nick_modal');

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