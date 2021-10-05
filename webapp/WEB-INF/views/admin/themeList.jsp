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


<title>테마 관리</title>
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
					<h2>넥스트에디션 강남신논현점</h2>
				</div>
				<div id="subheader-mintitle">관리자페이지 > 카페테마관리</div>



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
								<li><a href="${pageContext.request.contextPath }/admin/record">&nbsp;-기록 입력</a>
								</p></li>
								<li><a href="${pageContext.request.contextPath }/admin/recordModify">&nbsp;-기록 관리</a></li>
							</ul>
						</li>

						<li><a href="${pageContext.request.contextPath }/admin/cafeModifyForm">카페 소개 관리</a></li>
						<li class="selected"><a
							href="${pageContext.request.contextPath }/admin/${authUser.cafeNo }/themeList">카페 테마 관리</a></li>

					</ul>

				</div>

			</div>
			<!--//Aside-->

			<!-- contentMain -->
			<div id="contentMain" class="clearfix">
				<div id="contentWrap">

					<p id="admin_subHeader">| 카페 테마 관리</p>

					<div id="themeModify_table">
						<table>
							<tr>
								<th class="theme_no">테마번호</th>
								<th class="theme_name">테마이름</th>
								<th class="theme_checkbox"></th>
							</tr>

							<c:forEach items="${themeList }" var="themeList">
								<c:set var="i" value="${i+1 }" />
								<tr class="">
									<td>${i}</td>
									<td><a href="${pageContext.request.contextPath }/admin/theme/modifyForm/${themeList.themeNo}">${themeList.themeName }</a></td>
									<td></td>
							</c:forEach>



						</table>
					</div>

					<div id="themeModify_button">
						<button onclick="location.href='${pageContext.request.contextPath }/admin/addThemeForm'"
							class="mbutton">테마 추가</button>
						<button onclick="location.href='${pageContext.request.contextPath }/admin/themeDeleteForm'"
							class="mbutton">테마 삭제</button>
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



</html>