<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head profile="http://www.w3.org/2005/10/profile">

<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/partyList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/mypage.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/partyWriteModal.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
<link rel="icon" type="image/png" href="http://example.com/myicon.png">

<script type="text/javascript"
	src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>	
	
<title>파티구하기</title>
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
                    <h2>파티구하기</h2>
                </div>
            </div>



            <!-- main -->
            <div id="content_main" class="clearfix">
                
                <!-- board -->
                <div id="board">

                    <!-- 서치영역 -->
                    <div id="search_area" class="clearfix">
                        <form action="" method="">

                            <select id="party_view" name="party_view">
                                <option value="" selected="">전체보기</option>
                                <option value="party_ing">모집중</option>
                                <option value="party_ed">모집완료</option>
                            </select>

                            <div id="kind">
                                <label for="cafe_pick">카페</label>
                                <input type="checkbox" id="cafe_pick" name="searchPick" value="cafe">

                                <label for="theme_pick">테마</label>
                                <input type="checkbox" id="theme_pick" name="searchPick" value="theme">

                                <input type="text" name="keyword" value="">

                                <button class="search_button" type="submit">검색</button>
                                
                            </div>

                        </form>
                    </div>
                    <!-- //서치영역 -->

                    <!-- 파티리스트 영역 -->
                    <div id="party_list">
                        <table>
                            <colgroup>
                                <col style="width: 100px;">
                                <col style="width: 200px;">
                                <col style="width: 170px;">
                                <col style="width: 240px;">
                                <col style="width: 230px;">
                                <col style="width: 90px;">
                                <col style="width: 140px;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>포스터</th>
                                    <th>지역</th>
                                    <th>카페 / 테마</th>
                                    <th>날짜</th>
                                    <th>인원</th>
                                    <th>지원현황</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td><a href="${pageContext.request.contextPath }/party/partyRead"><img src="${pageContext.request.contextPath }/assets/image/party/테러리스트.jpg" width="80px" height="90px"></a></td>
                                    <td>서울 신논현</td>
                                    <td>넥스트에디션 / 인터프리터</td>
                                    <td>2021-08-27  14:20</td>
                                    <td>2 / 4</td>
                                    <td>모집중</td>
                               </tr>
                                <tr>
                                    <td>2</td>
                                    <td><a href=""><img src="${pageContext.request.contextPath }/assets/image/party/이순신.jpg" width="80px" height="90px"></a></td>
                                    <td>서울 신논현</td>
                                    <td>넥스트에디션 / 인터프리터</td>
                                    <td>2021-08-27  14:20</td>
                                    <td>2 / 4</td>
                                    <td>모집중</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td><a href=""><img src="${pageContext.request.contextPath }/assets/image/party/pepe.jpg" width="80px" height="90px"></a></td>
                                    <td>서울 신논현</td>
                                    <td>넥스트에디션 / 인터프리터</td>
                                    <td>2021-08-27  14:20</td>
                                    <td>2 / 4</td>
                                    <td>모집중</td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td><a href=""><img src="${pageContext.request.contextPath }/assets/image/party/butterfly.jpg" width="80px" height="90px"></a></td>
                                    <td>서울 신논현</td>
                                    <td>넥스트에디션 / 인터프리터</td>
                                    <td>2021-08-27  14:20</td>
                                    <td>2 / 4</td>
                                    <td>모집중</td>
                                </tr>
                                  <tr>
                                    <td>5</td>
                                    <td><a href=""><img src="${pageContext.request.contextPath }/assets/image/party/이연복.jpg" width="80px" height="90px"></a></td>
                                    <td>서울 신논현</td>
                                    <td>넥스트에디션 / 인터프리터</td>
                                    <td>2021-08-27  14:20</td>
                                    <td>2 / 4</td>
                                    <td>모집중</td>
                                </tr>
								<tr>
                                    <td>6</td>
                                    <td><a href=""><img src="${pageContext.request.contextPath }/assets/image/party/pepe.jpg" width="80px" height="90px"></a></td>
                                    <td>서울 신논현</td>
                                    <td>넥스트에디션 / 인터프리터</td>
                                    <td>2021-08-27  14:20</td>
                                    <td>2 / 4</td>
                                    <td>모집중</td>
                                </tr>
								
                            </tbody>
                        </table>
                    </div>
                    <!-- //파티리스트 영역 -->

                    <!-- 페이징 영역 -->
                    <div id="pager">
                        <ol class="clearfix">
                            <li><a href="">◀</a></li>
                            <li><a href="">1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">3</a></li>
                            <li><a href="">4</a></li>
                            <li><a href="">5</a></li>
                            <li><a class="active" href="">6</a></li>
                            <li><a href="">7</a></li>
                            <li><a href="">8</a></li>
                            <li><a href="">9</a></li>
                            <li><a href="">10</a></li>
                            <li><a href="">▶</a></li>
                        </ol>
                    	
