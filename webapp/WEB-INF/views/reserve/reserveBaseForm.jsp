<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/reservation.css" rel="stylesheet"
	type="text/css">

<script src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/js/jquery-ui-1.12.1.custom/jquery-ui.css">

<script>
	$(function() {

		$('#datepicker').datepicker(
				{

					minDate : 0,
					onSelect : function(dateText) {
						$('#datepicker2').datepicker("setDate",
								$(this).datepicker("getDate"));
						resetTime();
					}
				});

	});

	$(function() {

		$("#datepicker2").datepicker();
		$("#datepicker2").datepicker("option", "dateFormat", "yy-mm-dd");
		$('#datepicker2').datepicker('setDate', 'today');

	});
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
					<div id="reservation_first" class="clearfix reservation_yellow">
						<div class="reservation_num">01</div>
						<div class="reservation_txt">날짜/카페/테마 선택</div>
					</div>
					<div id="reservation_second" class="clearfix reservation_gray">
						<div class="reservation_num">02</div>
						<div class="reservation_txt">예약정보 입력</div>
					</div>
					<div id="reservation_third" class="clearfix reservation_gray">
						<div class="reservation_num">03</div>
						<div class="reservation_txt">결제하기</div>
					</div>
					<div id="reservation_fourth" class="clearfix reservation_gray">
						<div class="reservation_num">04</div>
						<div class="reservation_txt">예약완료</div>
					</div>
				</div>
				<!-- //reservationBar -->


				<!-- main -->
				<div id="reservation_main">
					<form action="${pageContext.request.contextPath}/reserve/reserveInfoForm" method="post"
						id="next_form">
						<div id="reservation_main_title" class="clearfix">
							<div id="reservation_main_title_date" class="clearfix">
								<div class="reservation_main_title">날짜</div>
							</div>
							<div id="reservation_main_title_region" class="clearfix">
								<div class="reservation_main_title">지역</div>
							</div>
							<div id="reservation_main_title_cafe" class="clearfix">
								<div class="reservation_main_title">카페</div>
							</div>
							<div id="reservation_main_title_thema" class="clearfix">
								<div class="reservation_main_title">테마</div>
							</div>
							<div id="reservation_main_title_time" class="clearfix">
								<div class="reservation_main_title">시간</div>
							</div>
						</div>
						<div id="reservation_main_content" class="clearfix">
							<div id="reservation_main_content_calendar">
								<div id="datepicker"></div>
								<input type="hidden" id="datepicker2" name="reserveDate">
							</div>
							<div id="reservation_main_content_region">
								<p id="all" class="region" data-region-no=1>전국</p>
								<p id="seoul" class="region" data-region-no=2>서울</p>
								<p id="hongShin" class="region" data-region-no=3>홍대&신촌</p>
								<p id="gangnam" class="region" data-region-no=4>강남</p>
								<p id="gundae" class="region" data-region-no=5>건대</p>
								<p id="daehakro" class="region" data-region-no=6>대학로</p>
								<p id="gangbuk" class="region" data-region-no=7>강북</p>
								<p id="sillim" class="region" data-region-no=8>신림</p>
								<p id="seoulEtc" class="region" data-region-no=9>서울(기타)</p>
								<p id="bucheon" class="region" data-region-no=10>부천</p>
								<p id="ilsan" class="region" data-region-no=11>일산</p>
								<p id="suwon" class="region" data-region-no=12>수원</p>
								<p id="anyang" class="region" data-region-no=13>안양</p>
								<p id="kyeonggi" class="region" data-region-no=14>경기(기타)</p>
								<p id="incheon" class="region" data-region-no=15>인천</p>
								<p id="gangwon" class="region" data-region-no=16>강원</p>
								<p id="daejeon" class="region" data-region-no=17>대전</p>
								<p id="cheonan" class="region" data-region-no=18>천안</p>
								<p id="cheongju" class="region" data-region-no=19>청주</p>
								<p id="chungcheong" class="region" data-region-no=20>충청(기타)</p>
								<p id="daegu" class="region" data-region-no=21>대구</p>
								<p id="busan" class="region" data-region-no=22>부산</p>
								<p id="gyeongsang" class="region" data-region-no=23>경상(기타)</p>
								<p id="jeonju" class="region" data-region-no=24>전주</p>
								<p id="gwangju" class="region" data-region-no=25>광주</p>
								<p id="jeolla" class="region" data-region-no=26>전라(기타)</p>
								<p id="jeju" class="region" data-region-no=27>제주</p>
							</div>
							<div id="reservation_main_content_cafe"></div>
							<div id="reservation_main_content_thema"></div>
							<div id="reservation_main_content_time"></div>
						</div>

						<div id="reservation_button">
							<button id="resBtn" class="mbutton">예약하기</button>
						</div>

						<input type="hidden" name="cafeNo" value=""> <input type="hidden" name="themeNo" value="">
						<input type="hidden" name="themeTime" value=""> <input type="hidden" name="themeTimeNo"
							value="">

					</form>

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

