<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<!-- 헤더영역 -->
	<div id="header">
		<div id="header-item">
			<a><img id="logo" src="${pageContext.request.contextPath }\assets\image\logo.jpg"></a>

			<div id="nav">

				<ul id="bar">
					<li><a href="${pageContext.request.contextPath}/cafe/">카페</a>/<a href="${pageContext.request.contextPath}/cafe/theme">테마</a></li>
					<li><a href="${pageContext.request.contextPath}/reserve/reserveBaseForm">예약</a></li>
					<li><a href="${pageContext.request.contextPath}/party/partyList">파티구하기</a></li>
					<li><a href="${pageContext.request.contextPath}/rank/user">랭킹</a></li>
					<li><a href="${pageContext.request.contextPath}/board/freeCommunity">커뮤니티</a></li>
				</ul>


				<ul id="login_area">
					
					<c:choose>
						<c:when test="${empty sessionScope.authUser }">
							<li class="mypageBtn"><a href="${pageContext.request.contextPath}/user/loginForm" class="btn_s">로그인</a></li>
							<li class="mypageBtn"><a href="${pageContext.request.contextPath}/user/joinForm" class="btn_s">회원가입</a></li>
						</c:when>
						
						<c:otherwise>
							<c:choose>
								<c:when test="${'1' eq sessionScope.authUser.userType}">
									<li><a href="" class=""><img id="" src="${pageContext.request.contextPath }\assets\image\alerticon.jpg"></a></li>
									<li class="mypageBtn"><a href="${pageContext.request.contextPath}/user/logout" class="btn_s">로그아웃</a></li>
									<li class="mypageBtn"><a href="${pageContext.request.contextPath}/mypage/main" class="btn_s">마이페이지</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="" class=""><img id="" src="${pageContext.request.contextPath }\assets\image\alerticon.jpg"></a></li>
									<li class="mypageBtn"><a href="${pageContext.request.contextPath}/user/logout" class="btn_s">로그아웃</a></li>
									<li class="mypageBtn"><a href="${pageContext.request.contextPath}/mypage/main" class="btn_s">마이페이지</a></li>
									<li class="mypageBtn"><a href="${pageContext.request.contextPath}/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}" class="btn_s">관리자페이지</a></li>
								</c:otherwise>
							</c:choose>	
						</c:otherwise>
						
					</c:choose>
					
				</ul>
			</div>
			
		</div>
		
	</div>
	<!-- //헤더영역 -->
     