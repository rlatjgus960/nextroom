<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/reservation.css" rel="stylesheet" type="text/css">

<title>방탈출 예약</title>
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
					<h2>방탈출 예약</h2>
				</div>

			</div>

			<div id="contentMain" class="clearfix">
				
			    <!-- reservationBar -->
                <div id="reservation_bar" class="clearfix">
                    <div id="reservation_first" class="clearfix reservation_gray"><div class="reservation_num">01</div><div class="reservation_txt">날짜/카페/테마 선택</div></div>
                    <div id="reservation_second" class="clearfix reservation_yellow"><div class="reservation_num">02</div><div class="reservation_txt">예약정보 입력</div></div>
                    <div id="reservation_third" class="clearfix reservation_gray"><div class="reservation_num">03</div><div class="reservation_txt">결제하기</div></div>
                    <div id="reservation_fourth" class="clearfix reservation_gray"><div class="reservation_num">04</div><div class="reservation_txt">예약완료</div></div>
                </div>
                <!-- //reservationBar -->

                <!-- main -->

                <!--table-->
                <table id="reservation_table">
                    <tr>
                        <th>지점</th>
                        <td>비밀의화원 미드나잇</td>
                    </tr>

                    <tr>
                        <th>테마</th>
                        <td>팩토리 엠</td>
                    </tr>

                    <tr>
                        <th>예약일</th>
                        <td>2021년 8월 27일</td>
                    </tr>

                    <tr>
                        <th>예약시간</th>
                        <td>15시 30분</td>
                    </tr>

                    <tr>
                        <th>예약자</th>
                        <td><input type="text" value="차오월"></td>
                    </tr>

                    <tr>
                        <th>연락처</th>
                        <td><input type="text" value="010-1111-1111"></td>
                    </tr>

                    <tr>
                        <th>인원</th>
                        <td>
                            <select name="headcount">
                                <option value="1">1명</option>
                                <option value="2">2명</option>
                                <option value="3">3명</option>
                                <option value="4">4명</option>
                                <option value="5">5명</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <th>가격</th>
                        <td>50,000원</td>
                    </tr>

                    <tr>
                        <th>팀원등록</th>
                        <td>
                            <div>
                                <div class="clearfix member nolast">
                                    <div class="reservation_partyMember_info">
                                        <div class="reservation_partyMember_info_item">
                                            <select name="partyMember">
                                                <option value="member">회원</option>
                                                <option value="nonmember">비회원</option>
                                            </select>
                                        </div>

                                        <div class="reservation_partyMember_info_item">
                                            팀원 1 (회원아이디)
                                        </div>

                                        <div class="reservation_partyMember_info_item">
                                            <input type="text" value="may0505">
                                            <button class="mbutton">아이디 확인</button>
                                        </div>

                                        <div id="reservation_party_text" class="reservation_partyMember_info_item">
                                            차오월킹님 당신의 무사탈출을 기원합니다.
                                        </div>
                                    </div>
                                    <div id="reservation_partyMember_img">
                                        <img src="${pageContext.request.contextPath }/assets/image/profile/blue.jpg">
                                    </div>
                                </div>

                                <div class="clearfix nonmember">
                                    <div class="reservation_partyMember_info">
                                        <div class="reservation_partyMember_info_item">
                                            <select name="partyMember">
                                                <option value="nonmember">비회원</option>
                                                <option value="member">회원</option>
                                            </select>
                                        </div>

                                        <div id="reservation_party_text" class="reservation_partyMember_info_item">
                                            당신의 무사탈출을 기원합니다.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
                <!-- //table -->


                <!-- agreement -->
                <div id="reservation_agreement">
                    <div class="reservation_agreement_title">개인정보 수집 및 이용안내</div>

                    <div class="reservation_agreement_content">
                        <ul>1) 예약서비스 제공에 관한 결제 정보 등 개인정보 수집
                            <li>이용자가 구매한 재화나 용역의 대금 결제</li>
                            <li>결제 과정 중 본인 식별, 인증, 실명확인 및 이용자가 결제한 거래의 내역을 요청하는 경우 응대 및 확인</li>
                            <li>이용자가 결제한 거래의 취소 또는 환불, 상품 배송 등 전자상거래 관련 서비스 제공</li>
                        </ul>
                    </div>

                    <div class="reservation_agreement_check">
                        <label><input type="checkbox" name="agreement" value="agree" text-left-padding="5px">위의 '개인정보보호취급방침'에 동의합니다.</label>
                    </div>
                </div>
                <!-- //agreement -->
                
                <!-- //main -->

			</div>

            <div>
                <button class="mbutton">예약하기</button>
            </div>


		</div>

		<!-- //content -->


		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- //footer -->
	</div>
</body>
</html>