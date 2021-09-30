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
<title>후기게시판-글쓰기</title>
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
								<li><a class="" href="${pageContext.request.contextPath }/board/freeCommunity">자유게시판</a></li>
								<li><a class="active" href="${pageContext.request.contextPath }/board/reviewBoard">후기게시판</a></li>
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
							<a href="${pageContext.request.contextPath }/community">
								<img src="${pageContext.request.contextPath }/assets/image/board_image/Board_all_icon.jpg" width="14px" height="14px" >전 체</a>
							<a href="${pageContext.request.contextPath }/community">
								<img src="${pageContext.request.contextPath }/assets/image/board_image/hot.png" width="14px" height="14px" >인 기</a>
							<a href="${pageContext.request.contextPath }/community">
								<img src="${pageContext.request.contextPath }/assets/image/board_image/hit.png" width="14px" height="14px" >조 회</a>

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
									<option value="${pageContext.request.contextPath }/board/reviewWriteForm">후기게시판</option>								
									<option value="${pageContext.request.contextPath }/board/writeForm">자유게시판</option>
									<option>양도/교환</option>
								</select>
							</div>

						</form>
					</div>
					<!-- //기간 선택 -->

                    <!-- 글등록 공간 -->
                    <div id="writecontent_area">

						<form id="reviewForm" action="${pageContext.request.contextPath }/board/reviewWrite" method="get"> 
							<div id="content_title">
								<input type="text" id="reviewTitle" name="reviewTitle" placeholder="제목을 입력해 주세요">
							</div>
								 
							<div id="nick_date">
								<h6>작성자: ${authUser.nickname }</h6>
									<c:set value="<%=Date%>" var="today" />
								<p>작성일: ${today }</p>
								
							</div>


							<div id="text_tool">
								<textarea id="txtContent" name="reviewContent" rows="50" cols="96" style="width: 1020px;"></textarea>
							</div>
							
							
                            <!-- 후기게시판 글쓰기에만 보이게 -->
                            <!-- 지역/카페/테마/체감난이도 선택 -->
                            <div class="select_area">
                                <select class="region" name="">
										<option value="" selected="">지역 선택</option>
                                        <option value="전국">전국</option>
                                        <option value="홍대&신촌">홍대&신촌</option>
                                        <option value="강남">강남</option>
                                        <option value="건대">건대</option>
                                        <option value="대학로">대학로</option>
                                        <option value="강북">강북</option>
                                        <option value="신림">신림</option>
                                        <option value="서울(기타)">서울(기타)</option>
                                        <option value="부천">부천</option>
                                        <option value="일산">일산</option>
                                        <option value="수원">수원</option>
                                        <option value="안양">안양</option>
                                        <option value="경기(기타)">경기(기타)</option>
                                        <option value="인천">인천</option>
                                        <option value="강원">강원</option>
                                        <option value="대전">대전</option>
                                        <option value="천안">천안</option>
                                        <option value="청주">청주</option>
                                        <option value="충청(기타)">충청(기타)</option>
                                        <option value="대구">대구</option>
                                        <option value="부산">부산</option>
                                        <option value="경상(기타)">경상(기타)</option>
                                        <option value="전주">전주</option>
                                        <option value="광주">광주</option>
                                        <option value="전라(기타)">전라(기타)</option>
                                        <option value="제주">제주</option>

                                </select>


                                <select class="select_cafe" name="cafeName">
                                	<option value="" selected="">카페를 선택해 주세요</option>                                	
                                </select>
                                	<input type="hidden" name="cafeNo" value="">


                                <select class="select_thema" name="themeName">
                               		<option value="" selected="">테마를 선택해 주세요</option>
                                </select>
                                	<input type="hidden" name="themeNo" value="">


                                <select class="select_level" name="feelLevel">
                                    <option value="0">체감 난이도</option>
                                    <option value="1">☆</option>
                                    <option value="2">☆☆</option>
                                    <option value="3">☆☆☆</option>
                                    <option value="4">☆☆☆☆</option>
                                    <option value="5">☆☆☆☆☆</option>
                                </select>
                            </div>
                            <!-- //지역/카페/테마/체감난이도 선택 -->


							<!-- 성공여부/인원수/힌트갯수/소요시간 -->
							<div class="select_area2">
								<select class="SorF" name="reviewClear">
                                    <option value="none">성공 여부</option>
                                    <option value="clear">성 공</option>
                                    <option value="false">실 패</option>
                                </select>

								<select class="hint" name="reviewHints">
                                    <option value="none">힌트 사용 갯수</option>
                                    <option value="0">0개</option>
                                    <option value="1">1개</option>
									<option value="2">2개</option>
									<option value="3">3개</option>
									<option value="4">4개</option>
                                    <option value="5">5개 이상</option>
                                </select>

								<select class="totalNumber" name="memberNum">
                                    <option value="0">인원수</option>
                                    <option value="1">1인</option>
									<option value="2">2인</option>
									<option value="3">3인</option>
									<option value="4">4인</option>
                                    <option value="5">5인</option>
									<option value="6">6인</option>
                                </select>
			
								<label class="leadTime">소요 시간</label>
								<input class="leadTime" type="text" value="0" name="recMin" maxlength="2" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">분
								<input class="leadTime" type="text" value="0" name="recSec" maxlength="2" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">초

							</div>

							<p>평 점</p>  
                            <!-- 별점 -->
                            <div class="star-rating space-x-4 mx-auto">                           
                                <input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
                                <label for="5-stars" class="star pr-4">★</label>
                                <input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
                                <label for="4-stars" class="star">★</label>
                                <input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
                                <label for="3-stars" class="star">★</label>
                                <input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
                                <label for="2-stars" class="star">★</label>
                                <input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
                                <label for="1-star" class="star">★</label>
                            </div>
                            <!-- //별점 -->
                            <!-- //후기게시판 글쓰기에만 보이게 -->
                            
                            
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

