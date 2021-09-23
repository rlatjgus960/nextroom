<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 헤더영역 -->
	<div id="header">
		<div id="header-item">
			<a><img id="logo" src="${pageContext.request.contextPath }\assets\image\logo.jpg"></a>

			<div id="nav">

				<ul id="bar">
					<li><a href="${pageContext.request.contextPath}/cafe/">카페/테마</a></li>
					<li><a href="${pageContext.request.contextPath}/reserve/reserveBaseForm">예약</a></li>
					<li><a href="${pageContext.request.contextPath}/party/partyList">파티구하기</a></li>
					<li><a href="${pageContext.request.contextPath}/rank/user">랭킹</a></li>
					<li><a href="${pageContext.request.contextPath}/board/freeCommunity">커뮤니티</a></li>
				</ul>


				<ul id="login_area">
					<li><a href="" class=""><img id="" src="${pageContext.request.contextPath }\assets\image\messageicon.jpg"></a></li>
					<li><a href="" class=""><img id="" src="${pageContext.request.contextPath }\assets\image\alerticon.jpg"></a></li>
					<li class="mypageBtn"><a href="" class="btn_s">로그아웃</a></li>
					<li class="mypageBtn"><a href="" class="btn_s">마이페이지</a></li>
				</ul>
			</div>
			
		</div>
		
	</div>
	<!-- //헤더영역 -->
      
      
</body>
</html>