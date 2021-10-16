<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/reservation.css" rel="stylesheet" type="text/css">

<script src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
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

				<form action="${pageContext.request.contextPath}/reserve/reservePayForm" method="post">
	                <!--table-->
	                <table id="reservation_table">
	                    <tr>
	                        <th>지점</th>
	                        <td id="cafeName">${rInfoVo.cafeName}<input type="hidden" name="cafeName" value="${rInfoVo.cafeName}"></td>
	                    </tr>
	
	                    <tr>
	                        <th>테마</th>
	                        <td id="themeName" data-themeno="${rInfoVo.themeNo }">${rInfoVo.themeName}<input type="hidden" name="themeName" value="${rInfoVo.themeName}"></td>
	                    </tr>
	
	                    <tr>
	                        <th>예약일</th>
	                        <td id="reserveDate"></td>
	                    </tr>
	
	                    <tr>
	                        <th>예약시간</th>
	                        <td id="themeTime"></td>
	                    </tr>
	
	                    <tr>
	                        <th>예약자</th>
	                        <td><input type="text" name="reserveName" value="${sessionScope.authUser.userName}"></td>
	                    </tr>
	
	                    <tr>
	                        <th>연락처</th>
	                        <td><input type="text" name="reserveHp" value="${sessionScope.authUser.userHp}"></td>
	                    </tr>
	
	                    <tr>
	                        <th>인원</th>
	                        <td>
	                            <select id="headCountSelect" name="headcount">
	                            	<c:choose>
	                            		<c:when test="${rInfoVo.userCount eq 0}">
	                            			<option value="default">인원을 선택해 주세요</option>
			                            	<c:forEach items="${pList}" var="priceVo" varStatus="status">
			                            		<option value="${priceVo.headCount }">${priceVo.headCount }명</option>
			                            	</c:forEach>
	                            		</c:when>
	                            		
	                            		<c:otherwise>
	                            			<option value="default">인원을 선택해 주세요</option>
	                            			<c:forEach items="${pList}" var="priceVo" varStatus="status">
			                            		<option value="${priceVo.headCount }" <c:if test="${rInfoVo.userCount eq priceVo.headCount}">selected</c:if>>${priceVo.headCount }명</option>
			                            	</c:forEach>
	                            		</c:otherwise>
	                            	</c:choose>
	                            </select>
	                        </td>
	                    </tr>
	
	                    <tr>
	                        <th>가격</th>
	                        	<c:choose>
	                            		<c:when test="${rInfoVo.userCount eq 0}">
	                            			<td class="price">-</td>
	                            		</c:when>
	                            		
	                            		<c:otherwise>
	                            			<c:forEach items="${pList}" var="priceVo" varStatus="status">
			                            		<c:if test="${rInfoVo.userCount eq priceVo.headCount}">
			                            			<td class="price">${priceVo.price}원</td>
			                            			<input type="hidden" value="${priceVo.price}" name="paypaypay">
			                            		</c:if>
			                            	</c:forEach>
	                            		</c:otherwise>
	                            	</c:choose>
	                    </tr>
	
	                    <tr>
	                        <th>팀원등록</th>
	                        <td>
	                            <div id="reserveTeam">
		                            
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
	                        <label><input id="chkAgree" type="checkbox" name="agreement" value="agree" text-left-padding="5px">위의 '개인정보보호취급방침'에 동의합니다.</label>
	                    </div>
	                </div>
	                <!-- //agreement -->
	                <div>
		                <button id="nextPage" class="mbutton" type="submit">예약하기</button>
		            </div>
		            
		            <input type="hidden" name="payment" value="">
		            <input type="hidden" name="cafeNo" value="${param.cafeNo}">
		            <input type="hidden" name="themeNo" value="${param.themeNo}">
		            <input type="hidden" name="reserveDate" value="${rInfoVo.reserveDate}">
		            <input type="hidden" name="themeTime" value="${rInfoVo.themeTime}">
		            <c:forEach items="${pDetailUserList}" var="partyP" varStatus="status">
                    	<input type="hidden" name="party${status.index}" value="${partyP.id }">
                    	<input type="hidden" name="partyNo${status.index}" value="${partyP.userNo }">
                    	<input type="hidden" name="partyName${status.index}" value="${partyP.userName }">
                    </c:forEach>
		            
		            
		            
	            </form>
                
                <!-- //main -->

			</div>


		</div>

		<!-- //content -->


		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- //footer -->
	</div>
</body>

