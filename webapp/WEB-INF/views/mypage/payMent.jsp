<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/modal.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>

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
				<div id="subheader-mintitle">마이페이지 > 결제내역</div>

			</div>



			<div id="contentMain" class="clearfix">
				<div id="aside">
					<img id="aside_img"
						src="${pageContext.request.contextPath}/assets/image/asideImg.png"
						width="35px" height="35px">

					<div id="aside_cate">
						 <ul>
							<li><a href="${pageContext.request.contextPath}/mypage/infoModifyForm">개인정보 변경</a></li>
							<li><a href="${pageContext.request.contextPath}/mypage/main">내기록 보기</a></li>
							<li class="selected"><a href="${pageContext.request.contextPath}/mypage/payMent">결제내역</a></li>
							<li><a href="${pageContext.request.contextPath}/mypage/partyManage">파티관리</a></li>
							<!-- <li>관심 카페/테마</li>-->
							<!-- <li>내가 쓴 글 보기
								<ul>
									<li>- 커뮤니티 글</li>
									<li>- 커뮤니티 댓글</li>
								</ul>
							</li> -->
							
							<li><a href="${pageContext.request.contextPath}/mypage/receiveMassage">내 쪽지</a>
								<ul>
									<li><a href="${pageContext.request.contextPath}/mypage/receiveMassage">- 받은 쪽지함</a></li>
									<li><a href="${pageContext.request.contextPath}/mypage/sendMassage">- 보낸 쪽지함</a></li>
									<li><a href="javascript:popup()">- 쪽지 보내기</a></li>
								</ul>
							</li>
							<!-- <li>회원 탈퇴</li> -->
						</ul>

					</div>
				</div>

				<!-- main -->
				<div id="mypageMain" class="clearfix">





					<div id="paymentDetail_table_select">
						<select name="orderSelect">
							<option value="recentOrder">최신순</option>
							<option value="oldOrder">오래된순</option>
						</select>
					</div>

					<div id="paymentDetail_table">
						<table>
							<tr>
								<th>예약일</th>
								<th>예약시간</th>
								<th>예약번호</th>
								<th>지점</th>
								<th>테마</th>
								<th>인원</th>
								<th>가격</th>
								<th>현재상태</th>
							</tr>

							<c:forEach items="${reseveList}" var="rList" varStatus="status">
								<tr class="reserveModal" data-reserveno="${rList.reserveNo}" data-gameno="${rList.gameNo}" data-headcount="${rList.reservePerson}">
									<td>${rList.reserveDate }</td>
									<td>${rList.reserveTime}</td>
									<td>${rList.reserveNo}</td>
									<td>${rList.cafeName}</td>
									<td>${rList.themeName}</td>
									<td>${rList.reservePerson}인</td>
									<td>${rList.payment }원</td>
									<c:choose>
										<c:when test="${rList.gameNo eq 0}">
											<td class="escapeState">탈출예약</td>
										</c:when>
										
										<c:otherwise>
											<td class="escapeState">탈출완료</td>
										</c:otherwise>
									</c:choose>
									
								</tr>	
							</c:forEach>
							
							
							

						</table>
					</div>

					<div id="paging" class="clearfix">
						<ul>
							<li><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li class="active"><a href="">3</a></li>
							<li><a href="">4</a></li>
							<li><a href="">5</a></li>
						</ul>


						<div class="clear"></div>
					</div>




				</div>
				<!-- //main -->
			</div>


		</div>

		<!-- //content -->



		<!-- 모달 -->
		<div id="paymentDetail_modal">

			<div class="paymentDetail_modal_content">

				<a id="modal_close_btn"><img
					src="${pageContext.request.contextPath }/assets/image/mypageEtc/closeBtn.JPG"></a>

				<div id="paymentDetail_table_item">
					<table id="reservation_check_table">
						<tr>
							<td id="reservation_thema_img" rowspan="5"><img id="modal_themeImg" src=""></td>
							<th>예약번호</th>
							<td id="modal_reserveNo"></td>
							<th>예약자</th>
							<td id="modal_reserveName"></td>
						</tr>

						<tr>
							<th>지점</th>
							<td id="modal_cafeName"></td>
							<th>연락처</th>
							<td id="modal_reserveHp"></td>
						</tr>

						<tr>
							<th>테마</th>
							<td id="modal_themeName"></td>
							<th>결제금액</th>
							<td id="modal_payment"></td>
						</tr>

						<tr>
							<th>예약일시</th>
							<td id="modal_reserveDateTime" colspan="3"></td>
						</tr>

						<tr>
							<th>인원</th>
							<td id="modal_reservePerson" colspan="3"></td>
						</tr>
					</table>
					
					
					
						<div id="myPayment_Info">
						<!-- 
							<div>
								<select name="partyMember01">
									<option value="member">회원</option>
									<option value="nonmember">비회원</option>
								</select> <span>팀원 1 (회원아이디)</span> <input type="text" value="may0505">
	
								<button class="mbutton">아이디 확인</button>
							</div>
	
							<div>
								<select name="partyMember02">
									<option value="member">비회원</option>
									<option value="nonmember">회원</option>
								</select> <span>팀원 2 (회원아이디)</span> <input type="text" value="">
	
								<button class="mbutton">아이디 확인</button>
							</div>
							 -->
						</div>
	
						
							
					
				</div>



			</div>

			<div class="cafe_detail_modal_layer"></div>
		</div>

		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- //footer -->

	</div>
