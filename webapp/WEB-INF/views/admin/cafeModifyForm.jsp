<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/aside.css" rel="stylesheet"
	type="text/css">

<link href="${pageContext.request.contextPath }/assets/css/adminTheme.css" rel="stylesheet"
	type="text/css">


<title>카페 정보 수정</title>
</head>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>


<body>
	<!-- 헤더영역 -->
	s
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->


	<div id="wrap">
		<!-- content -->
		<div id="content">


			<div id="subheader" class="clearfix">
				<div id="subheader-title">
					<h2>${cafeVo.cafeName}</h2>
				</div>
				<div id="subheader-mintitle">관리자페이지 > 카페소개관리</div>



			</div>

			<!--Aside-->
			<div id="aside">

				<img id="aside_img" src="${pageContext.request.contextPath }/assets/image/asideImg.png"
					width="35px" height="35px">

				<div id="aside_cate">

					<ul>
						<li>예약
							<ul class="aside_mini_cate">
								<li><a
									href="${pageContext.request.contextPath }/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}">&nbsp;-예약
										확인</a></li>
								<li><a
									href="${pageContext.request.contextPath }/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}">&nbsp;-예약
										관리</a></li>
							</ul>
						</li>
						<li>기록
							<ul class="aside_mini_cate">
								<li><a href="${pageContext.request.contextPath }/admin/record">&nbsp;-기록 입력</a></li>
								<li><a href="${pageContext.request.contextPath }/admin/recordModify">&nbsp;-기록 관리</a></li>
							</ul>
						</li>
						<li class="selected"><a href="${pageContext.request.contextPath }/admin/cafeModifyForm">카페
								소개 관리</a></li>
						<li><a href="${pageContext.request.contextPath }/admin/${authUser.cafeNo }/themeList">카페
								테마 관리</a></li>
					</ul>

				</div>

			</div>
			<!--//Aside-->


			<!-- contentMain -->
			<div id="contentMain" class="clearfix">

				<div id="contentWrap">
					<p id="admin_subHeader">| 카페 소개 관리</p>

					<div id="cafeModify" class="">
						<form id="cafeModifyForm" action="${pageContext.request.contextPath }/admin/cafe/modify"
							method="post" enctype="multipart/form-data">
							<input type="hidden" name="cafeNo" value="${authUser.cafeNo }">
							<div id="cafeModi_img" class="clearfix">

								<div id="cafe_mainImg_wrap" class="clearfix">
									<p class="cafModi_subTitle">카페 메인이미지</p>
									<img id="cafe_mainImg" src="${pageContext.request.contextPath }/upload/${cafeVo.cafeImg}"
										alt="">

									<div class="cafe_up_wrap">
										<input type="file" name="cafeImgFile">
									</div>
								</div>

								<div id="cafe_interior_wrap">

									<p class="cafModi_subTitle">카페 내부이미지</p>

									<div id="add_cafeInterior" class="scroll-image">
										<!-- 카페내부사진 반복영역 -->
										<c:forEach items="${cafeVo.inteList}" var="inteList">
											<div id="d-${inteList.interiorNo }">
												<img class="inteImg" src="${pageContext.request.contextPath }/upload/${inteList.img}"
													alt=""> <img data-no="${inteList.interiorNo }" class="removeImg"
													src="${pageContext.request.contextPath }/assets/image/admin/xmark.png">

											</div>
										</c:forEach>
										<!-- //카페내부사진 반복영역 -->
									</div>
									<div class="cafe_up_wrap">

										<input type="file" name="interiorImg" multiple="multiple">

									</div>

								</div>
							</div>


							<div id="cafe_explain_wrap">
								<div id="cafeIntroduce_wrap" class="cafeNameWrap clearfix">
									<p class="cafModi_subTitle">카페이름</p>
									<input type="text" id="cafeName" name="cafeName" placeholder="카페이름을 입력하세요."
										value="${cafeVo.cafeName}">
								</div>


								<div id="cafeIntroduce_wrap" class="cafe_explain_item clearfix">
									<p class="cafModi_subTitle">소개글</p>
									<textarea name="cafeIntro" placeholder="소개글을 입력하세요.">${cafeVo.cafeIntro}</textarea>
								</div>

								<div id="address_wrap" class="cafe_explain_item clearfix">
									<p class="cafModi_subTitle">주소</p>

									<div class="address_search">
										<input name="postCode" type="text" id="postcode" placeholder="우편번호"
											value="${cafeVo.postCode}"> <input id="searchBtn" type="button"
											onclick="execDaumPostcode()" value="우편번호 찾기"> <input name="address" type="text"
											id="roadAddress" placeholder="도로명주소" value="${cafeVo.address}"> <input
											type="hidden" id="jibunAddress" placeholder="지번주소"> <span id="guide"
											style="color: #999; display: none"></span> <input name="addressDetail" type="text"
											id="detailAddress" placeholder="상세주소" value="${cafeVo.addressDetail}"> <input
											type="hidden" id="extraAddress" placeholder="참고항목"> <input type="hidden"
											name="printAddress" value="${cafeVo.printAddress }"> <input type="hidden"
											name="sidoDetail" value="${cafeVo.sidoDetail }"> <input name="sido"
											type="hidden" id="sido" placeholder="시도" value="${cafeVo.sido}"> <input
											name="sigungu" type="hidden" id="sigungu" placeholder="시군구" value="${cafeVo.sigungu}"><input
											type="hidden" id="sample5_address" placeholder="주소"> <input type="hidden"
											name="latitude" id="latitude" placeholder="위도" value="${cafeVo.latitude }"> <input
											type="hidden" name="longitude" id="longitude" placeholder="경도"
											value="${cafeVo.longitude }">


									</div>
								</div>


								<div id="phoneNumber_wrap" class="cafe_explain_item clearfix">
									<p class="cafModi_subTitle">전화번호</p>
									<input type="tel" id="phoneNumber" name="cafeHp" placeholder="전화번호를 입력하세요."
										value="${cafeVo.cafeHp}">
								</div>


								<div id="workTime_wrap" class="cafe_explain_item clearfix">
									<p class="cafModi_subTitle">영업시간</p>
									<div id="workTime">
										<input id="openTime" name="openTime" type="time" value="${cafeVo.openTime}"> <span>&nbsp;~&nbsp;</span>
										<input id="closeTime" name="closeTime" type="time" value="${cafeVo.closeTime}">
									</div>
								</div>


								<div id="cafeURL_wrap" class="cafe_explain_item clearfix">
									<p class="cafModi_subTitle">카페 URL</p>
									<input type="text" id="cafeURL" name="url" placeholder="카페 사이트 주소를 입력해주세요."
										value="${cafeVo.url}">
								</div>

							</div>


							<div id="cafeModify_button">
								<button id="cafeModifyBtn" type="submit" class="mbutton">수정</button>
							</div>
						</form>

					</div>

				</div>
			</div>
			<!-- contentMain -->

		</div>
		<!-- //content -->


		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- //footer -->

	</div>
	<!-- wrap -->
