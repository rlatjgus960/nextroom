<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
					
					<c:choose>
						<c:when test="${empty sessionScope.authUser }">
							<li class="mypageBtn"><a href="${pageContext.request.contextPath}/user/loginForm" class="btn_s">로그인</a></li>
							<li class="mypageBtn"><a href="${pageContext.request.contextPath}/mypage/main" class="btn_s">마이페이지</a></li>
						</c:when>
						
						<c:otherwise>
							<li class="mypageBtn"><a href="" class="btn_s">로그아웃</a></li>
							<li class="mypageBtn"><a href="" class="btn_s">마이페이지</a></li>
						</c:otherwise>
					</c:choose>
					
				</ul>
			</div>
			
		</div>
		
	</div>
	<!-- //헤더영역 -->
     