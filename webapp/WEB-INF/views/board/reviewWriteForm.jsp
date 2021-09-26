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
<link href="${pageContext.request.contextPath }/assets/css/board_css/write.css" rel="stylesheet" type="text/css">

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
								<select class="board_select">
									<option>자유게시판</option>
									<option>후기게시판</option>
									<option>양도/교환</option>
								</select>
							</div>

						</form>
					</div>
					<!-- //기간 선택 -->

                    <!-- 글등록 공간 -->
                    <div id="writecontent_area">

						<form> 
							<div id="content_title">
								<input type="text" placeholder="제목을 입력해 주세요">
							</div>

							<div id="nick_date">
								<h6>작성자 : 호옹이</h6>
								<p>작성일 : 2021.09.10</p>
							</div>


							<div id="text_tool">
								<textarea id="txtContent" rows="50" cols="96" style="width: 1020px;"> 스마트 에디터 적용해야하는데 어떻게 하냐 최근글이 아니라 옛날 글밖에 없는데 ㅡㅡ</textarea>
							</div>
							
							
                            <!-- 후기게시판 글쓰기에만 보이게 -->
                            <!-- 지역/카페/테마/체감난이도 선택 -->
                            <div class="select_area">
                                <select class="region">
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

                                <select class="select_cafe">
                                    <option>카페를 선택해주세요</option>
                                    <option>비트포비아 던전101</option>
                                    <option>비밀의화원 미드나잇</option>
                                    <option>큐브이스케이프 홍대점</option>
                                    <option>비트포비아 홍대던전</option>
                                    <option>브레이크아웃 이스케이프</option>
                                    <option>키이스케이프 홍대점</option>
                                </select>

                                <select class="select_thema">
                                    <option>테마 선택</option>
                                    <option>비밀의 가족</option>
                                    <option>파리82</option>
                                    <option>팩토리 엠</option>
                                    <option>기다려, 금방 갈게</option>
                                    <option>종갓집 민씨</option>
                                </select>

                                <select class="select_level">
                                    <option>체감 난이도</option>
                                    <option>☆</option>
                                    <option>☆☆</option>
                                    <option>☆☆☆</option>
                                    <option>☆☆☆☆</option>
                                    <option>☆☆☆☆☆</option>
                                </select>
                            </div>
                            <!-- //지역/카페/테마/체감난이도 선택 -->


							<!-- 성공여부/인원수/힌트갯수/소요시간 -->
							<div class="select_area">
								<select class="SorF">
                                    <option>성공 여부</option>
                                    <option>성 공</option>
                                    <option>실 패</option>
                                </select>

								<select class="hint">
                                    <option>힌트 사용 갯수</option>
                                    <option>1개</option>
									<option>2개</option>
									<option>3개</option>
									<option>4개</option>
                                    <option>5개 이상</option>
                                </select>

								<select class="totalNumber">
                                    <option>인원수</option>
                                    <option>1인</option>
									<option>2인</option>
									<option>3인</option>
									<option>4인</option>
                                    <option>5인</option>
									<option>6인</option>
                                </select>

								<label class="leadTime">소요 시간</label>
								<input class="leadTime" type="text" placeholder="00 분 00 초">
							</div>

							<p>별 점</p>  
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
						</form>







                    </div>
					<!-- //글등록 공간 -->

					<!-- 글등록 버튼 -->
					<a id="btn_save" href="">글등록</a>




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