</body>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8f0f56038184ef1eac6b631a3dfc277d&libraries=services"></script>

<script>
	//주소-좌표 변환 객체를 생성
	var geocoder = new daum.maps.services.Geocoder();

	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {

						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						document.getElementById("sample5_address").value = roadAddr;

						// 주소로 상세 정보를 검색
						geocoder
								.addressSearch(
										data.roadAddress,
										function(results, status) {
											// 정상적으로 검색이 완료됐으면
											if (status === daum.maps.services.Status.OK) {

												var result = results[0]; //첫번째 결과의 값을 활용

												// 해당 주소에 대한 좌표를 받아서
												var coords = new daum.maps.LatLng(
														result.y, result.x);

												document
														.getElementById('latitude').value = result.x;
												document
														.getElementById('longitude').value = result.y;

											}
										});

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('postcode').value = data.zonecode;
						document.getElementById("roadAddress").value = roadAddr;
						document.getElementById("jibunAddress").value = data.jibunAddress;
						document.getElementById("sido").value = data.sido;
						document.getElementById("sigungu").value = data.sigungu;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");

					}

				}).open();

	}

	$("#cafeModifyBtn").on(
			"click",
			function() {

				if ($("[name='cafeName']").val() == ''
						|| $("[name='cafeName']").val() == null) {

					alert("카페이름을 입력해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='cafeIntro']").val() == ''
						|| $("[name='cafeIntro']").val() == null) {

					alert("소개글을 입력해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='postCode']").val() == ''
						|| $("[name='postCode']").val() == null) {

					alert("주소를 입력해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='cafeHp']").val() == ''
						|| $("[name='cafeHp']").val() == null) {

					alert("전화번호를 입력해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='openTime']").val() == ''
						|| $("[name='openTime']").val() == null) {

					alert("영업시간을 입력해 주세요");
					event.preventDefault();
					return flase;
				} else if ($("[name='closeTime']").val() == ''
						|| $("[name='closeTime']").val() == null) {

					alert("영업시간을 입력해 주세요");
					event.preventDefault();
					return flase;
				} else {
					$("#cafeModifyForm").submit();
				}

			});

	
	//이미지 삭제 -- 일단은 영역지워지게 해놨고 이미지 넘버 컬럼 추가 후에 넘버 받아서 그거 받아서 delete까지 해야지
	$(".removeImg").on("click", function() {
		
		var inteNo = $(this).data("no");
		
		console.log("이미지 삭제 버튼 클릭");

		
		if(!confirm("해당 이미지를 정말 삭제하시겠습니까?")) {
			//아니오
		} else {
			//예
			console.log("이미지 삭제");
			
			console.log(inteNo);
			
			$.ajax({
				url : "${pageContext.request.contextPath}/admin/cafe/inteDelete",
				type : "get",
				data : {inteNo : inteNo},
				
				dataType : "json",
				success : function(count) {
					console.log(count);
					if(count === 1) {
						$("#d-" + inteNo).remove();
					}
					
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		}
		

	});
</script>


</html>