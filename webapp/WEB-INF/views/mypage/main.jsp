<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css"
	rel="stylesheet" type="text/css">

<title>마이페이지</title>
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
					<h1>마이페이지</h1>
				</div>
				<div id="subheader-mintitle">마이페이지 > 메인</div>



			</div>



			<div id="contentMain" class="clearfix">
				<div id="aside">
					<img id="aside_img"
						src="${pageContext.request.contextPath}/assets/image/asideImg.png"
						width="35px" height="35px">

					<div id="aside_cate">
						 <ul>
							<li><a href="${pageContext.request.contextPath}/mypage/infoModifyForm">개인정보 변경</a></li>
							<li class="selected"><a href="${pageContext.request.contextPath}/mypage/main">내기록 보기</a></li>
							<li><a href="${pageContext.request.contextPath}/mypage/payMent">결제내역</a></li>
							<li><a href="${pageContext.request.contextPath}/mypage/partyManage">파티관리</a></li>
							<!-- <li>관심 카페/테마</li>-->
							<!-- <li>내가 쓴 글 보기
								<ul>
									<li>- 커뮤니티 글</li>
									<li>- 커뮤니티 댓글</li>
								</ul>
							</li> -->
							
							<li><a href="${pageContext.request.contextPath}/mypage/receiveMassage">내 쪽지</a>
								<ul>
									<li><a href="${pageContext.request.contextPath}/mypage/receiveMassage">- 받은 쪽지함</a></li>
									<li><a href="${pageContext.request.contextPath}/mypage/sendMassage">- 보낸 쪽지함</a></li>
									<li><a href="javascript:popup()">- 쪽지 보내기</a></li>
								</ul>
							</li>
							<!-- <li>회원 탈퇴</li> -->
						</ul>

					</div>
				</div>

				<!-- main -->
				<div id="mypageMain" class="clearfix">
					<div id="myRank">

						<div class="myRank_area clearfix">

							<span><img class="f-left myRank_profile img-circle"
								src="${pageContext.request.contextPath }/assets/image/mypageEtc/chacha.JPG"></span>

							<p class="myRank_font m-left f-left">차오월킹</p>

							<ul class="rank_detail">
								<li>성공률 : 33.33%</li>
								<li>노힌트 성공률 : 0%</li>
								<li>전적 300전 100승 200패</li>
							</ul>

						</div>
					</div>

					<div id="mypageTable_text">나의 최근 예약내역</div>

					<div id="mypageTable">
						<table id="reservation_check_table">
							<tr>
								<td id="reservation_thema_img" rowspan="5"><img
									src="${pageContext.request.contextPath }/assets/image/reserveEtc/factoryM.JPG"></td>
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
								<td colspan="3">2021년 8월 27일 15시 30분</td>
							</tr>

							<tr>
								<th>인원</th>
								<td colspan="3">2인</td>
							</tr>
						</table>
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

<script type="text/javascript">
//쪽지보내기 팝업
function popup(){
    var url = "${pageContext.request.contextPath }/board/massageForm";
    var name = "popup test";
    var option = "width = 500, height = 500, top = 250, left = 700, location = no"
    window.open(url, name, option);
}
</script>
</html>