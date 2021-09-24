<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/user.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>

<title>마이페이지</title>
</head>
<body>
	<!-- 헤더영역 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->
	
	<div id="wrap">




		<!-- content -->
		<div id="content">


			<div id="loginForm">
				<form method="get" action="${pageContext.request.contextPath}/user/login">
		      		<table>
				      	<colgroup>
							<col style="width: 100px;">
							<col style="">
						</colgroup>
			      		<tr>
			      			<td><label for="textId">아이디</label></td>
			      			<td><input id="textId" type="text" name="id"></td>
			      		</tr>
			      		<tr>
			      			<td><label for="textPassword">패스워드</label> </td>
			      			<td><input id="textPassword" type="password" name="password"></td>   
			      			   			
			      		</tr> 
			      		<tr>
							<c:if test="${param.result eq 'fail'}">
								<td colspan="2" id="tdMsg" colspan="2">
			      					<span>아이디 또는 비번을 확인해 주세요.</span>
			      				</td>
							</c:if>
			      			
			      		</tr> 
			      	</table>
		      		<div id="btnArea">
						<button class="btn" type="submit" >로그인</button>
					</div>
		      		
				</form>
		
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
<!-- 카카오 스크립트 
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
 -->
</html>