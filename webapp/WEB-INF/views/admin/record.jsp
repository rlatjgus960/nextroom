<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/aside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/adminRecord.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/modal.css" rel="stylesheet" type="text/css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">


<title>Insert title here</title>
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
			<h2>랭킹</h2>
			</div>
			<div id="subheader-mintitle">관리자페이지 > 기록입력</div>



			</div>

            <!--Aside-->
            <div class="clearfix">
                <div id="aside">
        
                    <img id="aside_img"
						src="${pageContext.request.contextPath }/assets/image/asideImg.png"
						width="35px" height="35px">
                    
                    <div id="aside_cate">
                    
                        <ul>
						<li>예약
							<ul class="aside_mini_cate">
								<li><a href="${pageContext.request.contextPath }/admin/reserve/reserveConfirm/${sessionScope.authUser.cafeNo}">&nbsp;-예약 확인</a></li>
								<li><a href="${pageContext.request.contextPath }/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}">&nbsp;-예약 관리</a></li>
							</ul>
						</li>
						<li>기록
							<ul class="aside_mini_cate">
								<li><p class="selected"><a href="${pageContext.request.contextPath }/admin/record/${sessionScope.authUser.cafeNo}">&nbsp;-기록 입력</a></p></li>
								<li><a href="${pageContext.request.contextPath }/admin/record/modify/${sessionScope.authUser.cafeNo}">&nbsp;-기록 관리</a></li>
							</ul>
						</li>
						<li><a href="${pageContext.request.contextPath }/admin/cafeModifyForm">카페 소개 관리</a></li>
						<li><a href="${pageContext.request.contextPath }/admin/${authUser.cafeNo }/themeList">카페 테마
								관리</a></li>
					</ul>
                    
                    </div>
                    
                </div>
            </div>
            <!--//Aside-->


			<!-- contentMain -->
			<div id="contentMain">

            <div id="adminMain">
			
			<!--컨텐츠 여기에 작성하세요 !!!!!!!!!-->
                <div id="record_table">
                    <table>
                        <tr>
                            <th>테마</th>
                            <th>입실날짜</th>
                            <th>시간</th>
                            <th>인원</th>
                            <th>예약자이름</th>
                            <th></th>
                        </tr>

                        	

                       	<c:choose>


						    <c:when test="${empty gameList}">
						       <tr id="list-table">
						           <td></td>
						           <td></td>
		                           <td>진행중인 게임이 없습니다.</td>
		                           <td></td>
		                           <td></td>
		                           <td></td>
		                        </tr>
						    </c:when>
						
						    <c:otherwise>
                       			<c:forEach items="${gameList}" var="prerecordVo">
						    
							        <tr id="list-table">
			                           <td>${ prerecordVo.themeName}</td>
			                           <td>${ prerecordVo.regDate}</td>
			                           <td>${ prerecordVo.reserveTime}</td>
			                           <td>${ prerecordVo.totalPerson}</td>
			                           <td>${ prerecordVo.reserveName}</td>
			                           <td><button type="button" id="" class="record_modal_open mbutton recordBtn" data-gameno="${prerecordVo.gameNo}">기록입력</button></td>
			                        </tr>
								</c:forEach>
								
						    </c:otherwise>
						
						
						</c:choose>

                        
                       


                    </table>
                </div>

            </div>
            <!--//adminMain-->
            
            </div>
			<!-- contentMain -->
            
        </div>
        <!-- //content -->

			<!-- footer -->
			<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
			<!-- //footer -->

		</div>


	<!-- wrap -->
	
	<div id="admin_record_modal">
        <div id="record_modal_cotent">
            <div id="div_close" class="clearfix">
            <a id="admin_record_closemodal">[닫기]</a>
            </div>
            <h3>기록 입력</h3>
                
				<form action="${pageContext.request.contextPath }/admin/record/addRecord" method="GET">
	                <div id="record_table_wrap">
	                		<input type="hidden" name="gameNo" value="">
	                        <table id="record_modal_table">
	                            <thead>
		                            <tr class="label_time">
		                                <th><label for="record_hour">탈출 시간</label></th>
		                                
		                            </tr>
		                            <tr class="time_data">
		                                <td><input type="text" name="recordMin" value="">분 <input type="text" name="recordSec" value="">초</td>
		                                <td><label><input class="escapeFailed" type="checkbox" name="recordClear" value="fail"> 탈출실패</label></td>
		                            </tr>
		
		                            <tr class="label_hints">
		                                <th>힌트 수</th>
		                            </tr>
		                            <tr class="hints_data">
		                                <td><input type="text" name="recordHints"> 개</td>
		                            </tr>
		                            <tr>
		                                <td></td>
		                                <td></td>
		                            </tr>
	                            </thead>
	                            
	                            <tbody class="memberNameArea">
	                            
	                            </tbody>
	
	                            
	                        </table>
	                    </div>

                        <div id="record_Info_Btn">
                            <button type="submit" class="mbutton">입력</button>
                            <button type="reset" class="mbutton chuiso">취소</button>
                        </div>
                	</form>
        </div>
        <div id="admin_record_modal_layer"></div>
    </div>
</body>

<script>
	
	
	
	$(".record_modal_open").on("click", function(){
	    $("#admin_record_modal").attr("style", "display:block");
	    document.body.classList.add("stop-scroll");
	    
	    var gameno = $(this).data("gameno")
	    console.log($(this).data("gameno"));

	    $("[name='gameNo']").val(gameno);
	    
	    $.ajax({
			
			//request
			url : "${pageContext.request.contextPath }/admin/record/getMemberList",
			type : "post",
			//contentType : "application/json",
			data : {
				gameno : gameno
			},
			
			
			//response
			//dataType : "json",
			success : function(memberList) {
				
				console.log(memberList);
				
				for(var i =0 ; i< memberList.length; i++){
					render(memberList[i],i+1);
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	    
	});  
	
	$("#admin_record_closemodal").on("click", function() {
		$("#admin_record_modal").attr("style", "display:none");
		document.body.classList.remove("stop-scroll");
		
		$(".memberBox").remove();
	
	});
	
	$(".chuiso").on("click", function() {
		$("#admin_record_modal").attr("style", "display:none");
		document.body.classList.remove("stop-scroll");
		
		$(".memberBox").remove();
	
	});
	
	
	//멤버 추가,삭제
	$(".red_x").on("click",function(){
		console.log("x clicked");
	});
	
	function render(membername,num){
		str = "";
		str += "<tr class='memberBox'>"
		str += "<th>플레이어 "+num+"</th>";
		str += "<td><input type='text' name='member' value='"+membername+"'><a class='red_x'>&nbsp;X</a></td>";
		str += "</tr>"
		
		$(".memberNameArea").append(str);
		
		str = "";
	};
	
</script>

</html>