<script>
	//-----------------------카페&테마에서 예약 넘겼을 시-----------------------//

	function getParameterByName(name) {
		name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), results = regex
				.exec(location.search);
		return results === null ? "" : decodeURIComponent(results[1].replace(
				/\+/g, " "));
	}

	//    function addClass(pClass, sidoDetail){

	//       var length = $('".'+pClass+'"').length;

	//       var text = new Array(length);
	//       for(var i=0; i<length; i++){                          
	//          text[i] = $('".'+pClass+'"').eq(i).text();
	//       }

	//       var dataNo = 0;

	//       for(var i=0; i<length; i++){                          

	//          if(name[i] == sidoDetail) {
	//             dataNo = i+1;
	//          }
	//          console.log(dataNo);
	//       }

	//    };

	function addClassByRegion(sidoDetail) {

		if (sidoDetail == '전국') {
			$("#all").addClass("reservation_yellow");
		} else if (sidoDetail == '홍대&신촌') {
			$("#hongShin").addClass("reservation_yellow");
		} else if (sidoDetail == '강남') {
			$("#gangnam").addClass("reservation_yellow");
		} else if (sidoDetail == '건대') {
			$("#gundae").addClass("reservation_yellow");
		} else if (sidoDetail == '대학로') {
			$("#daehakro").addClass("reservation_yellow");
		} else if (sidoDetail == '강북') {
			$("#gangbuk").addClass("reservation_yellow");
		} else if (sidoDetail == '신림') {
			$("#sillim").addClass("reservation_yellow");
		} else if (sidoDetail == '서울(기타)') {
			$("#seoulEtc").addClass("reservation_yellow");
		} else if (sidoDetail == '부천') {
			$("#bucheon").addClass("reservation_yellow");
		} else if (sidoDetail == '일산') {
			$("#ilsan").addClass("reservation_yellow");
		} else if (sidoDetail == '수원') {
			$("#suwon").addClass("reservation_yellow");
		} else if (sidoDetail == '안양') {
			$("#anyang").addClass("reservation_yellow");
		} else if (sidoDetail == '경기(기타)') {
			$("#kyeonggi").addClass("reservation_yellow");
		} else if (sidoDetail == '인천') {
			$("#incheon").addClass("reservation_yellow");
		} else if (sidoDetail == '강원') {
			$("#gangwon").addClass("reservation_yellow");
		} else if (sidoDetail == '대전') {
			$("#daejeon").addClass("reservation_yellow");
		} else if (sidoDetail == '천안') {
			$("#cheonan").addClass("reservation_yellow");
		} else if (sidoDetail == '청주') {
			$("#cheongju").addClass("reservation_yellow");
		} else if (sidoDetail == '충청(기타)') {
			$("#chungcheong").addClass("reservation_yellow");
		} else if (sidoDetail == '대구') {
			$("#daegu").addClass("reservation_yellow");
		} else if (sidoDetail == '부산') {
			$("#busan").addClass("reservation_yellow");
		} else if (sidoDetail == '경상(기타)') {
			$("#gyeongsang").addClass("reservation_yellow");
		} else if (sidoDetail == '전주') {
			$("#jeonju").addClass("reservation_yellow");
		} else if (sidoDetail == '광주') {
			$("#gwangju").addClass("reservation_yellow");
		} else if (sidoDetail == '전라(기타)') {
			$("#jeolla").addClass("reservation_yellow");
		} else if (sidoDetail == '제주') {
			$("#jeju").addClass("reservation_yellow");
		}
		;

	};

	//지역
	$(document).ready(function() {

		var sidoDetail = getParameterByName('sidoDetail');
		var cafeNo = getParameterByName('cafeNo');
		var themeNo = getParameterByName('themeNo');
		
		$(".region").removeClass("reservation_yellow");

		addClassByRegion(sidoDetail);

		$("#reservation_main_content_cafe").text("");
		$("#reservation_main_content_thema").text("");
		$("#reservation_main_content_time").text("");
		$("[name='themeTime']").val("");
		$("[name='themeTimeNo']").val("");
		$("[name='themeNo']").val("");
		$("[name='cafeNo']").val("");

		fetchList(sidoDetail);
		
		
		$("p[data-cafeno='" + cafeNo + "']").addClass("reservation_yellow");

		$("#reservation_main_content_thema").text("");
		$("#reservation_main_content_time").text("");
		$("[name='themeTime']").val("");
		$("[name='themeTimeNo']").val("");
		$("[name='themeNo']").val("");

		fetchThemeList(cafeNo);
		$("[name='cafeNo']").val(cafeNo);
		
		$("p[data-themeno='" + themeNo + "']").addClass(
		"reservation_yellow");

		$("#reservation_main_content_time").text("");
		$("[name='themeTime']").val("");
		$("[name='themeTimeNo']").val("");
		
		fetchTimeList(themeNo);
		
		$("[name='themeNo']").val(themeNo);
	});

	

	
	

	

	//---------------------//카페&테마에서 예약 넘겼을 시-----------------------//

	$("#resBtn").on(
			"click",
			function() {

				if ($("[name='reserveDate']").val() == ''
						|| $("[name='reserveDate']").val() == null) {

					alert("모두 선택해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='cafeNo']").val() == ''
						|| $("[name='cafeNo']").val() == null) {

					alert("모두 선택해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='themeNo']").val() == ''
						|| $("[name='themeNo']").val() == null) {

					alert("모두 선택해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='themeTime']").val() == ''
						|| $("[name='themeTime']").val() == null) {

					alert("모두 선택해 주세요");
					event.preventDefault();
					return flase;
				} else {
					$("#next_form").submit();
				}

			});

	//지역 클릭

	$(".region").on("click", function() {
		$(".region").removeClass("reservation_yellow");
		$(this).addClass("reservation_yellow");

		var region = $(this).data("region-no");
		var sidoDetail = $(this).text();
		console.log(region);
		console.log(sidoDetail);

		$("#reservation_main_content_cafe").text("");
		$("#reservation_main_content_thema").text("");
		$("#reservation_main_content_time").text("");
		$("[name='themeTime']").val("");
		$("[name='themeTimeNo']").val("");
		$("[name='themeNo']").val("");
		$("[name='cafeNo']").val("");

		fetchList(sidoDetail);
	});

	//리스트 가져오기
	function fetchList(sidoDetail) {
		console.log(sidoDetail);

		$.ajax({
			url : "${pageContext.request.contextPath}/reserve/getCafe",
			type : "post",
			async : false,
			data : {
				sidoDetail : sidoDetail
			},

			//dataType: "json",
			success : function(cafeList) {
				console.log(cafeList);

				//화면에 그리기
				for (var i = 0; i < cafeList.length; i++) {
					render(cafeList[i], "down");
				}
				
				
				
				var sidoDetail = getParameterByName('sidoDetail');
				
				if(sidoDetail == '인천'||sidoDetail == '강원'||sidoDetail == '대전'
					||sidoDetail == '천안'||sidoDetail == '청주'
					||sidoDetail == '충청(기타)'||sidoDetail == '대구'
					||sidoDetail == '부산'||sidoDetail == '경상(기타)'
					||sidoDetail == '전주'||sidoDetail == '광주'
					||sidoDetail == '전라(기타)'||sidoDetail == '제주'){
					
					$("#reservation_main_content_region").scrollTop(450);
				} else if(sidoDetail == '안양'){
					$("#reservation_main_content_region").scrollTop(20);
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}

	//카페 한개씩 렌더링
	function render(ReserveVo, type) {

		var str = "";
		str += '<p class="cafe" data-cafeno="'+ReserveVo.cafeNo+'">'
				+ ReserveVo.cafeName + '</p>';

		if (type === 'down') {
			$("#reservation_main_content_cafe").append(str);
		} else if (type === 'up') {
			$("#reservation_main_content_cafe").prepend(str);
		} else {
			console.log("방향을 지정해 주세요");
		}

	};

	//카페 클릭
	$("#reservation_main_content_cafe").on("click", ".cafe", function() {
		console.log("카페 선택");
		$(".cafe").removeClass("reservation_yellow");

		$(this).addClass("reservation_yellow");
		var cafeNum = $(this).data("cafeno");
		console.log(cafeNum);

		$("#reservation_main_content_thema").text("");
		$("#reservation_main_content_time").text("");
		$("[name='themeTime']").val("");
		$("[name='themeTimeNo']").val("");
		$("[name='themeNo']").val("");

		fetchThemeList(cafeNum);

		$("[name='cafeNo']").val(cafeNum);
	});

	//리스트 가져오기
	function fetchThemeList(cafeNum) {
		console.log(cafeNum);

		$.ajax({
			url : "${pageContext.request.contextPath}/reserve/getTheme",
			type : "post",
			async : false,
			data : {
				cafeNum : cafeNum
			},

			//dataType: "json",
			success : function(themeList) {
				console.log(themeList);

				//화면에 그리기
				for (var i = 0; i < themeList.length; i++) {
					renderTheme(themeList[i], "down");
				}

			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}

	//테마 한개씩 렌더링
	function renderTheme(ReserveVo, type) {

		var str = "";
		str += '<p class="theme" data-themeno="'+ReserveVo.themeNo+'">'
				+ ReserveVo.themeName + '</p>';

		if (type === 'down') {
			$("#reservation_main_content_thema").append(str);
		} else if (type === 'up') {
			$("#reservation_main_content_thema").prepend(str);
		} else {
			console.log("방향을 지정해 주세요");
		}

	};

	function resetTime() {
		var themeNo = $("[name='themeNo']").val();
		console.log(themeNo);

		$("#reservation_main_content_time").text("");

		fetchTimeList(themeNo);

		$("[name='themeNo']").val(themeNo);
		$("[name='themeTime']").val("");
		$("[name='themeTimeNo']").val("");
	}

	//테마 클릭
	$("#reservation_main_content_thema").on("click", ".theme", function() {
		console.log("테마 선택");
		$(".theme").removeClass("reservation_yellow");

		$(this).addClass("reservation_yellow");
		var themeNo = $(this).data("themeno");
		console.log(themeNo);

		$("#reservation_main_content_time").text("");
		$("[name='themeTime']").val("");
		$("[name='themeTimeNo']").val("");

		fetchTimeList(themeNo);

		$("[name='themeNo']").val(themeNo);
	});

	//리스트 가져오기
	function fetchTimeList(themeNo) {
		console.log(themeNo);

		$.ajax({
			url : "${pageContext.request.contextPath}/reserve/getTime",
			type : "post",
			async : false,
			data : {
				themeNo : themeNo,
				reserveDate : $("[name='reserveDate']").val()
			},

			//dataType: "json",
			success : function(timeList) {
				console.log(timeList);

				//화면에 그리기
				for (var i = 0; i < timeList.length; i++) {
					renderTime(timeList[i], "down");
				}

			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}

	//테마 한개씩 렌더링
	function renderTime(ReserveVo, type) {

		var str = "";
		if (ReserveVo.reserveState === 1) {
			str += '<p class="time reservePos" data-timeno="'+ReserveVo.themeTimeNo+'">'
					+ ReserveVo.themeTime + '</p>';
		} else if (ReserveVo.reserveState === 2) {
			str += '<p class="time reserveImpos" data-timeno="'+ReserveVo.themeTimeNo+'">'
					+ ReserveVo.themeTime + '</p>';
		} else if (ReserveVo.reserveState === 3) {
			str += '<p class="time reserveImpos" data-timeno="'+ReserveVo.themeTimeNo+'">'
					+ ReserveVo.themeTime + '</p>';
		}

		if (type === 'down') {
			$("#reservation_main_content_time").append(str);
		} else if (type === 'up') {
			$("#reservation_main_content_time").prepend(str);
		} else {
			console.log("방향을 지정해 주세요");
		}

	};

	//시간 클릭
	$("#reservation_main_content_time").on("click", ".time", function() {
		console.log("시간 선택");

		if ($(this).hasClass("reservePos") === true) {
			$(".time").removeClass("reservation_yellow");

			$(this).addClass("reservation_yellow");
			var timeNo = $(this).data("timeno");
			console.log(timeNo);

			var themeTime = $(this).html();
			console.log(themeTime);

			$("[name='themeTime']").val(themeTime);
			$("[name='themeTimeNo']").val(timeNo);
		}

	});
</script>


</html>
