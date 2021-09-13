<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/cafe.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/modal.css" rel="stylesheet" type="text/css">
<%-- <link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"> --%>

<title>카페 상세</title>
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
            <div id="cafe_detail_back" class="clearfix">
                <div id="cafe_detail_wrap">
                    <img id="cafe_detail_mainImg" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png">
                    <div id="cafe_detail_text">
                        <div id="cafe_detail_title">
                            <p id="cafe_detail_name">넥스트에디션 강남신논현점</p>
                            <p id="cafe_detail_content">넥스트에디션 강남신논현점 입니다.</p>
                        </div>

                        <div id="cafe_detail_contact" class="cafe_contact">
                            
                            <div>
                                <img src="${pageContext.request.contextPath }/assets/image/cafe/tel.png">
                                <a href="">050-7457-6272</a>
                            </div>
                            
                            <div>
                                <img src="${pageContext.request.contextPath }/assets/image/cafe/loc.png">
                                <a href="">서울특별시 서초구 사평대로56길 14 지하1층</a>
                                <button href="" id="cafe_btn_viewmap">지도보기</button>
                            </div>

                            <div>
                                <img src="${pageContext.request.contextPath }/assets/image/cafe/time.png">
                                <a href="">매일 10:30~24:00</a>
                            </div>
                        </div>

                        <div id="cafe_detail_btn">
                            <button class="cbutton" id="cafe_wish">관심카페등록</button>
                            <button class="cbutton" id="cafe_reserv">예약하기</button>
                            <button class="cbutton" id="cafe_site">공식사이트</button>
                        </div>
                    </div>

                </div>
            </div>

            <div id="cafe_interior" class="scroll clearfix">
                <!-- 이미지 반복영역 -->
                <div class="scroll-image">
                    <img alt="" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png" />
                    <img alt="" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png" />
                    <img alt="" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png" />
                    <img alt="" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png" />
                    <img alt="" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png" />
                    <img alt="" src="${pageContext.request.contextPath }/assets/image/cafe/nextedition.png" />
                </div>
                <!-- //이미지 반복영역 -->

            </div>



            <div id="cafe_detail_price">

                <p>| 가격</p>

                <table id="cafe_priceTable">
                    <thead>
                        <th>인원수</th>
                        <th>이웃집또털어(80분)</th>
                        <th>어시스턴트(60분)</th>
                        <th>메가스팀(60분)</th>
                        <th>인터프리터(60분)</th>
                        <th>조선피자몰(60분)</th>
                        <th>트와이스어데이(60분)</th>
                        <th>서치(60분)</th>
                    </thead>

                    <tbody>
                        <tr>
                            <td>2인</td>
                            <td>52,000원</td>
                            <td>44,000원</td>
                            <td>44,000원</td>
                            <td>44,000원</td>
                            <td>44,000원</td>
                            <td>44,000원</td>
                            <td>44,000원</td>
                        </tr>

                        <tr>
                            <td>3인</td>
                            <td>72,000원</td>
                            <td>60,000원</td>
                            <td>60,000원</td>
                            <td>60,000원</td>
                            <td>60,000원</td>
                            <td>60,000원</td>
                            <td>60,000원</td>
                        </tr>

                        <tr>
                            <td>4인</td>
                            <td>88,000원</td>
                            <td>72,000원</td>
                            <td>72,000원</td>
                            <td>72,000원</td>
                            <td>72,000원</td>
                            <td>72,000원</td>
                            <td>72,000원</td>
                        </tr>

                        <tr>
                            <td>5인</td>
                            <td>110,000원</td>
                            <td>90,000원</td>
                            <td>90,000원</td>
                            <td>90,000원</td>
                            <td>90,000원</td>
                            <td>90,000원</td>
                            <td>90,000원</td>
                        </tr>
                    </tbody>

                </table>



            </div>


            <div id="cafe_detail_theme">

                <p>| 테마</p>

                <div id="cafe_theme_list" class="clearfix">

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
                    
                    <!-- //테마 반복영역 -->

                </div>



            </div>

		</div>

		<!-- //content -->


		<!-- footer -->

		<div id="footer">
			상호 : 넥스트룸 | 대표자 : 1조 | 고객센터 : 02-3478-0008<br> 메일 : moon124@gmail.com | 주소 : 서울특별시 서초구 서초4동
			서초대로77길 13<br> Copyright © NEXTROOM All rights reserved.
		</div>

		<!-- //footer -->
	</div>



    <!-- 지도보기 모달 -->
    <div id="cafe_detail_modal">
   
        <div class="cafe_detail_modal_content">
                       
            <div id="cafe_map" style="width:500px; height:400px;"></div>
            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8f0f56038184ef1eac6b631a3dfc277d"></script>
            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8f0f56038184ef1eac6b631a3dfc277d&libraries=services,clusterer,drawing"></script>
            <script>
                var container = document.getElementById('cafe_map');
                var options = {
                    center: new kakao.maps.LatLng(37.50282142856503, 127.02300484029507),
                    level: 3
                };

                var map = new kakao.maps.Map(container, options);
                
                
             	 
             	
            </script>
           
            <button type="button" id="modal_close_btn" class="mbutton">닫기</button>
           
        </div>
       
        <div class="cafe_detail_modal_layer"></div>
    </div>


    <!-- 자바스크립트 사용
    <script>
        document.getElementById("cafe_btn_viewmap").onclick = function() {
            document.getElementById("cafe_detail_modal").style.display="block";
        }
       
        document.getElementById("modal_close_btn").onclick = function() {
            document.getElementById("cafe_detail_modal").style.display="none";
        }   
    </script> -->


    <!-- 제이쿼리 사용-->
    <script>
        $("#cafe_btn_viewmap").on("click", function(){
            $("#cafe_detail_modal").attr("style", "display:block");
            /* $('body').css("overflow", "hidden"); */
            document.body.classList.add("stop-scroll");
            
            var container = document.getElementById('cafe_map'),
            options = {
                 center: new kakao.maps.LatLng(37.50282142856503, 127.02300484029507),
                 level: 3
            };
	        var map = new kakao.maps.Map(container, options);
	
	        container.style.width = '500px';
	        container.style.height = '400px';
	
	        map.relayout();
	        
	     // 마커가 표시될 위치입니다 
            var markerPosition  = new kakao.maps.LatLng(37.50282142856503, 127.02300484029507); 

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                position: markerPosition
            });

            // 마커가 지도 위에 표시되도록 설정합니다
            marker.setMap(map);
            
            var iwContent = '<div style="padding:5px;">넥스트에디션 강남신논현점 <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다

            // 인포윈도우를 생성합니다
            var infowindow = new kakao.maps.InfoWindow({
                position : iwPosition, 
                content : iwContent 
            });
              
            // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
            infowindow.open(map, marker);
	        
        });
       
         $("#modal_close_btn").on("click", function(){
            $("#cafe_detail_modal").attr("style", "display:none");
            /* $('body').css("overflow", "scroll"); */
            document.body.classList.remove("stop-scroll");
        });      
    </script>
    
    
    <!-- 부트스트랩 사용(못하겠음)
    
    <script type="text/javascript">
    
    $("#cafe_btn_viewmap").on("click", function() {
		
		//모달창 보이기
		$("#cafe_detail_modal").modal();

	}); -->

    
    </script>
    
    
    
    



    <!-- //지도보기 모달 -->

</body>

</html>