<%--                     	<c:if test="${not empty sessionScope.authUser }"> --%>
	                        <button type="button" id="submit_button" class="submit_button">등록하기</button>
<%--                     	</c:if> --%>
                    </div>
                    <!-- 페이징 끝나는 영역 -->

                </div>
                <!-- //board -->
            </div>
            <!-- //main -->
            

        </div>
        <!-- //content -->

		
		<!-- 파티등록 모달창 -->
		<div id="partyWrite_modal">
			
			<div class="partyWrite_modal_content">
				
				<div class="party_bar">파티 등록</div>
				
				<form id="partyWrite_form" action="${pageContext.request.contextPath}/party/partyWrite" method="get">
					<div>
						<input type="hidden" name="userNo" value="${sessionScope.authUser.userNo }">
					
						<table class="form_table">
							<!-- 아이디 -->
							<tbody>
								<tr class="space">
									<td id="text_bold">아이디</td> 
									<td class="party_uid">${sessionScope.authUser.id } </td>
								</tr>
						
							<!-- 날짜 -->
								<tr>
									<td id="text_bold">날짜&nbsp;&nbsp;&nbsp;</td> 
									<td>
										<input type="text" id="party_date" name="reserveDate" value="" placeholder="날짜를 선택해 주세요">
									</td>
								</tr>
							
							<!-- 지역 -->
								<tr>
									<td id="text_bold">지역&nbsp;&nbsp;&nbsp;</td> 
									<td>
										<select id="party_region" name="sidoDetail">
	                                		<option value="" selected="">지역을 선택해 주세요</option>
	                                		<option value="전국">전국</option>
	                                		<option value="서울">서울</option>
	                                		<option value="홍대&신촌">홍대&신촌</option>
	                                		<option value="강남">강남</option>
	                                		<option value="건대">건대</option>
	                                		<option value="대학로">대학로</option>
	                                		<option value="강북">강북</option>
	                                		<option value="신림">신림</option>
	                                		<option value="서울(기타)">서울(기타)</option>
	                                		<option value="부천">부천</option>
	                                		<option value="일산">일산</option>
	                                		<option value="수원">수원</option>
	                                		<option value="안양">안양</option>
	                                		<option value="경기(기타)">경기(기타)</option>
	                                		<option value="인천">인천</option>
	                                		<option value="강원">강원</option>
	                                		<option value="대전">대전</option>
	                                		<option value="천안">천안</option>
	                                		<option value="청주">청주</option>
	                                		<option value="충청(기타)">충청(기타)</option>
	                                		<option value="대구">대구</option>
	                                		<option value="부산">부산</option>
	                                		<option value="경상(기타)">경상(기타)</option>
	                                		<option value="전주">전주</option>
	                                		<option value="광주">광주</option>
	                                		<option value="전라(기타)">전라(기타)</option>
	                                		<option value="제주">제주</option>
	                            		</select>
									</td>
								</tr>
							
							<!-- 카페 -->
								<tr>
									<td id="text_bold">카페&nbsp;&nbsp;&nbsp;</td> 
									<td>
										<select id="party_cafe" name="cafeName">
	                                		<option value="" selected="">카페를 선택해 주세요</option>
	                            		</select>
	                                		<input type="hidden" name="cafeNo" value="">
									</td>
								</tr>
							
							<!-- 테마 -->
								<tr>
									<td id="text_bold">테마&nbsp;&nbsp;&nbsp;</td> 
									<td>
										<select id="party_theme" name="themeName">
	                                		<option value="" selected="">테마를 선택해 주세요</option>
	                            		</select>
	                            			<input type="hidden" name="themeNo" value="">
									</td>
								</tr>
							
							<!-- 시간 -->
								<tr>
									<td id="text_bold">시간&nbsp;&nbsp;&nbsp;</td> 
									<td>
										<select id="party_time" name="themeTime">
	                                		<option value="" selected="">시간을 선택해 주세요</option>
	                            		</select>
									</td>
								</tr>
							
							</tbody>
						
						</table>
						
						<!-- 인원체크 -->
						<div id="people_box">
							<span id="pSpan_box">  인원</span>
							<input type="radio" id="rdo_two" name="reservePerson" value="2">2인
							<input type="radio" id="rdo_three" name="reservePerson" value="3">3인
							<input type="radio" id="rdo_four" name="reservePerson" value="4">4인
							<input type="radio" id="rdo_five" name="reservePerson" value="5">5인
							<input type="radio" id="rdo_six" name="reservePerson" value="6">6인
						</div>
									
								
						<!-- 모임글작성 -->
						<div id="textarea_box">
							<span id="tSpan_box">모임글작성</span>
	                        <textarea id="area_content" name="content"></textarea>
						</div>
				
					</div>
					
					<div id="pWrite_button">
						<button type="submit" class="search_button">등록하기</button>
						<button type="button" id="modal_close_btn" class="search_button">취소하기</button>
					</div>
				</form>
				
				
			
			</div>
			
			<div class="modal_layer"></div>
		
		</div>
		
		<!-- //파티등록 모달창 -->
		

      <!-- footer -->

      <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

      <!-- //footer -->
   </div>