<script>

	var a = $("[name='themeTime']").val();
	var c = $("[name='reserveDate']").val();
	var b = c.replaceAll('-','');
	console.log(b);
	
	
	var time = a.split(":");
	var yy = String(b).substring(0,4);
	var mm = String(b).substring(4,6);
	var dd = String(b).substring(6,8);
	
	$("#reserveDate").text(yy + "년 " + mm + "월 " + dd + "일");
	$("#themeTime").text(time[0]+"시 "+time[1]+"분");
	
	
	
	var tetetetet = $("#headCountSelect").val();
	if(tetetetet != "인원수를 입력해 주세요") {
		
		var pay = $("[name='paypaypay']").val();
		console.log("pay"+pay);
		
		var pp = pay.replace(/(\s*)/g, "");
		var payment = pp.replace(',','');	
		
		
		console.log(payment+"payment");
		
		$("[name='payment']").val(payment);
		
		console.log("파티에서 옴");
		var themeNo = $("#themeName").data("themeno");
		console.log(tetetetet);
		
		for(var i=0; i<tetetetet; i++) {
			var person = $("[name='party"+i+"']").val();
			var personNo = $("[name='partyNo"+i+"']").val();
			var personName = $("[name='partyName"+i+"']").val();
			console.log(i+"제발되라"+person+"dfsaffafs"+personNo+"이름"+personName);
			
			renderParty("down", i, tetetetet, person, personNo, personName);
			
		}
		
	}
	
	//테마 한개씩 렌더링
	function renderParty(type, i, tetetetet, person, personNo, personName) {
		
		var str = "";
		if (i == tetetetet-1) {
			str += '<div class="clearfix member">';
		} else {
			str += '<div class="clearfix member nolast">';
		}
		
		str += '	<div class="reservation_partyMember_info clearfix">';
		str += '		<div class="info_item">';
		str += '			<select id="memberSelect" name="partyMember" class="pp'+i+'">';
		str += '				<option value="default">팀원 정보를 선택해 주세요</option>';
		str += '				<option value="member" selected>회원</option>';
		str += '				<option value="nonmember">비회원</option>';
		str += '			</select>';
		
		str += '			<div class="reservation_partyMember_info_item">';
		str += '				팀원 '+(i+1)+' (회원아이디)';
		str += '			</div>';
		
		str += '			<div class="reservation_partyMember_info_item">';
		str += '    			<input name="playerId'+i+'" type="text" value="'+person+'">';
		str += '				<input type="hidden" name="userNo'+i+'" value="'+personNo+'">'
		str += '    			<button id="btnIdCheck" class="mbutton">아이디 확인</button>';		
		str += '			</div>';	 
		
		str += '			<div class="reservation_partyMember_info_item reservation_party_text pText'+i+'">';
		str += '				'+personName+'님 당신의 무사탈출을 기원합니다.';
		str += '			</div>';
		str += '		</div>';
		str += '		<div class="reservation_partyMember_img reservation_partyMember_info_item">';
		str += '			<img src="${pageContext.request.contextPath }/assets/image/mypageEtc/chacha.JPG">';
		str += '		</div>';
		str += '	</div>';
		str += '</div>';
		
		
		if (type === 'down') {
			$("#reserveTeam").append(str);
		} else if (type === 'up') {
			$("#reserveTeam").prepend(str);
		} else {
			console.log("방향을 지정해 주세요");
		}
		
		

	};
	
	
	
	
	
	
	$("#headCountSelect").on('change', function() {
		
		$(".member").remove();
		
		var headCount = $(this).val();
		var themeNo = $("#themeName").data("themeno");
		console.log(themeNo);
		console.log(headCount);
		
		if(headCount === "default") {
			$(".price").text("-");
		} else {
			$.ajax({
				url: "${pageContext.request.contextPath}/reserve/getPrice",
				type: "post",
				data : { headCount : headCount,
						 themeNo : themeNo},
				
				//dataType: "json",
				success : function(price) {
					console.log(price);
					
					var pay =price.price;
					console.log(price.price);
					
					$(".price").text(pay + "원");
					
					var pp = pay.replace(/(\s*)/g, "");
					var ppp = pp.replace(',','');
					$("[name='payment']").val(ppp);
					
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			}); 	
		}
		
		
		for (var i = 0; i < headCount; i++) {
			render("down", i, headCount);
		}
		
		
		$(".reservation_partyMember_info_item").hide();
	});
	
	//테마 한개씩 렌더링
	function render(type, i, headCount) {
		$("#teamPlayer").hide();
		
		var str = "";
		if (i == headCount-1) {
			str += '<div class="clearfix member">';
		} else {
			str += '<div class="clearfix member nolast">';
		}
		
		str += '	<div class="reservation_partyMember_info clearfix">';
		str += '		<div class="info_item">';
		str += '			<select id="memberSelect" name="partyMember" class="pp'+i+'">';
		str += '				<option value="default" selected>팀원 정보를 선택해 주세요</option>';
		str += '				<option value="member">회원</option>';
		str += '				<option value="nonmember">비회원</option>';
		str += '			</select>';
		
		str += '			<div class="reservation_partyMember_info_item">';
		str += '				팀원 '+(i+1)+' (회원아이디)';
		str += '			</div>';
		
		str += '			<div class="reservation_partyMember_info_item">';
		str += '    			<input name="playerId'+i+'" type="text" value="">';
		str += '				<input type="hidden" name="userNo'+i+'" value="">'
		str += '    			<button id="btnIdCheck" class="mbutton">아이디 확인</button>';		
		str += '			</div>';	 
		
		str += '			<div class="reservation_partyMember_info_item reservation_party_text pText'+i+'">';
		str += '				'+playerVo.userName+'님 당신의 무사탈출을 기원합니다.';
		str += '			</div>';
		str += '		</div>';
		str += '		<div class="reservation_partyMember_img reservation_partyMember_info_item">';
		str += '			<img src="${pageContext.request.contextPath }/assets/image/mypageEtc/chacha.JPG">';
		str += '		</div>';
		str += '	</div>';
		str += '</div>';
		
		
		if (type === 'down') {
			$("#reserveTeam").append(str);
		} else if (type === 'up') {
			$("#reserveTeam").prepend(str);
		} else {
			console.log("방향을 지정해 주세요");
		}
		
		

	};
	
	
	$("#reserveTeam").on('change', "#memberSelect", function() {
		var team = $(this).val();
		console.log(team);
	
		
		
		if(team === "default") {
			($(this).nextAll()).hide();
			($(this).parent().siblings()).hide();
		} else if(team === "member") {
			
			($(this).nextAll()).show();
			($(this).parent().siblings()).show();
			($(this).siblings(".reservation_party_text")).text("");
			/*
			$(".teamPlayer").show();
			$(".publicTeamPlayer").show();
			
			*/
		} else if (team === "nonmember") {
			($(this).nextAll()).hide();
			($(this).parent().siblings()).hide();
			($(this).siblings(".reservation_party_text")).show();
			($(this).siblings(".reservation_party_text")).text("당신의 무사탈출을 기원합니다.");
		}
	});
	
	$("#reserveTeam").on('click', "#btnIdCheck", function() {
		console.log("아이디 체크");
		event.preventDefault();
		
		var id = ($(this).siblings()).val();
		console.log(id);
		
		$.ajax({
			context : this,
			url : "${pageContext.request.contextPath }/reserve/idCheck",
			type : "post",
			data : {id: id},  
			
			//dataType : "json",
			success : function(playerVo){
			/*성공시 처리해야될 코드 작성*/
			
			console.log(playerVo);
			
			console.log(playerVo.userName);
			
			if(playerVo.userName !== null && playerVo.userName !== undefined) {
				$(this).parent().nextAll(".reservation_party_text").text(playerVo.userName+"님 당신의 무사탈출을 기원합니다.");
				$(this).prev().val(playerVo.userNo);
			} else {
				$(this).parent().nextAll(".reservation_party_text").text("일치하는 사용자가 없습니다");
			}
			
			},
			error : function(XHR, status, error) {
			console.error(status + " : " + error);
			}
		});
	});
	
	$("#nextPage").on("click", function() {
		console.log("다음으로 넘어가기");
		
		var reserveName = $("[name='reserveName']").val();
		if(reserveName.length < 1) {
			alert("예약자를 입력해 주세요");
			event.preventDefault();
			return false;
		}
		
		var reserveHp = $("[name='reserveHp']").val();
		if(reserveHp.length < 1) {
			alert("연락처를 입력해 주세요");
			event.preventDefault();
			return false;
		}
		
		var headCountSelect = $("#headCountSelect").val();
		if(headCountSelect == "default") {
			alert("인원수를 입력해 주세요");
			event.preventDefault();
			return false;
		}
		
		//질문
		var memberSelect = $("#memberSelect").val();
		if(memberSelect == "default") {
			alert("팀원 정보를 선택해 주세요");
			event.preventDefault();
			return false;
		}
		
		var hc = headCountSelect.replace('명', '');
		console.log(hc);
		for(var j=0; j<hc; j++) {
			var test = $(".pp"+j+"").val();
			console.log("test"+test);
			
			var ttt = $(".pText"+j+"").text();
			console.log("ttt"+ttt);
			if(test =="default") {
				alert("팀원 정보를 선택해 주세요");
				event.preventDefault();
				return false;
			} else if(test == "member") {
				if(ttt == '' || ttt == null || ttt == '일치하는 사용자가 없습니다') {
					alert("아이디를 확인해 주세요");
					event.preventDefault();
					return false;
				}
			}
			
		}
		
		
		
		
		
		//약관동의 체크 여부
		var agree = $("#chkAgree").is(":checked");
		if(agree == false) {
			alert("약관에 동의해 주세요");
			event.preventDefault();
			return false;
		}
		
	});
	
	
	
</script>
</html>