<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/aside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath }/assets/css/adminRecord.css" rel="stylesheet" type="text/css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">

<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>

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
			<div id="subheader-mintitle">관리자페이지 > 예약확인</div>



			</div>

            <!--Aside-->
            <div class="clearfix">
                <div id="aside">
        
                    <img id="aside_img" src="../../../assets/image/asideImg.png" width="35px" height="35px">
                
                    <div id="aside_cate">
                    
                        <ul>
                            <li>
                                예약
                                <ul class="aside_mini_cate">
                                    <li>&nbsp;-예약 확인</li>  <!-- 선택된 항목에 class="selected" 주면 underline,bolder -->
                                    <li>&nbsp;-예약 관리</li>
                                </ul>
                            </li>
                            <li>
                                기록
                                <ul class="aside_mini_cate">
                                    <li class="selected">&nbsp;-기록 입력</li>
                                    <li>&nbsp;-기록 관리</li>
                                </ul>
                            </li>
                            <li>카페 소개관리</li>
                            <li>카페 테마관리</li>
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
                            <th>예약날짜 <input type="hidden"  id="datepicker"></th>
                            <th>시간</th>
                            <th>인원</th>
                            <th>예약자이름</th>
                            <th></th>
                        </tr>

                        <tr>
                            <td>비밀의화원 미드나잇</td>
                            <td>2021-08-27</td>
                            <td>12:30</td>
                            <td>3인</td>
                            <td>세일러문</td>
                            <td><a id="record_modal_open" class="mbutton recordBtn">기록입력</a></td>
                        </tr>

                       


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
                
				<form action="" method="GET">
	                <div id="record_table_wrap">
	                        <table id="record_modal_table">
	                            <tr class="label_time">
	                                <th><label for="record_hour">탈출 시간</label></th>
	                                
	                            </tr>
	                            <tr class="time_data">
	                                <td><input type="text" name="record_hour" value=""> m <input type="text" name="record_hour" value=""> s</td>
	                            </tr>
	
	                            <tr class="label_hints">
	                                <th>힌트 수</th>
	                            </tr>
	                            <tr class="hints_data">
	                                <td><input type="text" name="record_time"> 개</td>
	                            </tr>
	                            <tr>
	                                <td></td>
	                                <td></td>
	                            </tr>
	                            <tr>
	                                <th>플레이어 1&nbsp;</th>
	                                <td><input type="text" name="record_time"><a class="red_x"> X</a></td>
	                            </tr>
	                            <tr>
	                                <th>플레이어 2&nbsp;</th>
	                                <td><input type="text" name="record_time"><a class="red_x"> X</a></td>
	                            </tr>
	                            <tr>
	                                <th>플레이어 3&nbsp;</th>
	                                <td><input type="text" name="record_time"><a class="red_x"> X</a></td>
	                            </tr>
	
	                            
	                        </table>
	                    </div>

                        <div id="record_Info_Btn">
                            <button type="submit" class="mbutton">입력</button>
                            <button class="mbutton">취소</button>
                        </div>
                	</form>
        </div>
        <div id="admin_record_modal_layer"></div>
    </div>
</body>

<script>
	$("#datepicker").datepicker({
	    showOn:"button"
	    , buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif"
	    ,buttonImageOnly: true
	});
	
	$("#record_modal_open").on("click", function(){
	    $("#admin_record_modal").attr("style", "display:block");
	    document.body.classList.add("stop-scroll");
	});  
	
	$("#admin_record_closemodal").on("click", function() {
		$("#admin_record_modal").attr("style", "display:none");
		document.body.classList.remove("stop-scroll");
	
	});
</script>
</html>