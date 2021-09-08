<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet"
	type="text/css"
>
<link href="${pageContext.request.contextPath }/assets/css/rank.css" rel="stylesheet"
	type="text/css"
>

<title>Insert title here</title>
</head>
<body>
	<div id="wrap">

		<!-- 헤더영역 -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- //헤더영역 -->


		<!-- content -->
		<div id="content">


			<div id="subheader" class="clearfix">
				<div id="subheader-title">
					<h1>랭킹</h1>
				</div>
				<div id="subheader-mintitle">랭킹 > 유저랭킹</div>



			</div>



			<div id="contentMain" class="clearfix">
				<!-- aside -->
				<c:import url="/WEB-INF/views/includes/userrank_aside.jsp"></c:import>
				<!-- //aside -->

				<!-- main -->
				<div id="mypageMain" class="clearfix">
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
					<p>메인</p>
				

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
</html>