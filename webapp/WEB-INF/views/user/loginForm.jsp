<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">

<title>마이페이지</title>
</head>
<body>
	<!-- 헤더영역 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->
	
	<div id="wrap">




		<!-- content -->
		<div id="content">


			<div id="login_box">
				<a href="javascript:kakaoLogin();"><img src="${pageContext.request.contextPath }/assets/image/kakao_login_medium_narrow.png"></a>
				<a href="javascript:kakaoLogout();"> <span>카카오 로그아웃</span> </a>
				

			</div>


		</div>

		<!-- //content -->

		<!-- footer -->

		<div id="footer">
			상호 : 넥스트룸 | 대표자 : 1조 | 고객센터 : 02-3478-0008<br> 메일 :
			moon124@gmail.com | 주소 : 서울특별시 서초구 서초4동 서초대로77길 13<br> Copyright
			© NEXTROOM All rights reserved.
		</div>

		<!-- //footer -->
	</div>
</body>
<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	Kakao.init('2db73f407a18feab17891483cb1ec32d'); 
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
	function kakaoLogin() {
		Kakao.Auth.login({
			success : function(response) {
				Kakao.API.request({
					url : '/v2/user/me',
					success : function(response) {
						console.log(response)
					},
					fail : function(error) {
						console.log(error)
					},
				})
			},
			fail : function(error) {
				console.log(error)
			},
		})
	}
	//카카오로그아웃  
	function kakaoLogout() {
		if (Kakao.Auth.getAccessToken()) {
			Kakao.API.request({
				url : '/v1/user/unlink',
				success : function(response) {
					console.log(response)
				},
				fail : function(error) {
					console.log(error)
				},
			})
			Kakao.Auth.setAccessToken(undefined)
		}
	}
</script>
</html>