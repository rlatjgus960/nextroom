<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/user.css" rel="stylesheet" type="text/css">


<title>회원가입</title>
</head>
<body>
	<!-- 헤더영역 -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	<!-- //헤더영역 -->
	
	<div id="wrap">




		<!-- content -->
		<div id="content">


			<div id="joinSuccess">	
				
				<p>축하합니다! 회원가입이 완료되었습니다</p>
				<br><br>
				<a class="lbutton" href="${pageContext.request.contextPath }/user/loginForm">로그인하러 가기</a>
			
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

</html>