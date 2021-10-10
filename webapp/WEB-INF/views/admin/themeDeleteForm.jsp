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

<title>테마 삭제</title>
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
									<li><a href="${pageContext.request.contextPath }/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}">&nbsp;-예약 확인</a></li>
									<li><a href="${pageContext.request.contextPath }/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}">&nbsp;-예약 관리</a></li>
								</ul>
							</li>
							
							<li>기록
								<ul class="aside_mini_cate">
									<li><p class="selected"><a href="${pageContext.request.contextPath }/admin/record">&nbsp;-기록 입력</a></p></li>
									<li><a href="${pageContext.request.contextPath }/admin/recordModify">&nbsp;-기록 관리</a></li>
								</ul>
							</li>
							
							<li><a href="${pageContext.request.contextPath }/admin/cafeModifyForm">카페 소개 관리</a></li>
							<li class="selected"><a href="${pageContext.request.contextPath }/admin/${authUser.cafeNo }/themeList">카페 테마
								관리</a></li>
						</ul>

				</div>

			</div>
			<!--//Aside-->


			<!-- contentMain -->
			<div id="contentMain" class="clearfix">
				<div id="contentWrap">

					<p id="admin_subHeader">| 카페 테마 관리</p>
	
					<form action="">
						<div id="themeModify_table">
							<table>
								<tr>
									<th class="theme_no">테마번호</th>
									<th class="theme_name">테마이름</th>
									<th class="theme_checkbox"></th>
								</tr>
	
								<tr class="">
									<td>1</td>
									<td>메가스팀</td>
									<td><input type="checkbox" class="themeNo" name="themeNo" value=""></td>
	
								</tr>
	
								<tr>
									<td>2</td>
									<td>인터프리터</td>
									<td><input type="checkbox" class="themeNo" name="themeNo" value=""></td>
	
								</tr>
	
								<tr>
									<td>3</td>
									<td>이웃집 또털어</td>
									<td><input type="checkbox" class="themeNo" name="themeNo" value=""></td>
	
								</tr>
	
								<tr>
									<td>4</td>
									<td>조선피자몰</td>
									<td><input type="checkbox" class="themeNo" name="themeNo" value=""></td>
	
								</tr>
	
								<tr>
									<td>5</td>
									<td>트와이스 어 데이</td>
									<td><input type="checkbox" class="themeNo" name="themeNo" value=""></td>
								</tr>
	
								<tr>
									<td>6</td>
									<td>서치</td>
									<td><input type="checkbox" class="themeNo" name="themeNo" value=""></td>
								</tr>
	
								<tr>
									<td>7</td>
									<td>어시스턴트</td>
									<td><input type="checkbox" class="themeNo" name="themeNo" value=""></td>
								</tr>
	
	
							</table>
						</div>
	
						<div id="themeModify_button">
							<button type="reset" onclick="location.href='${pageContext.request.contextPath }/admin/${authUser.cafeNo }/themeList'" class="mbutton">취소</button>
							<button type="submit" class="mbutton">삭제</button>
						</div>
	
					</form>
	
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