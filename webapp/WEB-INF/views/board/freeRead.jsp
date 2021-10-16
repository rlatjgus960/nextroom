<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/board_css/board.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/board_css/read.css" rel="stylesheet" type="text/css">

<script type="text/javascript"
src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<title></title>
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
				<div id="subheader-mintitle">커뮤니티 > 자유게시판</div>
	
	
	
			 </div>

			

			 <div id="contentMain" class="clearfix">
				<!-- aside -->
				<div id="aside">
						<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png" width="35px" height="35px">
						
						<div id="aside_cate">
							<ul>
								<li><a class="active" href="${pageContext.request.contextPath }/board/freeCommunity">자유게시판</a></li>
								<li><a class="" href="${pageContext.request.contextPath }/board/reviewBoard">후기게시판</a></li>
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
								<a href="${pageContext.request.contextPath }/board/freeCommunity" class="submit_button">목 록</a>	
								
								<c:if test="${authUser.userNo ==  freeBoardVo.userNo}">
									<a id="delete_button" class="submit_button" data-boardno="${freeBoardVo.boardNo}">삭 제</a>	<!-- 글 삭제(작성자만 보임) -->
									<a href="${pageContext.request.contextPath }/board/freeModify?boardNo=${freeBoardVo.boardNo}" class="submit_button">수 정</a>
								</c:if>
								
							</ul>
						</div>
					</div>
					<!-- //수정/ 삭제/ 목록 버튼 -->

					<!-- 글 읽기폼 -->
					<div id="read_area" class="clearfix">

							<div>
								<h3>${freeBoardVo.boardTitle}</h3>
							</div>

							<div class="user_information">
								<span>작성자 : ${freeBoardVo.nickname}</span>								
								<span>조회 : ${freeBoardVo.boardHit}</span>
								<span>추천수 : ${freeBoardVo.boardLike}</span>
								<span>작성일 : ${freeBoardVo.regDate}</span>
							</div>
							
							<!-- 콘텐츠 -->
							<div id="board">								
								<!-- 콘텐츠 메인정보 -->
								<div id=main_informa>
									<div id="img_area" class="board_content">
										
										<!-- 이미지가 있을 경우 -->
										<c:if test="${freeBoardVo.boardImg != null}">
												<img src="${pageContext.request.contextPath }/upload/${freeBoardVo.boardImg}">
											
											<div id="text_area">
												<span>${freeBoardVo.boardContent}</span>
											</div>
										</c:if>
										
										<!-- 이미지가 없을 경우 텍스트만 출력 -->
										<c:if test="${freeBoardVo.boardImg == null}">
											<div id="text_area" style="position:relative; margin-top:20px;">
												<span>${freeBoardVo.boardContent}</span>
											</div>
										</c:if>
										
										
										
											<div id="wrap_up_down">
												<a href="${pageContext.request.contextPath }/board/freeCommunity" class="back_button">목 록</a>
												
												<c:if test="${authUser != null }">
													<a id="like" class="up_down" name="${freeBoardVo.boardLike}">추 천</a>
													<a id="hate" class="up_down" name="${freeBoardVo.boardLike}">반 대</a>
													<input id="boardNoData" type="hidden" value = "${freeBoardVo.boardNo }">
												</c:if>
											</div>
											

										
										
										
										<!-- 이전/다음 글 -->
										
<!-- 										<div id="wrap_preview">
											<div class="prv">
											  <table width="100%">
												<tr>
													<td id="nextNum" width="60" height="20" class="writing"><a href="" >▲ 다음 글</a></td>
													<td width="360" class="next"><a href="">다음 글이 없습니다. </a></td>
												</tr>
												<tr>
													<td width="60" height="20" class="writing"><a href=""><span id="prevNum">▼ 이전 글</span></a></td>
													<td width="360" class="next"><a href="">이전 글이 없습니다.</a></td>												
												</tr>
											  </table>
											</div>
										</div> -->
										
										<!-- //이전/다음 글 -->

										<!-- 댓글쓰기 -->
										<form method="get" class="form_area" onsubmit="return false;" >
											<div id="comment">
												<strong>댓글 쓰기</strong>
												<div>
													<input type="text" id="commentContent" name="commentContent" onkeyup="e();">
													<input type="hidden" id="boardNo" name="boardNo" value = "${freeBoardVo.boardNo }">
													<a id="boardComment" type="submit">등 록</a>
												</div>
											</div>
										</form>
										<!-- //댓글쓰기 -->

										<!-- 댓글 리스트 -->
 										<div id="comment_box">