</body>
<script>
	
	$(".reserveModal").on("click", function() {
		$("#paymentDetail_modal").attr("style", "display:block");
		document.body.classList.add("stop-scroll");
		
		var reserveNo = $(this).data("reserveno");
		var gameNo = $(this).data("gameno");
		
		$("#myPayment_Info").children().remove();
		
		$.ajax({
			url: "${pageContext.request.contextPath}/mypage/payMentModal",
			type: "post",
			data : { reserveNo : reserveNo },
			
			//dataType: "json",
			success : function(reserveVo) {
				console.log(reserveVo);
				var path = "${pageContext.request.contextPath }/assets/image/" + reserveVo.themeImg;
				
				console.log(reserveVo.reserveTime);
				
				var time = (reserveVo.reserveTime).split(":");
				var year = (reserveVo.reserveDate).substring(0,4);
				var month = (reserveVo.reserveDate).substring(4,6);
				var day = (reserveVo.reserveDate).substring(6,8);
				
				$('#modal_themeImg').attr('src',path);
				
				$("#modal_reserveNo").text(reserveVo.reserveNo);
				$("#modal_reserveName").text(reserveVo.reserveName);
				$("#modal_cafeName").text(reserveVo.cafeName);
				$("#modal_reserveHp").text(reserveVo.reserveHp);
				$("#modal_themeName").text(reserveVo.themeName);
				$("#modal_payment").text(reserveVo.payment+"원");
				$("#modal_reserveDateTime").text(year + "년 " + month + "월 " + day + "일 " + time[0]+"시 "+time[1]+"분");
				$("#modal_reservePerson").text(reserveVo.reservePerson+"인");
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
		
		var hc = $(this).data("headcount");
		console.log("hc"+hc);
		
		render("down", gameNo, reserveNo, hc);
		

	});
		
	function render(type, gameNo, reserveNo, hc) {
		
		if(gameNo == 0) {
			var str = "";
			str += '<div id="modalOne">';
			str += '</div">';
			
			teamList(reserveNo, hc);
		} else {
			var str = "";
			str += '<div id="madalTwo">';
			str += '</div>';
			
			fetchList(gameNo);
		}
	
		
		
		if (type === 'down') {
			$("#myPayment_Info").append(str);
		} else if (type === 'up') {
			$("#myPayment_Info").prepend(str);
		} else {
			console.log("방향을 지정해 주세요");
		}
		
		
	
	};

	function fetchList(gameNo) {
		
		$.ajax({
			url: "${pageContext.request.contextPath}/mypage/getRecord",
			type: "post",
			data : { gameNo : gameNo },
			
			//dataType: "json",
			success : function(recordList) {
				console.log(recordList);
				
				//화면에 그리기
				for (var i = 0; i < recordList.length; i++) {
					renderCom(recordList[i], "down", i);
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
	}
	
	//테마 한개씩 렌더링
	function renderCom(RecordVo, type, i) {
		
		var time = RecordVo.recordTime;
		console.log("time"+time);
		
		var min = ((String)(time/60)).split(".");
		var sec = time%60;
		
		console.log("min"+min);
		console.log("sec"+sec);
		
		var str = "";
		str += '	<div>';
		str += '		<span>팀원 '+(i+1)+'</span> <span>'+RecordVo.userName+'</span>';
		if(RecordVo.recordHints > 0) {
			str += '		<span class="escape_record">'+min[0]+'m '+sec+'s('+RecordVo.recordHints+' hint)</span>';
		} else {
			str += '		<span class="escape_record">'+min[0]+'m '+sec+'s(No hint)</span>';	
		}
		str += '	</div>';
		
		
		if (type === 'down') {
			$("#madalTwo").append(str);
		} else if (type === 'up') {
			$("#madalTwo").prepend(str);
		} else {
			console.log("방향을 지정해 주세요");
		}
		
		
		
	
	};
	
	function teamList(reserveNo, hc) {
		
		
		$.ajax({
			url: "${pageContext.request.contextPath}/mypage/getTeamPlayer",
			type: "post",
			data : { reserveNo : reserveNo},
			
			//dataType: "json",
			success : function(teamPlayerList) {
				console.log(teamPlayerList);
				console.log("이게 뭐냐"+hc);
				//화면에 그리기
				for (var i = 0; i < hc; i++) {
					renderTeam(teamPlayerList[i], "down", i,hc, reserveNo);
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
	}
	
	//테마 한개씩 렌더링
	function renderTeam(ReserveVo, type, i, hc, reserveNo) {
		
		if(ReserveVo != null) {
			var str = "";
			str += '	<div>';
			str += '		<select name="partyMember'+(i+1)+'" class="modalSelect'+(i+1)+' seleeeect" data-hc="'+hc+'">';
			str += '			<option value="member" selected>회원</option>';
			str += '			<option value="nonmember">비회원</option>';
			str += '		</select> <span>팀원 '+(i+1)+' (회원아이디)</span> <input class="playerId" name="playerId'+i+'" type="text" value="'+ReserveVo.id+'">';
			str += '		<input class="playerNo" name="playerNo'+i+'" type="hidden" value="'+ReserveVo.userNo+'">';
			str += '		<button id="btnIdCheck" class="mbutton" data-idchno="'+i+'">아이디 확인</button>';
			str += '	</div>';
		} else {
			var str = "";
			str += '	<div>';
			str += '		<select name="partyMember'+(i+1)+'" class="modalSelect'+(i+1)+' seleeeect" data-hc="'+hc+'">';
			str += '			<option value="member">회원</option>';
			str += '			<option value="nonmember" selected>비회원</option>';
			str += '		</select> <span>팀원 '+(i+1)+' (회원아이디)</span> <input class="playerId" name="playerId'+i+'" type="text" value="">';
			str += '		<input class="playerNo" name="playerNo'+i+'" type="hidden" value="">';
			str += '		<button id="btnIdCheck" class="mbutton" data-idchno="'+i+'">아이디 확인</button>';
			str += '	</div>';	
		}
		
		if(i == (hc-1)) {
			str += '<div id="myPayment_Info_Btn">';
			str += '	<button id="updateBtn" class="mbutton" data-ino="'+(i+1)+'" data-reservenum="'+reserveNo+'">수정완료</button>';
			str += '</div>';
		}
		
		
		
		if (type === 'down') {
			$("#modalOne").append(str);
		} else if (type === 'up') {
			$("#modalOne").prepend(str);
		} else {
			console.log("방향을 지정해 주세요");
		}
		
	
	};
	
	$("#myPayment_Info").on("change", ".seleeeect", function() {
		
		
		var hc = $(this).data("hc");
		
		var id = ($(this).siblings(".playerId")).val("");
		console.log("ididididid"+id);
	});
	

	$("#myPayment_Info").on('click', "#btnIdCheck", function() {
		console.log("아이디 체크");
		event.preventDefault();
		
		var suntact= ($(this).siblings(".seleeeect")).val();
		
		console.log(suntact+"dsdfasalsfd");
		
		if( suntact == "nonmember") {
			alert("회원 상태로 변경해주세요");
		} else {
			var id = ($(this).siblings(".playerId")).val();
			//console.log(id);
			
			var help = $(this).data("idchno");
			//console.log("heldpda"+help);
			
			$.ajax({
				url : "${pageContext.request.contextPath }/mypage/idCheck",
				type : "post",
				data : {id: id}, 
				
				//dataType : "json",
				success : function(reserveVo){
				/*성공시 처리해야될 코드 작성*/
				
				console.log(reserveVo);
				
				if(reserveVo != null) {
					var numnum = reserveVo.userNo;
					console.log(numnum+"numnum");
					$("[name='playerNo"+help+"'").val(reserveVo.userNo);
					console.log("아이디 맞음");
					alert("아이디가 존재합니다");
				} else {
					console.log("아이디 안맞음");
					alert("아이디가 존재하지 않습니다");
				}
				
				},
				error : function(XHR, status, error) {
				console.error(status + " : " + error);
				}
			});
		}
		
		
	});
	
	
	
	$("#myPayment_Info").on("click", "#updateBtn", function() {
		console.log("Hello");
		var No = $(this).data("ino");
		console.log("No"+No);
		var reserveNo = $(this).data("reservenum");
		
		for(var i=0; i<No; i++) {
			var testT = $("[name='playerId"+i+"']").val();
			var testUserNo = $("[name='playerNo"+i+"']").val();
			console.log(testT+"testtste"+testUserNo+"testUserNo");
			
			if(i == 0) {
				$.ajax({
					url : "${pageContext.request.contextPath }/mypage/idUpdateDelete",
					type : "post",
					data : {id: testT,
							reserveNo : reserveNo,
							userNo : testUserNo}, 
					
					//dataType : "json",
					success : function(count){
					/*성공시 처리해야될 코드 작성*/
					
					console.log("count"+count);
					
					
					
					
					},
					error : function(XHR, status, error) {
					console.error(status + " : " + error);
					}
				});
			} else {
				$.ajax({
					url : "${pageContext.request.contextPath }/mypage/idUpdate",
					type : "post",
					data : {id: testT,
							reserveNo : reserveNo,
							userNo : testUserNo}, 
					
					//dataType : "json",
					success : function(count){
					/*성공시 처리해야될 코드 작성*/
					
					console.log("count"+count);
					
					
					
					
					},
					error : function(XHR, status, error) {
					console.error(status + " : " + error);
					}
				});
			}
			
			
		}
		
		$("#paymentDetail_modal").attr("style", "display:none");
		document.body.classList.remove("stop-scroll");
	});
	
	
	
	
	$("#modal_close_btn").on("click", function() {
		$("#paymentDetail_modal").attr("style", "display:none");
		document.body.classList.remove("stop-scroll");

	});

	
	
//쪽지보내기 팝업
function popup(){
    var url = "${pageContext.request.contextPath }/board/massageForm";
    var name = "popup test";
    var option = "width = 500, height = 500, top = 250, left = 700, location = no"
    window.open(url, name, option);
}
</script>


</html>