<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div id="aside">

		<img id="aside_img"
			src="${pageContext.request.contextPath }/assets/image/asideImg.png"
			width="35px" height="35px">

		<div id="aside_cate">

			<ul>
				<li>예약
					<ul class="aside_mini_cate">
						<li class="selected">&nbsp;-예약 확인</li>
						<!-- 선택된 항목에 class="selected" 주면 underline,bolder -->
						<li>&nbsp;-예약 관리</li>
					</ul>
				</li>
				<li>기록
					<ul class="aside_mini_cate">
						<li>&nbsp;-기록 입력</li>
						<li>&nbsp;-기록 관리</li>
					</ul>
				</li>
				<li>카페 소개 관리</li>
				<li>카페 테마 관리</li>
			</ul>

		</div>

	</div>
</body>
</html>