<%-- 											<ul id="comment_list">
												<li id="">
													<div id="nick_box">슬퍼하지마 노노노</div>
													<div id="comment_content">댓글 내용 후루룩짭짭 아이고 힘들다 죽겄다 에혀</div>
													<div id="write_date">2021.09.12</div>
													<div id="delete_comment"><a href=""><img src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"></a></div>	<!-- ajax사용 해야하나 -->
												</li>																																																								
											</ul> --%>
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


<script type="text/javascript">

document.title = '${freeBoardVo.boardTitle}';


/*게시글의 삭제버튼을 눌렀을때*/
$("#delete_button").on("click", function() {

	var boardNo = $("#delete_button").data("boardno");
	console.log(boardNo);
	
	const result = confirm("게시물을 삭제하시겠습니까?");
	if(result) {
		
		//ajax서버에 요청
		$.ajax({
			
			url : "${pageContext.request.contextPath }/board/freeDelete",		
			type : "post",
// 			contentType : "application/json",
			data : {boardNo: boardNo},

// 			dataType : "json",
			success : function(count){
				/*성공시 처리해야될 코드 작성*/
				console.log("삭제완료");
				
				if(count > 0) {
					window.location.assign('http://localhost:8088/nextroom/board/freeCommunity');
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
		
	}
		
		
});

//게시글 추천
$("#like").on("click",function(){
	console.log("추천 클릭")
	
	var boardNo = $("#boardNoData").val();
	console.log(boardNo);
	
	//ajax서버에 요청
	$.ajax({
		
		url : "${pageContext.request.contextPath }/board/freeLike",		
		type : "post",
//			contentType : "application/json",
		data : {boardNo: boardNo},

//			dataType : "json",
		success : function(count){
			/*성공시 처리해야될 코드 작성*/
			console.log("추천완료");
			
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
});

//게시글 비추천
$("#hate").on("click",function(){
	console.log("비추천 클릭")
	
	var boardNo = $("#boardNoData").val();
	console.log(boardNo);
	
	//ajax서버에 요청
	$.ajax({
		
		url : "${pageContext.request.contextPath }/board/freeHate",		
		type : "post",
//			contentType : "application/json",
		data : {boardNo: boardNo},

//			dataType : "json",
		success : function(count){
			/*성공시 처리해야될 코드 작성*/
			console.log("비추천완료");
			
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
});




/********************댓글**********************/

//화면이 로딩되기 직전 -> DOM생성
$(document).ready(function(){
	console.log("화면 로딩 직전");
	
	//ajax로 요청하기
	fetchList();
}); 


//리스트 가져오기
function fetchList(){

	$.ajax({
		
		/******여긴 요청 보내는거********/
		url : "${pageContext.request.contextPath }/board/freeCommentList",		
		type : "get",
		//contentType : "application/json",
		data : {boardNo: $("[name='boardNo']").val()},

		//dataType : "json",
		success : function(freeCommentList){
			/*성공시 처리해야될 코드 작성*/
			console.log(freeCommentList);
			
			//화면에 그리기
	         for(var i = 0; i < freeCommentList.length; i++) {
	             render(freeCommentList[i], "down");
	          }
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
};

//그리는 문법임
//방명록 1개씩 랜더링
function render(freeBoardVo, type){
	console.log(${authUser.userNo})
	//console.log(freeBoardVo)
	
  var str = "";
  str += '	<ul>';
  str += '   	<li id="">';
  str += '      	<div class="nick_box">' + freeBoardVo.nickname + '</div>';
  str += '      	<div class="comment_content">' + freeBoardVo.commentContent + '</div>';
  str += '      	<div class="write_date">'+ freeBoardVo.commentDate + '</div>';
  str += '     		<div class="delete_comment"><a href=""><img src="${pageContext.request.contextPath }/assets/image/board_image/delete.png"></a></div>';
  str += '  	</li>';
  str += '	</ul>';

  if(type === 'down'){
  	$("#comment_box").append(str);            	
  } else if(type === 'up'){
  	$("#comment_box").prepend(str);
  } else {
  	console.log("방향을 지정해 주세요");
  }
  
  
};



//댓글 쓰기 (버튼을 눌러서 id값이 넘어와 실행되는 자바스크립트 구문)
$(document).on("click","#boardComment", function(){
var commentContent=$("#commentContent").val(); //댓글 내용
var boardNo="${freeBoardVo.boardNo}"; //게시물 번호
var userNo="${authUser.userNo}";
//var param={ "replytext": replytext, "bno": bno};
console.log("등록버튼 클릭")
console.log(commentContent)
console.log(boardNo)
console.log(userNo)

var freeBoardVo = {
	commentContent : commentContent,
	boardNo : boardNo,
	userNo : userNo
}

console.log(freeBoardVo)

if(commentContent.length < 1){
	  alert("내용을 입력해 주세요")
	  return false;
}

if(userNo < 1){
	  alert("로그인을 해주세요")
	  return false;
}


	//데이터 ajax방식으로 서버에 전송
	$.ajax({
		
		url : "${pageContext.request.contextPath }/board/commentAdd",
		type : "get",
		//contentType : "application/json",	//json방식으로 보내겠다!
		data : freeBoardVo,
		
		dataType : "json",
		success : function(freeBoardVo){
			/*성공시 처리해야될 코드 작성*/
			console.log(freeBoardVo);
			render(freeBoardVo, "up");
				
			//입력폼 초기화
			$("#commentContent").val("");	//()안에 ""있으면 값 비워줌
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});

	  return true;
});


//댓글 쓰기 (버튼을 눌러서 id값이 넘어와 실행되는 자바스크립트 구문)
$("#commentContent").keyup(function e(e){
	 if (e.keyCode === 13) {
		  var commentContent=$("#commentContent").val(); //댓글 내용
		  var boardNo="${freeBoardVo.boardNo}"; //게시물 번호
		  var userNo="${authUser.userNo}";
		  //var param={ "replytext": replytext, "bno": bno};
		  console.log("등록버튼 클릭")
		  console.log(commentContent)
		  console.log(boardNo)
		  console.log(userNo)
		  
		  var freeBoardVo = {
		  	commentContent : commentContent,
		  	boardNo : boardNo,
		  	userNo : userNo
		  }
		  
		  console.log(freeBoardVo)
		  
		  if(commentContent.length < 1){
			  alert("내용을 입력해 주세요")
			  return false;
		  }
		  
		  if(userNo < 1){
			  alert("로그인을 해주세요")
			  return false;
		  }

		  
			//데이터 ajax방식으로 서버에 전송
			$.ajax({
				
				url : "${pageContext.request.contextPath }/board/commentAdd",
				type : "get",
				//contentType : "application/json",	//json방식으로 보내겠다!
				data : freeBoardVo,
				
				dataType : "json",
				success : function(freeBoardVo){
					/*성공시 처리해야될 코드 작성*/
					console.log(freeBoardVo);
					render(freeBoardVo, "up");
						
					//입력폼 초기화
					$("#commentContent").val("");	//()안에 ""있으면 값 비워줌
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});

			  return true;
		  }  
	
	return true;
});

//2021.10.16 by 원호
//이전글
// $("#prevNum").on("click", function(){
// 	console.log("이전글 클릭")
	
// 	var boardNo = "${freeBoardVo.boardNo}"
// 	console.log(boardNo)
// 	//데이터 ajax방식으로 서버에 전송
// 	$.ajax({
		
// 		url : "${pageContext.request.contextPath }/board/prev",
// 		type : "get",
// 		//contentType : "application/json",	//json방식으로 보내겠다!
// 		data : freeBoardVo,
		
// 		dataType : "json",
// 		success : function(freeBoardVo){
// 			/*성공시 처리해야될 코드 작성*/
// 			console.log(freeBoardVo);
// 			render(freeBoardVo, "up");
				
// 			//입력폼 초기화
// 			$("#commentContent").val("");	//()안에 ""있으면 값 비워줌
// 		},
// 		error : function(XHR, status, error) {
// 			console.error(status + " : " + error);
// 		}
// 	});
	
// })




</script>


</html>