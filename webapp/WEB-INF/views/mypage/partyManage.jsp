<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet"
	type="text/css">

<title>마이페이지-파티관리</title>
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
				<div id="subheader-mintitle">마이페이지 > 파티관리</div>

			</div>



			<div id="contentMain" class="clearfix">
				<!-- aside -->
				<div id="aside">
					<img id="aside_img" src="${pageContext.request.contextPath}/assets/image/asideImg.png"
						width="35px" height="35px">

					<div id="aside_cate">
						<ul>
							<li><a href="${pageContext.request.contextPath}/mypage/infoModifyForm">개인정보 변경</a></li>
							<li><a href="${pageContext.request.contextPath}/mypage/main">내기록 보기</a></li>
							<li><a href="${pageContext.request.contextPath}/mypage/payMent">결제내역</a></li>
							<li class="selected"><a href="${pageContext.request.contextPath}/mypage/partyManage">파티관리</a></li>
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
								</ul></li>

							<c:if test="${authUser.userType == '1'}">
								<li><a href="${pageContext.request.contextPath}/mypage/addCafeForm">카페
										관리자 전환</a></li>
							</c:if>
							<!-- <li>회원 탈퇴</li> -->
						</ul>

					</div>
				</div>
				<!-- //aside -->

				<!-- main -->
				<div id="mypageMain" class="clearfix">





					<div id="party_table_select">
						<select name="partyJoinSelect">
							<option value="makeParty" selected="">전체보기</option>
							<option value="makeParty">내가 등록한 파티</option>
							<option value="joinParty">내가 참여한 파티</option>
						</select>
					</div>

					<div id="partyJoin_detail_table">
						<table>
							<colgroup>
								<col style="width: 70px;">
								<col style="width: 100px;">
								<col style="width: 150px;">
								<col style="width: 380px;">
								<col style="width: 170px;">
								<col style="width: 80px;">
								<col style="width: 100px;">
							</colgroup>
							<tr>
								<th>No</th>
								<th>포스터</th>
								<th>지역</th>
								<th>카페 / 테마</th>
								<th>날짜</th>
								<th>인원</th>
								<th>모집상태</th>
							</tr>
							<c:forEach items="${mypagePartyManage.partyManageList }" var="partyManageList" varStatus="status">
								<tr>
									<td><a href="${pageContext.request.contextPath }/party/partyRead?partyNo=${partyManageList.partyNo}">${partyManageList.partyNo} </a></td>
									<td><a href="${pageContext.request.contextPath }/party/partyRead"><img
											src="${pageContext.request.contextPath }/assets/image/party/테러리스트.jpg" width="80px"
											height="90px"></a></td>
									<td>${partyManageList.sidoDetail }</td>
									<td>${partyManageList.cafeName } / ${partyManageList.themeName }</td>
									<td>${partyManageList.reserveDate } / ${partyManageList.themeTime }</td>
									<td>${partyManageList.userCount } / ${partyManageList.reservePerson }</td>
									<td>${partyManageList.partyState }</td>
								</tr>
							</c:forEach>
								<%-- <tr>
									<td>2</td>
									<td><a href=""><img
											src="${pageContext.request.contextPath }/assets/image/party/이순신.jpg" width="80px"
											height="90px"></a></td>
									<td>서울 신논현</td>
									<td>넥스트에디션 / 인터프리터</td>
									<td>2021-08-27 14:20</td>
									<td>2 / 4</td>
									<td>모집중</td>
								</tr> --%>

						</table>
					</div>

					<div id="paging" class="clearfix">
						<ul>
							<li><a href="">◀</a></li>
							<li><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li class="active"><a href="">3</a></li>
							<li><a href="">4</a></li>
							<li><a href="">5</a></li>
							<li><a href="">▶</a></li>
						</ul>


						<div class="clear"></div>
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
	function popup() {
		var url = "${pageContext.request.contextPath }/board/massageForm";
		var name = "popup test";
		var option = "width = 500, height = 500, top = 250, left = 700, location = no"
		window.open(url, name, option);
	}
</script>
</html>