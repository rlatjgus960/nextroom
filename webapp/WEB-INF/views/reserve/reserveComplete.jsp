<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/reservation.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>

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
                        <td id="reservation_thema_img" rowspan="5"><img src="${pageContext.request.contextPath }/upload/${reserveVo.themeImg}"></td>
                        <th>예약번호</th>
                        <td>${reserveVo.reserveNo}</td>
                        <th>예약자</th>
                        <td>${reserveVo.reserveName}</td>
                    </tr>

                    <tr>
                        <th>지점</th>
                        <td>${reserveVo.cafeName}</td>
                        <th>연락처</th>
                        <td>${reserveVo.reserveHp}</td>
                    </tr>

                    <tr>
                        <th>테마</th>
                        <td>${reserveVo.themeName}</td>
                        <th>결제금액</th>
                        <td>${reserveVo.cafeName}원</td>
                    </tr>

                    <tr>
                        <th>예약일시</th>
                        <td colspan="3" id="date" data-day="${reserveVo.reserveDate}" data-time="${reserveVo.reserveTime}"></td>
                    </tr>

                    <tr>
                        <th>인원</th>
                        <td colspan="3">${reserveVo.reservePerson}인</td>
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

<script>
	var a = $("#date").data("time");
	var b = $("#date").data("day");

	
	var time = a.split(":");
	var yy = String(b).substring(0,4);
	var mm = String(b).substring(4,6);
	var dd = String(b).substring(6,8);
	
	
	console.log(a);
	console.log(b);
	
	
	console.log(time[0]);
	console.log(time[1]);
	console.log(yy);
	console.log(mm);
	console.log(dd);
	
	
	$("#date").text(yy + "년 " + mm + "월 " + dd + "일 " + time[0]+"시 "+time[1]+"분");
	
	
</script>
</html>