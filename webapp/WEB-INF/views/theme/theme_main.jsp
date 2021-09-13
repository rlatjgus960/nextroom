<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/cafe.css" rel="stylesheet" type="text/css">

<title>테마 메인</title>
</head>


<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>

<body>

	<!-- 헤더영역 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->

	<div id="wrap">

		<!-- content -->
		<div id="content">
			
			<!-- main -->
            <div id="theme_recommend_back" class="clearfix">

                도와줘요 준짱

            </div>

            <!-- <table>
                <thead>
                    <th>지역</th>
                    <th>장르</th>
                    <th>유형</th>
                    <th>인원</th>
                    <th>난이도</th>
                    <th>활동성</th>
                </thead>

            </table> -->

            <div id="theme_select">

                <div id="theme_select_title">
                    <div>지역</div>
                    <div>장르</div>
                    <div>유형</div>
                    <div>인원</div>
                    <div>난이도</div>
                    <div>활동성</div>
                </div>

                <div id="theme_region_wrap">

                    <form>
                        <div id="theme_region" class="theme_select_condition">
                            <label><input type="checkbox" name="theme_region" value="">전국</label>
                            <label><input type="checkbox" name="theme_region" value="">홍대</label>
                            <label><input type="checkbox" name="theme_region" value="">강남</label>
                            <label><input type="checkbox" name="theme_region" value="">건대</label>
                            <label><input type="checkbox" name="theme_region" value="">신촌</label>
                            <label><input type="checkbox" name="theme_region" value="">대학로</label>
                            <label><input type="checkbox" name="theme_region" value="">강북</label>
                            <label><input type="checkbox" name="theme_region" value="">신림</label>
                            <label><input type="checkbox" name="theme_region" value="">서울(기타)</label>
                            <label><input type="checkbox" name="theme_region" value="">부천</label>
                            <label><input type="checkbox" name="theme_region" value="">일산</label>
                            <label><input type="checkbox" name="theme_region" value="">수원</label>
                            <label><input type="checkbox" name="theme_region" value="">안양</label>
                            <label><input type="checkbox" name="theme_region" value="">경기(기타)</label>
                            <label><input type="checkbox" name="theme_region" value="">인천</label>
                            <label><input type="checkbox" name="theme_region" value="">강원</label>
                            <label><input type="checkbox" name="theme_region" value="">대전</label>
                            <label><input type="checkbox" name="theme_region" value="">천안</label>
                            <label><input type="checkbox" name="theme_region" value="">청주</label>
                            <label><input type="checkbox" name="theme_region" value="">충청(기타)</label>
                            <label><input type="checkbox" name="theme_region" value="">대구</label>
                            <label><input type="checkbox" name="theme_region" value="">부산</label>
                            <label><input type="checkbox" name="theme_region" value="">경상(기타)</label>
                            <label><input type="checkbox" name="theme_region" value="">전주</label>
                            <label><input type="checkbox" name="theme_region" value="">광주</label>
                            <label><input type="checkbox" name="theme_region" value="">전라(기타)</label>
                            <label><input type="checkbox" name="theme_region" value="">제주</label>

                        </div>
                        
                        <div id="theme_genre" class="theme_select_condition">
                            <label><input type="checkbox" name="theme_region" value="">전체</label>
                            <label><input type="checkbox" name="theme_region" value="">추리</label>
                            <label><input type="checkbox" name="theme_region" value="">스릴러</label>
                            <label><input type="checkbox" name="theme_region" value="">감성</label>
                            <label><input type="checkbox" name="theme_region" value="">로맨스</label>
                            <label><input type="checkbox" name="theme_region" value="">범죄</label>
                            <label><input type="checkbox" name="theme_region" value="">코미디</label>
                            <label><input type="checkbox" name="theme_region" value="">모험</label>
                            <label><input type="checkbox" name="theme_region" value="">판타지</label>
                            <label><input type="checkbox" name="theme_region" value="">19금</label>
                            <label><input type="checkbox" name="theme_region" value="">공포</label>
                            <label><input type="checkbox" name="theme_region" value="">드라마</label>
                            <label><input type="checkbox" name="theme_region" value="">미스터리</label>
                            <label><input type="checkbox" name="theme_region" value="">아케이드</label>
                            <label><input type="checkbox" name="theme_region" value="">액션</label>
                            <label><input type="checkbox" name="theme_region" value="">야외</label>
                            <label><input type="checkbox" name="theme_region" value="">음악</label>
                            <label><input type="checkbox" name="theme_region" value="">잠입</label>
                            <label><input type="checkbox" name="theme_region" value="">역사</label>
                            <label><input type="checkbox" name="theme_region" value="">공상과학</label>
                            <label><input type="checkbox" name="theme_region" value="">?</label>
                            
                        </div>
                        
                        <div id="theme_kind" class="theme_select_condition">
                            <label><input type="checkbox" name="theme_region" value="">자물쇠 위주</label>
                            <label><input type="checkbox" name="theme_region" value="">장치 위주</label>
                            <label><input type="checkbox" name="theme_region" value="">자물쇠, 장치 반반</label>
                            
                        </div>
                        
                        <div id="theme_people" class="theme_select_condition">
                            <label><input type="checkbox" name="theme_region" value="">혼방</label>
                            <label><input type="checkbox" name="theme_region" value="">2인</label>
                            <label><input type="checkbox" name="theme_region" value="">3인</label>
                            <label><input type="checkbox" name="theme_region" value="">4인</label>
                            <label><input type="checkbox" name="theme_region" value="">5인</label>
                            <label><input type="checkbox" name="theme_region" value="">6인 이상</label>
                        </div>
                        
                        <div id="theme_level" class="theme_select_condition">
                            <label><input type="checkbox" name="theme_region" value="">★</label>
                            <label><input type="checkbox" name="theme_region" value="">★★</label>
                            <label><input type="checkbox" name="theme_region" value="">★★★</label>
                            <label><input type="checkbox" name="theme_region" value="">★★★★</label>
                            <label><input type="checkbox" name="theme_region" value="">★★★★★</label>
                            
                        </div>
                        
                        <div id="theme_active" class="theme_select_condition">
                            <label><input type="checkbox" name="theme_region" value="">적음</label>
                            <label><input type="checkbox" name="theme_region" value="">보통</label>
                            <label><input type="checkbox" name="theme_region" value="">많음</label>
                            
                            
                        </div>

                        <button type="submit" id="theme_searchBtn" class="lbutton">검색하기</button>
                    </form>
                </div>
            
                
            
            
            </div>

            <button id="theme_searchBtn" class="lbutton">검색하기</button>



            <div id="theme_list_area">

                <!-- 검색정렬 -->
				<div id="theme_range" class="clearfix">

					<select id="cafe_array" class="cafe_theme_array">
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

            </div>
        

            <div id="theme_search_list" class="clearfix">

                <!-- 테마 반복영역 -->
                <div class="cafe_theme">
                    <img href="" src="${pageContext.request.contextPath }/assets/image/cafe/theme_poster.jpg" alt="">

                    <div class="cafe_theme_info">
                        <p>넥스트에디션 강남신논현점</p>

                        <p href="" class="cafe_theme_info_title">어시스턴트(Assistant)</p>

                        <span>장르 : </span><span>판타지</span> | <span>추천인원 : </span><span>2~5인</span><br>
                        <span>난이도 : </span><span>★★★★</span> | <span>플레이타임 : </span><span>60분</span><br>
                        <span>체감난이도 : </span><span>★★★</span> | <span>평점 : </span><span>★★★(3.1)</span><br>
                        <span>유형 : 장치, </span><span>자물쇠 반반</span> | <span>활동성 : </span><span>적음</span>
                        
                    </div>
                </div>


                <div class="cafe_theme">
                    <img href="" src="${pageContext.request.contextPath }/assets/image/cafe/theme_poster.jpg" alt="">

                    <div class="cafe_theme_info">
                        <p>넥스트에디션 강남신논현점</p>

                        <p href="" class="cafe_theme_info_title">어시스턴트(Assistant)</p>

                        <span>장르 : </span><span>판타지</span> | <span>추천인원 : </span><span>2~5인</span><br>
                        <span>난이도 : </span><span>★★★★</span> | <span>플레이타임 : </span><span>60분</span><br>
                        <span>체감난이도 : </span><span>★★★</span> | <span>평점 : </span><span>★★★(3.1)</span><br>
                        <span>유형 : 장치, </span><span>자물쇠 반반</span> | <span>활동성 : </span><span>적음</span>
                        
                    </div>
                </div>


                <div class="cafe_theme">
                    <img href="" src="${pageContext.request.contextPath }/assets/image/cafe/theme_poster.jpg" alt="">

                    <div class="cafe_theme_info">
                        <p>넥스트에디션 강남신논현점</p>

                        <p href="" class="cafe_theme_info_title">어시스턴트(Assistant)</p>

                        <span>장르 : </span><span>판타지</span> | <span>추천인원 : </span><span>2~5인</span><br>
                        <span>난이도 : </span><span>★★★★</span> | <span>플레이타임 : </span><span>60분</span><br>
                        <span>체감난이도 : </span><span>★★★</span> | <span>평점 : </span><span>★★★(3.1)</span><br>
                        <span>유형 : 장치, </span><span>자물쇠 반반</span> | <span>활동성 : </span><span>적음</span>
                        
                    </div>
                </div>


                <div class="cafe_theme">
                    <img href="" src="${pageContext.request.contextPath }/assets/image/cafe/theme_poster.jpg" alt="">

                    <div class="cafe_theme_info">
                        <p>넥스트에디션 강남신논현점</p>

                        <p href="" class="cafe_theme_info_title">어시스턴트(Assistant)</p>

                        <span>장르 : </span><span>판타지</span> | <span>추천인원 : </span><span>2~5인</span><br>
                        <span>난이도 : </span><span>★★★★</span> | <span>플레이타임 : </span><span>60분</span><br>
                        <span>체감난이도 : </span><span>★★★</span> | <span>평점 : </span><span>★★★(3.1)</span><br>
                        <span>유형 : 장치, </span><span>자물쇠 반반</span> | <span>활동성 : </span><span>적음</span>
                        
                    </div>
                </div>


                <div class="cafe_theme">
                    <img href="" src="${pageContext.request.contextPath }/assets/image/cafe/theme_poster.jpg" alt="">

                    <div class="cafe_theme_info">
                        <p>넥스트에디션 강남신논현점</p>

                        <p href="" class="cafe_theme_info_title">어시스턴트(Assistant)</p>

                        <span>장르 : </span><span>판타지</span> | <span>추천인원 : </span><span>2~5인</span><br>
                        <span>난이도 : </span><span>★★★★</span> | <span>플레이타임 : </span><span>60분</span><br>
                        <span>체감난이도 : </span><span>★★★</span> | <span>평점 : </span><span>★★★(3.1)</span><br>
                        <span>유형 : 장치, </span><span>자물쇠 반반</span> | <span>활동성 : </span><span>적음</span>
                        
                    </div>
                </div>


                <div class="cafe_theme">
                    <img href="" src="${pageContext.request.contextPath }/assets/image/cafe/theme_poster.jpg" alt="">

                    <div class="cafe_theme_info">
                        <p>넥스트에디션 강남신논현점</p>

                        <p href="" class="cafe_theme_info_title">어시스턴트(Assistant)</p>

                        <span>장르 : </span><span>판타지</span> | <span>추천인원 : </span><span>2~5인</span><br>
                        <span>난이도 : </span><span>★★★★</span> | <span>플레이타임 : </span><span>60분</span><br>
                        <span>체감난이도 : </span><span>★★★</span> | <span>평점 : </span><span>★★★(3.1)</span><br>
                        <span>유형 : 장치, </span><span>자물쇠 반반</span> | <span>활동성 : </span><span>적음</span>
                        
                    </div>
                </div>


                <div class="cafe_theme">
                    <img href="" src="${pageContext.request.contextPath }/assets/image/cafe/theme_poster.jpg" alt="">

                    <div class="cafe_theme_info">
                        <p>넥스트에디션 강남신논현점</p>

                        <p href="" class="cafe_theme_info_title">어시스턴트(Assistant)</p>

                        <span>장르 : </span><span>판타지</span> | <span>추천인원 : </span><span>2~5인</span><br>
                        <span>난이도 : </span><span>★★★★</span> | <span>플레이타임 : </span><span>60분</span><br>
                        <span>체감난이도 : </span><span>★★★</span> | <span>평점 : </span><span>★★★(3.1)</span><br>
                        <span>유형 : 장치, </span><span>자물쇠 반반</span> | <span>활동성 : </span><span>적음</span>
                        
                    </div>
                </div>

                <!-- //테마 반복영역 -->

            </div>

            <button id="theme_moreBtn" class="lbutton">더보기</button>
            

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