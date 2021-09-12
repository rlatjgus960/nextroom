<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/reservation.css" rel="stylesheet" type="text/css">

<script src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/js/jquery-ui-1.12.1.custom/jquery-ui.css">

<script>
    $( function() {
        $( "#datepicker" ).datepicker();
    } );
</script>

<title>방탈출 예약</title>
</head>
<body>
    <!-- 헤더영역 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->

     <div id="wrap">


		




		<!-- content -->
		<div id="content">


			<div id="subheader" class="clearfix">
				<div id="subheader-title">
					<h2>방탈출 예약</h2>
				</div>

			</div>

			<div id="contentMain" class="clearfix">
				
			    <!-- reservationBar -->
                <div id="reservation_bar" class="clearfix">
                    <div id="reservation_first" class="clearfix reservation_yellow"><div class="reservation_num">01</div><div class="reservation_txt">날짜/카페/테마 선택</div></div>
                    <div id="reservation_second" class="clearfix reservation_gray"><div class="reservation_num">02</div><div class="reservation_txt">예약정보 입력</div></div>
                    <div id="reservation_third" class="clearfix reservation_gray"><div class="reservation_num">03</div><div class="reservation_txt">결제하기</div></div>
                    <div id="reservation_fourth" class="clearfix reservation_gray"><div class="reservation_num">04</div><div class="reservation_txt">예약완료</div></div>
                </div>
                <!-- //reservationBar -->

                <!-- main -->
                <div id="reservation_main">
                    <div id="reservation_main_title" class="clearfix">
                        <div id="reservation_main_title_date" class="clearfix"><div class="reservation_main_title">날짜</div></div>
                        <div id="reservation_main_title_region" class="clearfix"><div class="reservation_main_title">지역</div></div>
                        <div id="reservation_main_title_cafe" class="clearfix"><div class="reservation_main_title">카페</div></div>
                        <div id="reservation_main_title_thema" class="clearfix"><div class="reservation_main_title">테마</div></div>
                        <div id="reservation_main_title_time" class="clearfix"><div class="reservation_main_title">시간</div></div>
                    </div>
                    <div id="reservation_main_content" class="clearfix">
                        <div id="reservation_main_content_calendar">
                            <div id="datepicker"></div>
                        </div>
                        <div id="reservation_main_content_region">
                            <p>전국</p>
                            <p>서울</p>
                            <p>홍대</p>
                            <p>강남</p>
                            <p>건대</p>
                            <p>경기</p>
                            <p>인천</p>
                            <p>수원</p>
                            <p>안산</p>
                            <p>부산</p>
                            <p>대구</p>
                        </div>
                        <div id="reservation_main_content_cafe">
                            <p>비트포비아 던전101</p>
                            <p>비밀의화원 미드나잇</p>
                            <p>큐브이스케이프 홍대점</p>
                            <p>비트포비아 홍대던전</p>
                            <p>브레이크아웃 이스케이프</p>
                            <p>키이스케이프 홍대점</p>
                        </div>
                        <div id="reservation_main_content_thema">
                            <p>비밀의 가족</p>
                            <p>파리82</p>
                            <p>팩토리 엠</p>
                            <p>기다려, 금방 갈게</p>
                            <p>종갓집 민씨</p>
                        </div>
                        <div id="reservation_main_content_time">
                            <p>11 : 00</p>
                            <p>12 : 00</p>
                            <p>14 : 00</p>
                            <p>15 : 30</p>
                            <p>17 : 00</p>
                            <p>18 : 30</p>
                            <p>20 : 00</p>
                            <p>21 : 30</p>
                            <p>23 : 00</p>
                        </div>
                    </div>

                    <div id="reservation_button">
                        <button type="submit" class="mbutton">예약하기</button>
                    </div>
                    
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