<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 작성일때문에 필요함 -->
<%@ page import = "java.util.Calendar" %>

<%
  String Date = new java.text.SimpleDateFormat("yyyy. MM. dd").format(new java.util.Date());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/board_css/board.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/board_css/write.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/smarteditor2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<title>자유게시판-글쓰기</title>
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
								<li><a class="" href="${pageContext.request.contextPath }/board/reviewBoard">후기게시판</a></li>
								<li><a class="" href="">양도/교환</a></li>
								<li><a class="" href="">공지사항</a></li>
							</ul>
						</div>
					</div>
				<!-- //aside -->
	
				<!-- main -->
				<div id="mypageMain" class="clearfix">
				   
					<!-- 버튼 -->
					<div id="list_button" >
						<ul>							
							<a href="${pageContext.request.contextPath }/community"><img src="${pageContext.request.contextPath }/assets/image/board_image/Board_all_icon.jpg" width="14px" height="14px" >전 체</a>
							<a href="${pageContext.request.contextPath }/community"><img src="${pageContext.request.contextPath }/assets/image/board_image/hot.png" width="14px" height="14px" >인 기</a>
							<a href="${pageContext.request.contextPath }/community"><img src="${pageContext.request.contextPath }/assets/image/board_image/hit.png" width="14px" height="14px" >조 회</a>

						</ul>
					</div>
					<!-- //버튼 -->

					<!-- 기간 선택 -->
					<div id="search_area" class="clearfix">
						<form action="" method="get" class="form_area">

                            <div id="category_title">
								<h3>글 쓰기</h3>
							</div>

							<div>
								<select class="board_select" onchange="if(this.value) location.href=(this.value);">
									<option value="${pageContext.request.contextPath }/board/writeForm">자유게시판</option>								
									<option value="${pageContext.request.contextPath }/board/reviewWriteForm">후기게시판</option>
									<option>양도/교환</option>
								</select>
							</div>

						</form>
					</div>
					<!-- //기간 선택 -->

                    <!-- 글등록 공간 -->
                    <div id="writecontent_area">

						<form id="boardForm" action="${pageContext.request.contextPath }/board/boardWrite" method="post" enctype="multipart/form-data"> 
							<div id="content_title">
								<input type="text" id="boardTitle" name="boardTitle" placeholder="제목을 입력해 주세요">
							</div>

							<div id="nick_date">
								<h6>작성자 : ${authUser.nickname }</h6>
								
								<c:set value="<%=Date%>" var="today" />
								<p>작성일 : ${today }</p>
							</div>

                             <div class="fileUp"> 
                             	<p>이미지 업로드</p> 
                             	<input type="file" name="boardImgFile"> 
                             </div>

							<div id="text_tool">
								<textarea id="boardContent" name="boardContent" rows="50" cols="96" style="width: 1020px;"> 스마트 에디터 적용해야하는데 어떻게 하냐 최근글이 아니라 옛날 글밖에 없는데 ㅡㅡ</textarea>
							</div>
							<!-- 글등록 버튼 -->
							<button id="btn_save" type="submit">글등록</button>
						</form>
                    </div>
					<!-- //글등록 공간 -->

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
//스마트에디터
$(function(){
    //전역변수선언
    var editor_object = [];
     
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "boardContent",
        sSkinURI: "/nextroom/smarteditor2/SmartEditor2Skin.html",
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,            
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : true,    
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true,
        }
    });
     
    //전송버튼 클릭이벤트
    $("#btn_save").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        editor_object.getById["boardContent"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // 이부분에 에디터 validation 검증
         
        //폼 submit
        $("#boardForm").submit();
    })
}) 

</script>


</html>