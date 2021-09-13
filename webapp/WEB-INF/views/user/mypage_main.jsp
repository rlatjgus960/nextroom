<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">

<title>마이페이지</title>
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
					<h1>마이페이지</h1>
				</div>
				<div id="subheader-mintitle">마이페이지 > 메인</div>



			</div>



			<div id="contentMain" class="clearfix">
				<!-- aside -->
				<c:import url="/WEB-INF/views/includes/mypage_aside.jsp"></c:import>
				<!-- //aside -->

				<!-- main -->
				<div id="mypageMain" class="clearfix">
                    <div id="myRank">
                  
                        <div class="myRank_area clearfix">
                           
                              <span><img class="f-left myRank_profile img-circle" src="${pageContext.request.contextPath }/assets/image/mypageEtc/chacha.JPG"></span>
                           
                              <p class="myRank_font m-left f-left">차오월킹</p>
                           
                              <ul class="rank_detail">
                                 <li>성공률 : 33.33%</li>
                                 <li>노힌트 성공률 : 0%</li>
                                 <li>전적 300전 100승 200패</li>
                              </ul>
                           
                        </div>
                    </div>

                    <div id="mypageTable_text">나의 최근 예약내역</div>

                    <div id="mypageTable">
                        <table id="reservation_check_table">
                            <tr>
                                <td id="reservation_thema_img" rowspan="5"><img src="${pageContext.request.contextPath }/assets/image/reserveEtc/factoryM.JPG"></td>
                                <th>예약번호</th>
                                <td>2021082701</td>
                                <th>예약자</th>
                                <td>차예진</td>
                            </tr>
        
                            <tr>
                                <th>지점</th>
                                <td>비밀의화원 미드나잇</td>
                                <th>연락처</th>
                                <td>010-1111-1111</td>
                            </tr>
        
                            <tr>
                                <th>테마</th>
                                <td>팩토리 엠</td>
                                <th>결제금액</th>
                                <td>50,000원</td>
                            </tr>
        
                            <tr>
                                <th>예약일시</th>
                                <td colspan="3">2021년 8월 27일   15시 30분</td>
                            </tr>
        
                            <tr>
                                <th>인원</th>
                                <td colspan="3">2인</td>
                            </tr>
                        </table>
                    </div>

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