</body>

<script>

	//파티등록 모달창 열기
	$("#submit_button").on("click", function() {
		$("#partyWrite_modal").attr("style", "display:block");
		document.body.classList.add("stop-scroll");
	
	});
	
	
	//파티등록 모달창 닫기
	$("#modal_close_btn").on("click", function() {
		
		//등록폼 초기화
		$("#party_date").val("");
		$("#party_region").val("");
		$("#party_cafe").val("");
		$("#party_theme").val("");
		$("#party_time").val("");
		$("input:radio[name='reservePerson']").removeAttr('checked');
		$("#area_content").val("");
		
		$("#partyWrite_modal").attr("style", "display:none");
		document.body.classList.add("stop-scroll");
		
	});

	
	//날짜 데이터
	 $("#party_date").datepicker({
	     showOn:"button"
	     , buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif"
	     ,buttonImageOnly: true
	 });
	
	$("#party_date").datepicker("option", "dateFormat", "yy-mm-dd");
	
/********************************************************************************************/	 
	//파티등록 모달창에서 @지역@선택시!
	 $("#party_region").on("change", function() {
		 
		var sido = $(this).val();
		
	  	$('#party_cafe').empty();
		
		console.log(sido);
		
		//ajax서버에 요청 (sido 전달)
		$.ajax({
			
			url : "${pageContext.request.contextPath }/party/sido",		
			type : "post",
// 			contentType : "application/json",
			data : {sido: sido},

// 			dataType : "json",
			success : function(cafeList){
				/*성공시 처리해야될 코드 작성*/
				console.log(cafeList);
				
				$("#party_cafe").append('<option value="" selected="">카페를 선택해 주세요</option>');
				
				for(var i=0; i<cafeList.length; i++) {
					cafeRender(cafeList[i], "down");
				}
				
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
		
	});

	
	//카페이름 1개씩 렌더링
	function cafeRender(cafeList, type) {
		var str = "";
		str += '<option id="cafeName" value="' + cafeList.cafeName + '" data-cafeno="' + cafeList.cafeNo +'">' + cafeList.cafeName + '</option>';
		
		if(type === 'down') {
			$("#party_cafe").append(str);
		}
	};
	
	/********************************************************************************************/	
	
	/********************************************************************************************/
	//파티등록 모달창에서 @카페@선택시!
	$("#party_cafe").on("change", function() {
		
		var cafe = $(this).val();
		var cafeNo = $("#party_cafe option:selected").data("cafeno");
		$("[name=cafeNo]").val(cafeNo);
		console.log(cafe);
		console.log(cafeNo);
		
		
		
	  	$('#party_theme').empty ();
		
		
		//ajax서버에 요청 (cafeNo 전달)
		$.ajax({
			
			url : "${pageContext.request.contextPath }/party/cafe",		
			type : "post",
// 			contentType : "application/json",
			data : {cafeNo: cafeNo},

// 			dataType : "json",
			success : function(themeList){
				/*성공시 처리해야될 코드 작성*/
				console.log(themeList);
				
				$("#party_theme").append('<option value="" selected="">테마를 선택해 주세요</option>');
				
				for(var i=0; i<themeList.length; i++) {
					themeRender(themeList[i], "down");
				}
				
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		}); 
		
	});

	
	//테마이름 1개씩 렌더링
	function themeRender(themeList, type) {
		var str = "";
		str += '<option id="themeName" value="' + themeList.themeName + '" data-themeno="' + themeList.themeNo +'">' + themeList.themeName + '</option>';
		
		if(type === 'down') {
			$("#party_theme").append(str);
		}
	};
	
	/********************************************************************************************/
	
	/********************************************************************************************/
	//파티등록 모달창에서 @테마@선택시!
	$("#party_theme").on("change", function() {
		
		var theme = $(this).val();
		var themeNo = $("#party_theme option:selected").data("themeno");
		$("[name=themeNo]").val(themeNo);
		console.log(theme);
		console.log(themeNo);
		
		
		
	  	$('#party_time').empty ();
		
		
		//ajax서버에 요청 (themeNo 전달)
		$.ajax({
			
			url : "${pageContext.request.contextPath }/party/theme",		
			type : "post",
// 			contentType : "application/json",
			data : {themeNo: themeNo},

// 			dataType : "json",
			success : function(themeTimeList){
				/*성공시 처리해야될 코드 작성*/
				console.log(themeTimeList);
				
				$("#party_time").append('<option value="" selected="">시간을 선택해 주세요</option>');
				
				for(var i=0; i<themeTimeList.length; i++) {
					themeTimeRender(themeTimeList[i], "down");
				}
				
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		}); 
		
	});

	
// 	시간표 1개씩 렌더링
	function themeTimeRender(themeTimeList, type) {
		var str = "";
		str += '<option id="themeTime" value="' + themeTimeList.themeTime + '">' + themeTimeList.themeTime + '</option>';
		
		if(type === 'down') {
			$("#party_time").append(str);
		}
	};
	
	/********************************************************************************************/
	
	/********************************************************************************************/
	//submit null 예외처리
	$("#partyWrite_form").on("submit", function(){
   		console.log("form 전송 클릭!")
   		
   		//날짜 NULL체크
   		var reserveDate = $("#party_date").val();
   		if(reserveDate == "") {
   			alert("날짜를 선택해주세요.")
   			return false;
   		}
   		
   		//지역 NULL체크
   		var sidoDetail = $("#party_region").val();
   		if(sidoDetail == "") {
   			alert("지역을 선택해주세요.")
   			return false;
   		}
   		
   		//카페 NULL체크
   		var cafeName = $("#party_cafe").val();
   		if(cafeName == "") {
   			alert("카페를 선택해주세요.")
   			return false;
   		}
   		
   		//테마 NULL체크
   		var themeName = $("#party_theme").val();
   		if(themeName == "") {
   			alert("테마를 선택해주세요.")
   			return false;
   		}
   		
   		//시간 NULL체크
   		var themeTime = $("#party_time").val();
   		if(themeTime == "") {
   			alert("시간을 선택해주세요.")
   			return false;
   		}
   		
   		//인원 NULL체크
   		var reservePerson = $("input:radio[name='reservePerson']").is(":checked");
   		if(reservePerson == "" || null || undefined || 0 || NaN) {
   			alert("인원을 선택해주세요.")
   			return false;
   		}
   		
   		//모임글 NULL 체크
   		var content = $("#area_content").val();
   		if(content === "") {
   			alert("모임글을 작성해주세요.")
   			return false;
   		}
   		
   		return true;
   		
   });
	
		
	
</script>

</html>