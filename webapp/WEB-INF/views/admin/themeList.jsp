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


<title>테마 관리</title>
</head>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>


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
								<li><a
									href="${pageContext.request.contextPath }/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}">&nbsp;-예약
										확인</a></li>
								<li><a
									href="${pageContext.request.contextPath }/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}">&nbsp;-예약
										관리</a></li>
							</ul>
						</li>

						<li>기록
							<ul class="aside_mini_cate">
								<li><p><a href="${pageContext.request.contextPath }/admin/record/${sessionScope.authUser.cafeNo}">&nbsp;-기록 입력</a></p></li>
								<li><a href="${pageContext.request.contextPath }/admin/record/modify/${sessionScope.authUser.cafeNo}">&nbsp;-기록 관리</a></li>
							</ul>
						</li>

						<li><a href="${pageContext.request.contextPath }/admin/cafeModifyForm">카페 소개 관리</a></li>
						<li class="selected"><a
							href="${pageContext.request.contextPath }/admin/${authUser.cafeNo }/themeList">카페 테마 관리</a></li>

					</ul>

				</div>

			</div>
			<!--//Aside-->

			<!-- contentMain -->
			<div id="contentMain" class="clearfix">
				<div id="contentWrap">

					<p id="admin_subHeader">| 카페 테마 관리</p>
					
					<input id="cafeNo" type="hidden" value="${authUser.cafeNo }">

					<div id="themeModify_table">
						<table>
							<tr>
								<th class="theme_no">테마번호</th>
								<th class="theme_name">테마이름</th>
								<th class="theme_checkbox"></th>
							</tr>

							<c:forEach items="${themeList }" var="themeList">
								<c:set var="i" value="${i+1 }" />
								<tr id="t-${i }">
									<td>${i}</td>
									<td><a
										href="${pageContext.request.contextPath }/admin/theme/modifyForm/${themeList.themeNo}">${themeList.themeName }</a></td>
									<td><p data-no ="${themeList.themeNo}" class="deleteBtn">[삭제]</p></td>
							</c:forEach>



						</table>
					</div>

					<div id="themeModify_button">
						<button onclick="location.href='${pageContext.request.contextPath }/admin/addThemeForm'"
							class="mbutton">테마 추가</button>
						<%-- <button onclick="location.href='${pageContext.request.contextPath }/admin/themeDeleteForm'"
							class="mbutton">테마 삭제</button> --%>
					</div>

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

<script type="text/javascript">

$(".deleteBtn").on("click", function(){
	
	var themeNo = $(this).data("no");
	var cafeNo = $("#cafeNo").val();
	
	if(!confirm("테마를 정말 삭제하시겠습니까?")) {
		//아니오
	} else {
		//예
		console.log("테마 삭제");
		
		console.log(themeNo);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/admin/theme/delete",
			type : "get",
			data : {themeNo : themeNo},
			
			dataType : "json",
			success : function(count) {
				console.log(count);
				if(count === 1) {
					
					location.replace("${pageContext.request.contextPath}/admin/"+cafeNo+"/themeList")
					alert("테마가 삭제되었습니다.");
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
});




</script>



</html>