//2021.09.29 by 원호
//후기게시판 지역 선택
$(".region").on("change", function() {
	 
	var sido = $(this).val();
	
 	$('.select_cafe').empty();
	
	console.log("시도선택");
	
	//ajax서버에 요청 (sido 전달)
	$.ajax({
		
		url : "${pageContext.request.contextPath }/board/sido",		
		type : "post",
	  //contentType : "application/json",
		data : {sido: sido},

	  //dataType : "json",
		success : function(cafeList){
			/*성공시 처리해야될 코드 작성*/
			console.log(cafeList);
			
			$(".select_cafe").append('<option value="" selected="">카페를 선택해 주세요</option>');
			
			for(var i=0; i<cafeList.length; i++) {
				cafeRender(cafeList[i], "down");
			}
			
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
		
	});
	
});


//카페이름 1개씩 렌더링
function cafeRender(cafeList, type) {
	var str = "";
	str += '<option id="cafeName" value="' + cafeList.cafeName + '" data-cafeno="' + cafeList.cafeNo +'">' + cafeList.cafeName + '</option>';

	if(type === 'down') {
		$(".select_cafe").append(str);
	}
	console.log(cafeList.cafeNo)
};


//후기게시판 카페선택시 cafeNo 넘기기
$(".select_cafe").on("change", function() {
	
	var cafe = $(this).val();
	var cafeNo = $(".select_cafe option:selected").data("cafeno");
	$("[name=cafeNo]").val(cafeNo);
	console.log(cafe);
	console.log(cafeNo);
	
	
	
  	$('.select_thema').empty ();
	
	
	//ajax서버에 요청 (cafeNo 전달)
	$.ajax({
		
		url : "${pageContext.request.contextPath }/board/cafe",		
		type : "post",
	  //contentType : "application/json",
		data : {cafeNo: cafeNo},

	  //dataType : "json",
		success : function(themeList){
			/*성공시 처리해야될 코드 작성*/
			console.log(themeList);
			
			$(".select_thema").append('<option value="" selected="">테마를 선택해 주세요</option>');
			
			for(var i=0; i<themeList.length; i++) {
				themeRender(themeList[i], "down");
			}
			
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
		
	}); 
	
});


//테마이름 1개씩 렌더링
function themeRender(themeList, type) {
	var str = "";
	str += '<option id="themeName" value="' + themeList.themeName + '" data-themeno="' + themeList.themeNo +'">' + themeList.themeName + '</option>';
	
	if(type === 'down') {
		$(".select_thema").append(str);
	}
};

//후기게시판 테마선택시 themeNo 넘기기
$(".select_thema").on("change", function() {
	
	var theme = $(this).val();
	var themeNo = $(".select_thema option:selected").data("themeno");
	$("[name=themeNo]").val(themeNo);
	console.log(theme);
	console.log(themeNo);
	
	

	/*
	//ajax서버에 요청 (themeNo 전달)
	$.ajax({
		
		url : "${pageContext.request.contextPath }/board/theme",		
		type : "post",
	  //contentType : "application/json",
		data : {themeNo: themeNo},

	  //dataType : "json",
		success : function(themeTimeList){
			/*성공시 처리해야될 코드 작성*/
			/*console.log(themeTimeList);
			
			$(".select_thema").append('<option value="" selected="">시간을 선택해 주세요</option>');
			
			for(var i=0; i<themeTimeList.length; i++) {
				themeTimeRender(themeTimeList[i], "down");
			}
			
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
		
	});*/ 
	
});


//2021.09.28 by 원호
//미입력 체크
$("#reviewForm").on("submit", function(){
	console.log("미입력 체크")
	//제목 미입력 체크
	var title = $("#reviewTitle").val();
	if(title.length < 1){
		alert("제목을 입력해주세요.")
		return false;
	}
	
	//내용 미입력 체크
	var txtContent = $("#txtContent").val();
	if(txtContent.length < 3){
		alert("내용은 3글자 이상 작성해 주세요.")
		return false;
	}
	
	//지역 미선택 체크
	var region = $(".region").val();
	if(region < "1"){
		alert("지역을 선택해 주세요")
		return false;
	}
	//카페 미선택 체크
	var select_cafe = $(".select_cafe").val();
	if(select_cafe < "1"){
		alert("카페를 선택해 주세요")
		return false;
	}
	//테마 미선택 체크
	var select_thema = $(".select_thema").val();
	if(select_thema < "1"){
		alert("테마를 선택해 주세요")
		return false;
	}
	//체감난이도 미선택 체크
	var select_level = $(".select_level").val();
	if(select_level == "0"){
		alert("체감 난이도를 선택해 주세요.")
		return false;
	}
	
	//성공여부 미선택 체크
	var SorF = $(".SorF").val();
	if(SorF == "none"){
		alert("성공 여부를 선택해 주세요.")
		return false;
	}
	
	//힌트 갯수 미선택 체크
	var hint = $(".hint").val();
	if(hint == "none"){
		alert("힌트 사용 갯수를 선택해 주세요.")
		return false;
	}
	
	//인원수 미선택 체크
	var totalNumber = $(".totalNumber").val();
	if(totalNumber == "0"){
		alert("인원수를 선택해 주세요.")
		return false;
	}
	
	//소요시간 체크
	var recMin = $("[name=recMin]").val();
	if(recMin == "0") {
		alert("소요시간을 입력해 주세요.")
		return false;
	}
	
	//평점 체크
	var rating = $("[name=rating]").val();
	if(rating < "1") {
		alert("평점을 선택해 주세요.")
		return false;
	}
	
	return true;
	
});



</script>

</html>