<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/reservation.css" rel="stylesheet" type="text/css">

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
                    <div id="reservation_first" class="clearfix reservation_gray"><div class="reservation_num">01</div><div class="reservation_txt">날짜/카페/테마 선택</div></div>
                    <div id="reservation_second" class="clearfix reservation_gray"><div class="reservation_num">02</div><div class="reservation_txt">예약정보 입력</div></div>
                    <div id="reservation_third" class="clearfix reservation_gray"><div class="reservation_num">03</div><div class="reservation_txt">결제하기</div></div>
                    <div id="reservation_fourth" class="clearfix reservation_yellow"><div class="reservation_num">04</div><div class="reservation_txt">예약완료</div></div>
                </div>
                <!-- //reservationBar -->

                <!-- main -->

                <!--table-->
                <table id="reservation_check_table">
                    <tr>
                        <td id="reservation_thema_img" rowspan="5"><img src="${pageContext.request.contextPath }/assets/image/reserveEtc/factoryM.JPG"></td>
                        <th>예약번호</th>
                        <td>2021082701</td>
                        <th>예약자</th>
                        <td>차예진</td>
                    </tr>

                    <tr>
                        <th>지점</th>
                        <td>비밀의화원 미드나잇</td>
                        <th>연락처</th>
                        <td>010-1111-1111</td>
                    </tr>

                    <tr>
                        <th>테마</th>
                        <td>팩토리 엠</td>
                        <th>결제금액</th>
                        <td>50,000원</td>
                    </tr>

                    <tr>
                        <th>예약일시</th>
                        <td colspan="3">2021년 8월 27일   15시 30분</td>
                    </tr>

                    <tr>
                        <th>인원</th>
                        <td colspan="3">2인</td>
                    </tr>
                </table>
                <!-- //table -->
                
                <!-- //main -->

			</div>

            <div id="reservation_btn">
                <button class="mbutton">메인으로 가기</button>
                <button class="mbutton">결제정보 확인하기</button>
            </div>


		</div>

		<!-- //content -->


		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- //footer -->
		
	</div>
</body>
</html>