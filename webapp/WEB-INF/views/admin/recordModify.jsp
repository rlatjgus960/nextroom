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
			<div id="subheader-mintitle">관리자페이지 > 기록관리</div>



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
								<li><a href="${pageContext.request.contextPath }/admin/reserve">&nbsp;-예약 확인</a></li>
								<li><a href="${pageContext.request.contextPath }/admin/reserve/timeManage/${sessionScope.authUser.cafeNo}">&nbsp;-예약 관리</a></li>
							</ul>
						</li>
						<li>기록
							<ul class="aside_mini_cate">
								<li><a href="${pageContext.request.contextPath }/admin/record">&nbsp;-기록 입력</a></li>
								<li><p class="selected"><a href="${pageContext.request.contextPath }/admin/recordModify">&nbsp;-기록 관리</a></p></li>
							</ul>
						</li>
						<li><a href="${pageContext.request.contextPath }/admin/cafeModifyForm">카페 소개 관리</a></li>
						<li><a href="${pageContext.request.contextPath }/admin/themeList">카페 테마
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
                <div id="record_modify_table">
                    <table>
                        <thead>
                            <tr>
                                <th>테마</th>
                                <th>날짜</th>
                                <th>탈출시간</th>
                                <th>힌트</th>
                                <th>인원</th>
                                <th>예약자</th>
                                <th></th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td>비밀의화원 미드나잇</td>
                                <td>2021-08-27</td>
                                <td>40m 24s</td>
                                <td>3</td>
                                <td>4인</td>
                                <td>배두나</td>
                                <td><a id="" class="record_modal_open mbutton recordBtn">수정</a></td>
                            </tr>
                        </tbody>


                       


                    </table>
                </div>

            </div>
            <!--//adminMain-->
            
            </div>
			<!-- contentMain -->
            
        </div>
        <!-- //content -->
			
    <!-- footer -->
    
    <div id="footer">
        상호 : 넥스트룸 | 대표자 : 1조 | 고객센터 : 02-3478-0008<br> 메일 : moon124@gmail.com | 주소 : 서울특별시 서초구 서초4동
        서초대로77길 13<br> Copyright © NEXTROOM All rights reserved.

    </div>
    </div>
    
    <!-- //footer -->
	<!-- wrap -->
    
    <div id="admin_record_modal">
        <div id="record_modal_cotent">
            <div id="div_close" class="clearfix">
                <a id="admin_record_closemodal">[닫기]</a>
            </div>
            <h3>기록 수정</h3>
                
            	<form action="" method="GET">
                	<div id="record_table_wrap">
                        <table id="record_modal_table">
                            <tr class="label_time">
                                <th><label for="record_hour">탈출 시간</label></th>
                                
                            </tr>
                            <tr class="time_data">
                                <td><input type="text" name="record_hour" value="40"> m <input type="text" name="record_hour" value="59"> s</td>
                            </tr>

                            <tr class="label_hints">
                                <th>힌트 수</th>
                            </tr>
                            <tr class="hints_data">
                                <td><input type="text" name="record_time" value="30"> 개</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>플레이어 1&nbsp;</th>
                                <td><input type="text" name="record_time" value="Junzzang1"><a class="red_x"> X</a></td>
                            </tr>
                            <tr>
                                <th>플레이어 2&nbsp;</th>
                                <td><input type="text" name="record_time" value="Junzzang12"><a class="red_x"> X</a></td>
                            </tr>
                            <tr>
                                <th>플레이어 3&nbsp;</th>
                                <td><input type="text" name="record_time" value="Junzzang123"><a class="red_x"> X</a></td>
                            </tr>

                            
                        </table>
                    </div>

                    <div id="record_Info_Btn">
                        <button type="submit" class="mbutton">수정</button>
                        <button class="mbutton">취소</button>
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
    
  //화면 로딩되기 직전!
    $(document).ready(function() {
    	console.log("화면 로딩 직전");

    	//ajax 요청하기
    	$.ajax({

    		url : "${pageContext.request.contextPath }/admin/record/recordModifyForm",
    		type : "post",
    		//contentType : "application/json",
    		//data : {name: ”홍길동"},

    		//dataType : "json",
    		success : function(guestList) {
    			/*성공시 처리해야될 코드 작성*/
    			console.log(guestList);

    			//화면에 그리기
    			for (var i = 0; i < guestList.length; i++) {

    				render(guestList[i], "down"); //list draw

    			}

    		},
    		error : function(XHR, status, error) {
    			console.error(status + " : " + error);
    		}
    	});

    });
});  

$("#admin_record_closemodal").on("click", function() {
	$("#admin_record_modal").attr("style", "display:none");
	document.body.classList.remove("stop-scroll");

});




</script>
</html>