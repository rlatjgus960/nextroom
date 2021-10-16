<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/aside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/userDetail.css" rel="stylesheet" type="text/css">

<title>랭킹-유저상세</title>
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
			<h2><a href="${pageContext.request.contextPath }/rank/user">랭킹</a></h2>
			</div>
			<div id="subheader-mintitle">랭킹 > 개인상세</div>



			</div>


			<!-- contentMain -->
			<div id="" class="">
				<div class="clearfix">
	               	
	               		<form id="searchbar" class="" action="${pageContext.request.contextPath}/rank/detail/" method="get">
							<div class="form-group text-right">
								<span>검색 :&nbsp;</span>
								<input placeholder="닉네임을 입력하세요." type="text" name="nickName">
								<button type="submit" id=btn_search class="search_button">검색</button>
							</div>
						</form>
	
	                  
	
	            </div>
				<!--userprofile-->
				
				<div id="search-null">
				
				<p>
				NEXTROOM에 등록되지 않은 사용자이거나 
				잘못된 닉네임 입니다.<br>
				[ 탈출기록이 없을 경우 검색이 되지 않습니다. ]
				</p>
				
				</div>

            
				
			
			</div>
			<!-- contentMain -->
			
		</div>

      <!-- //content -->


		<!-- footer -->

		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

		<!-- //footer -->
	</div>

</body>
</html>